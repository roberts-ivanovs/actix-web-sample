use super::Trase;
use mysql::{prelude::Queryable, PooledConn};

impl Trase {
    pub fn get_trases(conn: &mut PooledConn, id: u32) -> Result<Vec<Trase>, mysql::Error> {
        let query = format!(
            "SELECT id, laiks_trases_iziesanai, parks_FK FROM ShowAllTrase WHERE parks_FK={}",
            id
        );
        let trases: Vec<Trase> =
            conn.query_map(query, |(id, laiks_trases_iziesanai, parks_fk)| Trase {
                id,
                laiks_trases_iziesanai,
                parks_fk,
            })?;
        Ok(trases)
    }

    // pub fn get_hardest_grozs_in_trase(conn: &mut PooledConn)  -> Result<Vec<Trase>, mysql::Error> {}
}
