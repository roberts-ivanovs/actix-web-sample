use mysql::serde::{Serialize, Deserialize};


#[derive(Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct Parks {
    pub id: u32,
    pub adrese: Option<String>,
    pub telefona_numurs: Option<String>,
    pub apraksts: Option<String>,
    pub darba_laiks_sakums: Option<String>,
    pub nosaukums: String,
    pub darba_laiks_beigas: String,
}
