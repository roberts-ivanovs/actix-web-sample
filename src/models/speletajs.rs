use mysql::{prelude::Queryable, PooledConn};

use super::Speletajs;

impl Speletajs {
    pub fn get_all_speletaji(conn: &mut PooledConn) -> Result<Vec<Speletajs>, mysql::Error> {
        let speletajs: Vec<Speletajs> = conn.query_map(
            "SELECT id, vards, uzvards, dzimsanas_dati FROM Speletajs",
            |(id, vards, uzvards, dzimsanas_dati)| Speletajs {
                id,
                vards,
                uzvards,
                dzimsanas_dati,
            },
        )?;
        Ok(speletajs)
    }

    pub fn get(conn: &mut PooledConn, id: u32) -> Option<Speletajs> {
        let query = format!(
            r#"
        SELECT
            id,
            vards,
            uzvards,
            dzimsanas_dati
        FROM Speletajs WHERE id={}"#,
            id
        );

        let speletajs = conn
            .query_first::<(u32, String, String, Option<String>), String>(query)
            .unwrap_or(None);

        let res = match speletajs {
            Some(val) => Some(Speletajs {
                id: val.0,
                vards: val.1,
                uzvards: val.2,
                dzimsanas_dati: val.3,
            }),
            None => None,
        };
        res
    }

    pub fn delete(conn: &mut PooledConn, id: u32) -> Result<bool, mysql::Error> {
        let query = format!("DELETE FROM Speletajs WHERE id={}", id);
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn update(conn: &mut PooledConn, speletajs: Speletajs) -> Result<bool, mysql::Error> {
        let query = format!(
            "UPDATE Speletajs SET vards='{vards}', uzvards='{uzvards}', dzimsanas_dati='{dzimsanas_dati}' WHERE id='{id}'",
            vards=speletajs.vards,
            uzvards=speletajs.uzvards,
            dzimsanas_dati=speletajs.dzimsanas_dati.unwrap_or("NULL".to_owned()),
            id=speletajs.id,
        );
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn create(conn: &mut PooledConn, speletajs: Speletajs) -> Result<bool, mysql::Error> {
        let query = format!(
            "INSERT INTO Speletajs(
                vards, uzvards, dzimsanas_dati
            ) VALUES (
                '{vards}', '{uzvards}', '{dzimsanas_dati}'
            )",
            vards = speletajs.vards,
            uzvards = speletajs.uzvards,
            dzimsanas_dati = speletajs.dzimsanas_dati.unwrap_or("NULL".to_owned()),
        );
        conn.query_drop(query)?;
        Ok(true)
    }
}
