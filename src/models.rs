pub mod grozs;
pub mod parks;
pub mod rezultats;
pub mod speletajs;
pub mod trase;
pub mod turnirs;

use mysql::serde::{Deserialize, Serialize};

#[derive(Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct Parks {
    pub id: u32,
    pub adrese: Option<String>,
    pub telefona_numurs: Option<String>,
    pub apraksts: Option<String>,
    pub darba_laiks_sakums: Option<String>,
    pub nosaukums: String,
    pub darba_laiks_beigas: Option<String>,
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
    pub optimalais_metienu_skaits: Option<u32>,
    pub attalums_lidz_grozam: u32,
}

#[derive(Debug, PartialEq, Eq, Serialize, Deserialize, Clone)]
pub struct Turnirs {
    pub id: u32,
    pub turnira_datums: Option<String>,
    pub turnira_nosaukums: Option<String>,
}

#[derive(Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct Speletajs {
    pub id: u32,
    pub vards: String,
    pub uzvards: String,
    pub dzimsanas_dati: Option<String>,
    pub atjaunots: String,
}

#[derive(Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct TurnirsSpeletajs {
    pub id: u32,
    pub turnirs_FK: u32,
    pub speletajs_FK: u32,
}

#[derive(Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct Rezultats {
    pub id: u32,
    pub metieni: u32,
    pub trase: Trase,
    pub grozs: Grozs,
    pub speletajs: Speletajs,
    pub turnirs: Turnirs,
    pub novecojis: u32,
}
