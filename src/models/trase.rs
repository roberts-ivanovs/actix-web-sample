use crate::DB_WRAPPER;
use super::{Trase, Speletajs};
use mysql::{prelude::Queryable, PooledConn};
use mysql::serde::{Deserialize, Serialize};


#[derive(Debug, PartialEq, Serialize, Deserialize)]
pub struct BestPlayerResult {
    pub trase_FK: u32,
    pub speletajs: Speletajs,
    pub metienu_skaits_trase: u32,
}

impl Trase {
    pub fn get_trases(conn: &mut PooledConn, id: u32) -> Result<Vec<Trase>, mysql::Error> {
        let query = format!(
            "SELECT id, laiks_trases_iziesanai, parks_FK FROM ShowAllTrase WHERE parks_FK={}",
            id
        );
        let trases: Vec<Trase> =
            conn.query_map(query, |(id, laiks_trases_iziesanai, parks_fk)| Trase {
                id,
                laiks_trases_iziesanai,
                parks_fk,
            })?;
        Ok(trases)
    }

    pub fn get_best_players_in_trase(
        conn: &mut PooledConn,
        trase_fk: u32,
    ) -> Result<Vec<BestPlayerResult>, mysql::Error> {
        let mut iter_conn = DB_WRAPPER.get_conn();
        let best_players_in_trase: Vec<BestPlayerResult> = conn.query_map(
            format!(
                "SELECT trase_FK, s_id, rezultats FROM ShowBestPlayersInTrase WHERE trase_FK={}",
                trase_fk
            ),
            |(trase_FK, speletajs, metienu_skaits_trase)| BestPlayerResult {
                trase_FK,
                speletajs: Speletajs::get(&mut iter_conn, speletajs).unwrap(),
                metienu_skaits_trase,
            },
        )?;
        Ok(best_players_in_trase)
    }

    // pub fn get_hardest_grozs_in_trase(conn: &mut PooledConn)  -> Result<Vec<Trase>, mysql::Error> {}
}
