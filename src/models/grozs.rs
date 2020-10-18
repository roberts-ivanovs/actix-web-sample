use crate::DB_WRAPPER;
use mysql::{prelude::Queryable, PooledConn};
use mysql::serde::{Deserialize, Serialize};

use super::Grozs;


#[derive(Debug, PartialEq, Serialize, Deserialize)]
pub struct HardGrozs {
    pub grozs: Grozs,
    pub rezultats: f32,
}
impl Grozs {
    pub fn get_hardest_grozi_in_trase(
        conn: &mut PooledConn,
        trase_fk: u32,
    ) -> Result<Vec<HardGrozs>, mysql::Error> {
        let mut iter_conn = DB_WRAPPER.get_conn();
        let grozi_hardest: Vec<HardGrozs> = conn.query_map(
            format!(
                "SELECT grozs_id, Videjais_rezultats FROM ShowHardestGrozs WHERE trase_id={}",
                trase_fk
            ),
            |(id, rezultats)| HardGrozs {
                grozs: Grozs::get(&mut iter_conn, id).unwrap(),
                rezultats,
            },
        )?;
        Ok(grozi_hardest)
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

        let parks = conn
            .query_first::<(u32, Option<i32>, Option<u32>, u32), String>(query)
            .unwrap_or(None);

        let res = match parks {
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
}
