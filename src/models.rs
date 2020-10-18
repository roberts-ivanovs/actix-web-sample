pub mod parks;
pub mod trase;
pub mod grozs;
pub mod turnirs;
pub mod speletajs;
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

#[derive(Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct Grozs {
    pub id: u32,
    pub soda_punkti: Option<i32>,
    pub maksimalais_metienu_skaits: Option<u32>,
    pub attalums_lidz_grozam: u32,
}


#[derive(Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct Turnirs {
    pub id: u32,
    pub turnira_datums: Option<String>,
    pub turnira_nosaukums: Option<String>,
}

#[derive(Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct Speletajs {
    pub id: u32,
    pub vards: Option<String>,
    pub uzvards: Option<String>,
    pub dzimsanas_dati: Option<String>,
}
