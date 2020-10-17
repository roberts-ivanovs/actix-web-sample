use mysql::{PooledConn, prelude::Queryable};

use super::Parks;

impl Parks {

    pub fn get_parks(conn: &mut PooledConn) -> Result<Vec<Parks>, mysql::Error> {
        let parks: Vec<Parks> = conn.query_map(
            "SELECT id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas FROM ShowAllParks",
            |(id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas)| Parks {
                id, adrese, telefona_numurs, apraksts, darba_laiks_sakums, nosaukums, darba_laiks_beigas
            },
        )?;
        Ok(parks)
    }

    pub fn get(conn: &mut PooledConn, id: u32) -> Result<Option<Parks>, mysql::Error> {
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

    pub fn delete(conn: &mut PooledConn, id: u32) -> Result<bool, mysql::Error> {
        let query = format!("DELETE FROM Parks WHERE id={}", id);

        conn.query_drop(query)?;

        Ok(true)
    }


}
