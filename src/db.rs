use crate::models::{Parks, Speletajs, Trase, Turnirs};
use mysql::Row;
use mysql::{params, prelude::*};
use mysql::{Pool, PooledConn};
use std::fs::File;
use std::io::prelude::*;

pub struct DatabaseWrapper {
    pub pool: Pool,
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

    pub fn get_conn(&self) -> PooledConn {
        self.pool.get_conn().unwrap()
    }
}
