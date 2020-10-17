pub mod trase;
pub mod parks;
pub mod admin;

use actix_web::{error, web, Error, HttpResponse, Result};

// store tera template in application state
pub async fn index_handler(
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let s = tmpl
        .render("index.html", &tera::Context::new())
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

pub async fn admin_handler(
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let s = tmpl
        .render("admin/main.html", &tera::Context::new())
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}
