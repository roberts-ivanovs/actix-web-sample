use crate::DB_WRAPPER;

use mysql::serde::{Deserialize, Serialize};
use mysql::{prelude::Queryable, PooledConn};

use super::{Speletajs, Turnirs};

#[derive(Debug, PartialEq, Serialize, Deserialize)]
pub struct SummaryTurnirs {
    pub turnirs: i32,
    pub speletajs: Speletajs,
    pub trase: i32,
    pub speletaja_rezultats: i32,
    pub trases_metienu_skaits: i32,
}

impl Turnirs {
    pub fn get_turniri(conn: &mut PooledConn) -> Result<Vec<Turnirs>, mysql::Error> {
        let turnirs: Vec<Turnirs> = conn.query_map(
            "SELECT id, turnira_datums, turnira_nosaukums FROM ShowAllTurnirs",
            |(id, turnira_datums, turnira_nosaukums)| Turnirs {
                id,
                turnira_datums,
                turnira_nosaukums,
            },
        )?;
        Ok(turnirs)
    }

    pub fn get(conn: &mut PooledConn, id: u32) -> Result<Option<Turnirs>, mysql::Error> {
        let query = format!(
            "SELECT id, turnira_datums, turnira_nosaukums FROM ShowAllTurnirs WHERE id={}",
            id
        );

        let turnirs = conn
            .query_first::<(u32, Option<String>, Option<String>), String>(query)
            .unwrap_or(None);

        let res = match turnirs {
            Some(val) => Some(Turnirs {
                id: val.0,
                turnira_datums: val.1,
                turnira_nosaukums: val.2,
            }),
            None => None,
        };
        Ok(res)
    }

    pub fn delete(conn: &mut PooledConn, id: u32) -> Result<bool, mysql::Error> {
        let query = format!("DELETE FROM Turnirs WHERE id={}", id);
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn count_turnirs_summary(
        conn: &mut PooledConn,
        turnirs_id: u32,
    ) -> Result<Vec<SummaryTurnirs>, mysql::Error> {
        let mut iter_conn = DB_WRAPPER.get_conn();

        let turnirs_summary: Vec<SummaryTurnirs> = conn.query_map(
            format!("CALL count_turnirs_summary({})", turnirs_id),
            |(turnirs, speletajs, trase, speletaja_rezultats, trases_metienu_skaits)| {
                SummaryTurnirs {
                    turnirs,
                    speletajs: Speletajs::get(&mut iter_conn, speletajs).unwrap(),
                    trase,
                    speletaja_rezultats,
                    trases_metienu_skaits,
                }
            },
        )?;
        Ok(turnirs_summary)
    }

    pub fn update(conn: &mut PooledConn, turnirs: Turnirs) -> Result<bool, mysql::Error> {
        let turnira_datums = match turnirs.turnira_datums {
            Some(val) => format!("{}", val),
            None => "NULL".to_owned(),
        };
        let turnira_nosaukums = match turnirs.turnira_nosaukums {
            Some(val) => format!("{}", val),
            None => "NULL".to_owned(),
        };
        let query = format!(
            "UPDATE Turnirs SET turnira_datums='{turnira_datums}', turnira_nosaukums='{turnira_nosaukums}' WHERE id='{id}'",
            id=turnirs.id,
            turnira_datums=turnira_datums,
            turnira_nosaukums=turnira_nosaukums,
        );
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn create(conn: &mut PooledConn, turnirs: Turnirs) -> Result<bool, mysql::Error> {
        let query = format!(
            "INSERT INTO Turnirs(
                turnira_datums, turnira_nosaukums
            ) VALUES (
                '{turnira_datums}', '{turnira_nosaukums}'
            )",
            turnira_nosaukums=turnirs.turnira_nosaukums.unwrap_or("NULL".to_owned()),
            turnira_datums=turnirs.turnira_datums.unwrap_or("NULL".to_owned()),
        );
        conn.query_drop(query)?;
        Ok(true)
    }
}
