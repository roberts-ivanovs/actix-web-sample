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
}
