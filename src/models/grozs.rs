use crate::models::Trase;
use crate::DB_WRAPPER;
use mysql::serde::{Deserialize, Serialize};
use mysql::{prelude::Queryable, PooledConn};

use super::Grozs;

#[derive(Debug, PartialEq, Serialize, Deserialize)]
pub struct HardGrozs {
    pub trase: u32,
    pub grozs: Grozs,
    pub rezultats: f32,
}

impl Grozs {
    pub fn get_hardest_grozi_in_trase(
        conn: &mut PooledConn,
    ) -> Result<Vec<HardGrozs>, mysql::Error> {
        let mut iter_conn = DB_WRAPPER.get_conn();
        let mut iter_conn2 = DB_WRAPPER.get_conn();
        let grozi_hardest: Vec<HardGrozs> = conn.query_map(
            "SELECT * FROM ShowHardestGrozs",
            |(trase_id, grozs_id, rezultats)| HardGrozs {
                trase: trase_id,
                grozs: Grozs::get(&mut iter_conn, grozs_id).unwrap(),
                rezultats,
            },
        )?;
        Ok(grozi_hardest)
    }

    pub fn get_grozi(conn: &mut PooledConn) -> Result<Vec<Grozs>, mysql::Error> {
        let grozs: Vec<Grozs> = conn.query_map(
            "SELECT id, soda_punkti, maksimalais_metienu_skaits, attalums_lidz_grozam FROM Grozs",
            |(id, soda_punkti, maksimalais_metienu_skaits, attalums_lidz_grozam)| Grozs {
                id,
                soda_punkti,
                maksimalais_metienu_skaits,
                attalums_lidz_grozam,
            },
        )?;
        Ok(grozs)
    }

    pub fn get(conn: &mut PooledConn, id: u32) -> Option<Grozs> {
        let query = format!(
            r#"
        SELECT
            id,
            soda_punkti,
            maksimalais_metienu_skaits,
            attalums_lidz_grozam
        FROM Grozs WHERE id={}"#,
            id
        );

        let grozs = conn
            .query_first::<(u32, Option<i32>, Option<u32>, u32), String>(query)
            .unwrap_or(None);

        let res = match grozs {
            Some(val) => Some(Grozs {
                id: val.0,
                soda_punkti: val.1,
                maksimalais_metienu_skaits: val.2,
                attalums_lidz_grozam: val.3,
            }),
            None => None,
        };
        res
    }

    pub fn delete(conn: &mut PooledConn, id: u32) -> Result<bool, mysql::Error> {
        let query = format!("DELETE FROM Grozs WHERE id={}", id);
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn update(conn: &mut PooledConn, grozs: Grozs) -> Result<bool, mysql::Error> {
        let soda_punkti = match grozs.soda_punkti {
            Some(val) => format!("{}", val),
            None => "NULL".to_owned(),
        };
        let maksimalais_metienu_skaits = match grozs.maksimalais_metienu_skaits {
            Some(val) => format!("{}", val),
            None => "NULL".to_owned(),
        };
        let query = format!(
            "UPDATE Grozs SET soda_punkti='{soda_punkti}', maksimalais_metienu_skaits='{maksimalais_metienu_skaits}', attalums_lidz_grozam='{attalums_lidz_grozam}' WHERE id='{id}'",
            soda_punkti=soda_punkti,
            maksimalais_metienu_skaits=maksimalais_metienu_skaits,
            attalums_lidz_grozam=grozs.attalums_lidz_grozam,
            id=grozs.id,
        );
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn create(conn: &mut PooledConn, grozs: Grozs) -> Result<bool, mysql::Error> {
        let soda_punkti = match grozs.soda_punkti {
            Some(val) => format!("{}", val),
            None => "NULL".to_owned(),
        };
        let maksimalais_metienu_skaits = match grozs.maksimalais_metienu_skaits {
            Some(val) => format!("{}", val),
            None => "NULL".to_owned(),
        };
        let query = format!(
            "INSERT INTO Grozs(
                soda_punkti, maksimalais_metienu_skaits, attalums_lidz_grozam
            ) VALUES (
                '{soda_punkti}', '{maksimalais_metienu_skaits}', '{attalums_lidz_grozam}'
            )",
            soda_punkti = soda_punkti,
            maksimalais_metienu_skaits = maksimalais_metienu_skaits,
            attalums_lidz_grozam = grozs.attalums_lidz_grozam,
        );
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn get_videjais_metienu_skaits(
        conn: &mut PooledConn,
        id: u32,
    ) -> Result<Option<Option<f32>>, mysql::Error> {
        let query = format!("SELECT videjais_metienu_skaits_grozam({});", id);

        let turnirs = conn
            .query_first::<Option<f32>, String>(query)
            .unwrap_or(None);

        Ok(turnirs)
    }
}
