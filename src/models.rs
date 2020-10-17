pub mod parks;
pub mod trase;
use mysql::serde::{Deserialize, Serialize};

#[derive(Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct Parks {
    pub id: u32,
    pub adrese: Option<String>,
    pub telefona_numurs: Option<String>,
    pub apraksts: Option<String>,
    pub darba_laiks_sakums: String,
    pub nosaukums: String,
    pub darba_laiks_beigas: String,
}

#[derive(Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct Trase {
    pub id: u32,
    pub laiks_trases_iziesanai: Option<String>,
    pub parks_fk: u32,
}

