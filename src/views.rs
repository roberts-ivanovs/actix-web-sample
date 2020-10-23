pub mod admin;
pub mod parks;
pub mod trase;
pub mod turnirs;

use actix_http::http;
use actix_http::ResponseBuilder;
use actix_web::{error, web, Error, HttpResponse, Result};

// store tera template in application state
pub async fn index_handler(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    let s = tmpl
        .render("index.html", &tera::Context::new())
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

pub fn redirect_to(location: &str) -> HttpResponse {
    HttpResponse::Found()
        .header(http::header::LOCATION, location)
        .finish()
}
