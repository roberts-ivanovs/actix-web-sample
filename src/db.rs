use crate::models::{Parks, Trase};
use mysql::Pool;
use mysql::Row;
use mysql::{params, prelude::*};
use std::fs::File;
use std::io::prelude::*;

pub struct DatabaseWrapper {
    pool: Pool,
}

impl DatabaseWrapper {
    pub fn new(connection_url: &str) -> Self {
        let pool = Pool::new(connection_url).unwrap();
        Self { pool }
    }

    pub fn init_db(&self) {
        let mut conn = self.pool.get_conn().unwrap();

        // ------------------File reading-------------------- //
        let mut file = File::open("init.sql").unwrap();
        let mut contents = String::new();
        file.read_to_string(&mut contents).unwrap();

        // ------------------Executing SQL-------------------- //
        conn.query_drop(contents).unwrap();
    }

    pub fn get_parks(&self) -> Result<Vec<Parks>, mysql::Error> {
        let mut conn = self.pool.get_conn().unwrap();
        let parks: Vec<Parks> = conn.query_map(
            "SELECT id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas FROM ShowAllParks",
            |(id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas)| Parks {
                id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas
            },
        )?;
        Ok(parks)
    }

    pub fn get_parks_single(&self, id: u32) -> Result<Option<Parks>, mysql::Error> {
        let mut conn = self.pool.get_conn().unwrap();
        let query = format!("SELECT id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas FROM ShowAllParks WHERE id={}", id);

        let parks = conn
            .query_first::<(
                u32,
                Option<String>,
                Option<String>,
                Option<String>,
                String,
                String,
                String,
            ), String>(query)
            .unwrap_or(None);

        let res = match parks {
            Some(val) => Some(Parks {
                id: val.0,
                adrese: val.1,
                telefona_numurs: val.2,
                apraksts: val.3,
                darba_laiks_sakums: val.4,
                nosaukums: val.5,
                darba_laiks_beigas: val.6,
            }),
            None => None,
        };
        Ok(res)
    }

    pub fn get_trases(&self, id: u32) -> Result<Vec<Trase>, mysql::Error> {
        let mut conn = self.pool.get_conn().unwrap();
        let query = format!(
            "SELECT id, laiks_trases_iziesanai, parks_FK FROM ShowAllTrase WHERE parks_FK={}",
            id
        );
        println!("{:?}", query);
        let trases: Vec<Trase> =
            conn.query_map(query, |(id, laiks_trases_iziesanai, parks_fk)| Trase {
                id,
                laiks_trases_iziesanai,
                parks_fk,
            })?;
        Ok(trases)
    }
}
