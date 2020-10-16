use mysql::serde::{Serialize};

#[derive(Debug, PartialEq, Eq, Serialize)]
pub struct Parks {
    pub id: i32,
    pub adrese: Option<String>,
    pub telefona_numurs: String,
    pub apraksts: String,
    pub darba_laiks_sakums: String,
    pub nosaukums: String,
    pub darba_laiks_beigas: String,
}
