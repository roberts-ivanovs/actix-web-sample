pub mod admin;
pub mod parks;
pub mod speletajs;
pub mod trase;
pub mod turnirs;

use crate::DB_WRAPPER;
use actix_http::http;
use actix_http::ResponseBuilder;
use actix_web::{error, web, Error, HttpResponse, Result};
use tera::Context;

use crate::models::Grozs;

// store tera template in application state
pub async fn index_handler(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let hard_grozi = Grozs::get_hardest_grozi_in_trase(&mut conn).unwrap();

    let mut context = Context::new();
    context.insert("hard_grozi", &hard_grozi);
    let s = tmpl
        .render("index.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

pub fn redirect_to(location: &str) -> HttpResponse {
    HttpResponse::Found()
        .header(http::header::LOCATION, location)
        .finish()
}
