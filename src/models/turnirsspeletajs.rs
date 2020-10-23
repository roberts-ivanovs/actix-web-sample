use mysql::{prelude::Queryable, PooledConn};

use super::TurnirsSpeletajs;

impl TurnirsSpeletajs {

    pub fn get_all_turnirsSpeletajs(conn: &mut PooledConn) -> Result<Vec<TurnirsSpeletajs>, mysql::Error> {
        let turnirsSpeletajs: Vec<TurnirsSpeletajs> = conn.query_map(
            "SELECT id, turnirs_FK, speletajs_FK FROM TurnirsSpeletajs",
            |(id, turnirs_FK, speletajs_FK)| TurnirsSpeletajs {
                id, turnirs_FK, speletajs_FK,
            },
        )?;
        Ok(turnirsSpeletajs)
    }

    pub fn get(conn: &mut PooledConn, id: u32) -> Option<TurnirsSpeletajs> {
        let query = format!(
            r#"
        SELECT
            id,
            turnirs_FK,
            speletajs_FK
        FROM TurnirsSpeletajs WHERE id={}"#,
            id
        );

        let turnirsSpeletajs = conn
            .query_first::<(
                u32,
                u32,
                u32,
            ), String>(query)
            .unwrap_or(None);

        let res = match turnirsSpeletajs {
            Some(val) => Some(TurnirsSpeletajs {
                id: val.0,
                turnirs_FK: val.1,
                speletajs_FK: val.2
            }),
            None => None,
        };
        res
    }

    pub fn delete(conn: &mut PooledConn, id: u32) -> Result<bool, mysql::Error> {
        let query = format!("DELETE FROM TurnirsSpeletajs WHERE id={}", id);
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn update(conn: &mut PooledConn, turnirsSpeletajs: TurnirsSpeletajs) -> Result<bool, mysql::Error> {
        let query = format!(
            "UPDATE TurnirsSpeletajs SET turnirs_FK='{turnirs_FK}', speletajs_FK='{uzvspeletajs_FKards}' WHERE id='{id}'",
            turnirs_FK=turnirsSpeletajs.turnirs_FK,
            speletajs_FK=turnirsSpeletajs.speletajs_FK,
            id=turnirsSpeletajs.id,
        );
        conn.query_drop(query)?;
        Ok(true)
    }

    pub fn create(conn: &mut PooledConn, turnirsSpeletajs: TurnirsSpeletajs) -> Result<bool, mysql::Error> {
        let query = format!(
            "INSERT INTO TurnirsSpeletajs(
                turnirs_FK, speletajs_FK
            ) VALUES (
                '{turnirs_FK}', '{speletajs_FK}'
            )",
            turnirs_FK=turnirsSpeletajs.turnirs_FK,
            speletajs_FK=turnirsSpeletajs.speletajs_FK,
        );
        conn.query_drop(query)?;
        Ok(true)
    }
}
