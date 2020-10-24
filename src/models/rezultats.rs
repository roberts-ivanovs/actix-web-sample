use crate::models::Turnirs;
use crate::DB_WRAPPER;
use mysql::{prelude::Queryable, PooledConn};
use serde::{Deserialize, Serialize};

use super::Rezultats;

impl Rezultats {
    pub fn get_rezultats_in_turnirs_for_speletajs(
        conn: &mut PooledConn,
        speletajs_id: u32,
        turnirs_id: u32,
    ) -> Result<Vec<Rezultats>, mysql::Error> {
        let q = format!("SELECT r.id, metieni, trase_grozs_FK, TurnirsSpeletajs_FK, novecojis FROM Rezultats as r JOIN TurnirsSpeletajs as ts ON ts.id=TurnirsSpeletajs_FK JOIN TraseGrozs tg ON tg.id=trase_grozs_FK WHERE ts.turnirs_FK={turnirs_id} AND ts.speletajs_FK={speletajs_id};", turnirs_id=turnirs_id, speletajs_id=speletajs_id);
        println!("{}", q);
        let rez: Vec<Rezultats> = conn.query_map(
            q,
            |(id, metieni, trase_grozs_FK, TurnirsSpeletajs_FK, novecojis)| Rezultats {
                id,
                metieni,
                trase_grozs_FK,
                TurnirsSpeletajs_FK,
                novecojis,
            },
        )?;
        Ok(rez)
    }
}
