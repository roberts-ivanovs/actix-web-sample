use crate::models::Turnirs;
use crate::DB_WRAPPER;
use mysql::{prelude::Queryable, PooledConn};
use serde::{Deserialize, Serialize};

use super::Speletajs;

impl Speletajs {
    pub fn get_all_speletaji(conn: &mut PooledConn) -> Result<Vec<Speletajs>, mysql::Error> {
        let speletajs: Vec<Speletajs> = conn.query_map(
            "SELECT id, vards, uzvards, dzimsanas_dati, atjaunots FROM Speletajs",
            |(id, vards, uzvards, dzimsanas_dati, atjaunots)| Speletajs {
                id,
                vards,
                uzvards,
                dzimsanas_dati,
                atjaunots,
            },
        )?;
        Ok(speletajs)
    }

    pub fn get(conn: &mut PooledConn, id: u32) -> Option<Speletajs> {
        let query = format!(
            r#"
        SELECT
            id,
            vards,
            uzvards,
            dzimsanas_dati,
            atjaunots
        FROM Speletajs WHERE id={}"#,
            id
        );

        let speletajs = conn
            .query_first::<(u32, String, String, Option<String>, String), String>(query)
            .unwrap_or(None);

        let res = match speletajs {
            Some(val) => Some(Speletajs {
                id: val.0,
                vards: val.1,
                uzvards: val.2,
                dzimsanas_dati: val.3,
                atjaunots: val.4,
            }),
            None => None,
        };
        res
    }

    pub fn delete(conn: &mut PooledConn, id: u32) -> Result<bool, mysql::Error> {
        let query = format!("DELETE FROM Speletajs WHERE id={}", id);
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn update(conn: &mut PooledConn, speletajs: Speletajs) -> Result<bool, mysql::Error> {
        let query = format!(
            "UPDATE Speletajs SET vards='{vards}', uzvards='{uzvards}', dzimsanas_dati='{dzimsanas_dati}' WHERE id='{id}'",
            vards=speletajs.vards,
            uzvards=speletajs.uzvards,
            dzimsanas_dati=speletajs.dzimsanas_dati.unwrap_or("NULL".to_owned()),
            id=speletajs.id,
        );
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn create(conn: &mut PooledConn, speletajs: Speletajs) -> Result<bool, mysql::Error> {
        let query = format!(
            "INSERT INTO Speletajs(
                vards, uzvards, dzimsanas_dati
            ) VALUES (
                '{vards}', '{uzvards}', '{dzimsanas_dati}'
            )",
            vards = speletajs.vards,
            uzvards = speletajs.uzvards,
            dzimsanas_dati = speletajs.dzimsanas_dati.unwrap_or("NULL".to_owned()),
        );
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn get_turniri_statistics(
        conn: &mut PooledConn,
        speletajs: &Speletajs,
    ) -> Result<Vec<SpeletajsTurnirsSummary>, mysql::Error> {
        let mut inner_conn = DB_WRAPPER.get_conn();
        let mut inner_conn2 = DB_WRAPPER.get_conn();

        let speletajs: Vec<SpeletajsTurnirsSummary> = conn.query_map(
            format!(
                "SELECT * FROM ShowAllTurnirsSummary WHERE speletajs={}",
                &speletajs.id
            ),
            |(
                turnirs,
                speletajs,
                trase,
                speletaja_rezultats,
                trases_metienu_skaits,
                uzvaretajs,
            ): (u32, u32, u32, u32, u32, u32)| SpeletajsTurnirsSummary {
                turnirs: Turnirs::get(&mut inner_conn, turnirs).unwrap().unwrap(),
                speletajs: Speletajs::get(&mut inner_conn2, speletajs).unwrap(),
                trase,
                speletaja_rezultats,
                trases_metienu_skaits,
                uzvaretajs: uzvaretajs == 1,
            },
        )?;
        Ok(speletajs)
    }

    pub fn uzvaras_proc(conn: &mut PooledConn, speletaja_id: u32) -> Result<f32, mysql::Error> {
        let uzvaras_proc = conn.query_first::<f32, String>(format!(
            "SELECT speletaja_uzvaras_procentuali({});",
            speletaja_id
        ));
        match uzvaras_proc {
            Ok(val) => {
                return Ok(val.unwrap() * 100.);
            }
            Err(_) => {
                return Ok(0.);
            }
        }
    }
    pub fn videjais_metienu_skaits(
        conn: &mut PooledConn,
        speletaja_id: u32,
    ) -> Result<f32, mysql::Error> {
        let uzvaras_proc = conn.query_first::<f32, String>(format!(
            "SELECT videjais_metienu_skaits_speletajam({});",
            speletaja_id
        ));
        match uzvaras_proc {
            Ok(val) => {
                return Ok(val.unwrap());
            }
            Err(_) => {
                return Ok(0.);
            }
        }
    }
}

#[derive(Serialize, Deserialize)]
pub struct SpeletajsTurnirsSummary {
    turnirs: Turnirs,
    speletajs: Speletajs,
    trase: u32,
    speletaja_rezultats: u32,
    trases_metienu_skaits: u32,
    uzvaretajs: bool,
}
