use crate::models::Turnirs;
use crate::DB_WRAPPER;
use mysql::{prelude::Queryable, PooledConn};
use serde::{Deserialize, Serialize};

use super::{Grozs, Rezultats, Speletajs, Trase};

impl Rezultats {
    pub fn get_rezultats_in_turnirs_for_speletajs(
        conn: &mut PooledConn,
        speletajs_id: u32,
        turnirs_id: u32,
    ) -> Result<Vec<Rezultats>, mysql::Error> {
        let q = format!("SELECT r.id, metieni, tg.grozs_FK, tg.trase_FK, ts.speletajs_FK, novecojis FROM Rezultats as r JOIN TurnirsSpeletajs as ts ON ts.id=TurnirsSpeletajs_FK JOIN TraseGrozs tg ON tg.id=trase_grozs_FK WHERE ts.turnirs_FK={turnirs_id} AND ts.speletajs_FK={speletajs_id};", turnirs_id=turnirs_id, speletajs_id=speletajs_id);
        println!("{}", q);
        let rez: Vec<Rezultats> = conn.query_map(
            q,
            |(id, metieni, grozs_fk_id, trase_fk_id, speletajs_fk_id, novecojis)| {
                let mut inner_conn = DB_WRAPPER.get_conn();
                let trase: Trase = Trase::get(&mut inner_conn, trase_fk_id).unwrap().unwrap();
                let grozs: Grozs = Grozs::get(&mut inner_conn, grozs_fk_id).unwrap();
                let speletajs: Speletajs =
                    Speletajs::get(&mut inner_conn, speletajs_fk_id).unwrap();
                let turnirs: Turnirs = Turnirs::get(&mut inner_conn, turnirs_id).unwrap().unwrap();
                Rezultats {
                    id,
                    metieni,
                    trase,
                    grozs,
                    speletajs,
                    turnirs,
                    novecojis,
                }
            },
        )?;
        Ok(rez)
    }
}
