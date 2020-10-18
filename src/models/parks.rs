use mysql::{prelude::Queryable, PooledConn};

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
                Option<String>,
                String,
                Option<String>,
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

    pub fn update(conn: &mut PooledConn, parks: Parks) -> Result<bool, mysql::Error> {
        let query = format!(
            "UPDATE Parks SET adrese='{adrese}', telefona_numurs='{telefona_numurs}', apraksts='{apraksts}', darba_laiks_sakums='{darba_laiks_sakums}', nosaukums='{nosaukums}', darba_laiks_beigas='{darba_laiks_beigas}' WHERE id='{id}'",
            adrese=parks.adrese.unwrap_or("NULL".to_owned()),
            telefona_numurs=parks.telefona_numurs.unwrap_or("NULL".to_owned()),
            apraksts=parks.apraksts.unwrap_or("NULL".to_owned()),
            darba_laiks_sakums=parks.darba_laiks_sakums.unwrap_or("NULL".to_owned()),
            darba_laiks_beigas=parks.darba_laiks_beigas.unwrap_or("NULL".to_owned()),
            nosaukums=parks.nosaukums,
            id=parks.id,
        );
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn create(conn: &mut PooledConn, parks: Parks) -> Result<bool, mysql::Error> {
        let query = format!(
            "INSERT INTO Parks(
                adrese, telefona_numurs, apraksts, darba_laiks_sakums, darba_laiks_beigas, nosaukums
            ) VALUES (
                '{adrese}', '{telefona_numurs}', '{apraksts}', '{darba_laiks_sakums}', '{darba_laiks_beigas}', '{nosaukums}'
            )",
            adrese=parks.adrese.unwrap_or("NULL".to_owned()),
            telefona_numurs=parks.telefona_numurs.unwrap_or("NULL".to_owned()),
            apraksts=parks.apraksts.unwrap_or("NULL".to_owned()),
            darba_laiks_sakums=parks.darba_laiks_sakums.unwrap_or("NULL".to_owned()),
            darba_laiks_beigas=parks.darba_laiks_beigas.unwrap_or("NULL".to_owned()),
            nosaukums=parks.nosaukums,
        );
        conn.query_drop(query)?;
        Ok(true)
    }
}
