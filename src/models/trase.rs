use super::{Speletajs, Trase};
use crate::models::Grozs;
use crate::DB_WRAPPER;
use mysql::serde::{Deserialize, Serialize};
use mysql::{prelude::Queryable, PooledConn};

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

    pub fn trase_summary(
        conn: &mut PooledConn,
        trase_id: u32,
    ) -> Result<Vec<CountTraseSummary>, mysql::Error> {
        let mut iter_conn = DB_WRAPPER.get_conn();

        let turnirs_summary: Vec<CountTraseSummary> = conn.query_map(
            format!("CALL count_trase_summary({})", trase_id),
            |(trase_FK, grozu_skaits, Maksimalais_punktu_skaits, trases_garums)| {
                CountTraseSummary {
                    trase_FK,
                    grozu_skaits,
                    Maksimalais_punktu_skaits,
                    trases_garums,
                }
            },
        )?;
        Ok(turnirs_summary)
    }

    pub fn get_trase_grozu_seciba(
        conn: &mut PooledConn,
        trase_id: u32,
    ) -> Result<Vec<TraseGrozuSeciba>, mysql::Error> {
        let mut iter_conn = DB_WRAPPER.get_conn();

        let turnirs_summary: Vec<TraseGrozuSeciba> = conn.query_map(
            format!("CALL get_trase_grozu_seciba({})", trase_id),
            |(trase, grozs, kartas_numurs, punkti)| TraseGrozuSeciba {
                trase,
                grozs: Grozs::get(&mut iter_conn, grozs).unwrap(),
                kartas_numurs,
                punkti,
            },
        )?;
        Ok(turnirs_summary)
    }
}

#[derive(Serialize, Deserialize)]
pub struct CountTraseSummary {
    trase_FK: u32,
    grozu_skaits: u32,
    Maksimalais_punktu_skaits: u32,
    trases_garums: u32,
}

#[derive(Serialize, Deserialize, Debug)]
pub struct TraseGrozuSeciba {
    trase: u32,
    grozs: Grozs,
    kartas_numurs: u32,
    punkti: u32,
}
