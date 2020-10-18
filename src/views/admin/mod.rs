pub mod parks;
pub mod speletajs;

use actix_web::{Error, HttpResponse, Result, error, get, web};


#[get("/")]
pub async fn admin_root(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    let s = tmpl
        .render("admin/main.html", &tera::Context::new())
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}


pub fn extract_base_path<'a >(path_str: &'a str, appendix: &'a str) -> &'a str {
    let path_str: Vec<&str> = path_str.split(&appendix).collect();
    let base_path = path_str.get(0).unwrap();
    return base_path
}
