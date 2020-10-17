use crate::models::Parks;
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

    pub fn get_parks_single(&self, id: u32) -> Result<Vec<Parks>, mysql::Error> {
        let mut conn = self.pool.get_conn().unwrap();
        let query = format!("SELECT id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas FROM ShowAllParks WHERE id={}", id);
        let parks: Vec<Parks> = conn.query_map(
            query,
            |(
                id,
                adrese,
                telefona_numurs,
                apraksts,
                darba_laiks_sakums,
                nosaukums,
                darba_laiks_beigas,
            )| Parks {
                id,
                adrese,
                telefona_numurs,
                apraksts,
                darba_laiks_sakums,
                nosaukums,
                darba_laiks_beigas,
            },
        )?;
        Ok(parks)
    }
}
