use crate::models::Parks;
use mysql::prelude::*;
use mysql::Pool;
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

        let selected_payments: Vec<Parks> = conn.query_map(
            "SELECT id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas FROM ShowAllParks",
            |(id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas)| Parks {
                id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas
            },
        )?;
        Ok(selected_payments)
    }
}
