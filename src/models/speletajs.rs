use mysql::{prelude::Queryable, PooledConn};

use super::Speletajs;

impl Speletajs {

    pub fn get_all_speletaji(conn: &mut PooledConn) -> Result<Vec<Speletajs>, mysql::Error> {
        let speletajs: Vec<Speletajs> = conn.query_map(
            "SELECT id, vards, uzvards, dzimsanas_dati FROM Speletajs",
            |(id, vards, uzvards, dzimsanas_dati)| Speletajs {
                id, vards, uzvards, dzimsanas_dati
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
            .query_first::<(
                u32,
                Option<String>,
                Option<String>,
                Option<String>,
            ), String>(query)
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
}
