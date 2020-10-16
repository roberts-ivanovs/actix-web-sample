use tera::Context;
use crate::DB_WRAPPER;
use actix_web::{error, web, Error, HttpResponse, Result};
use std::collections::HashMap;

// store tera template in application state
pub async fn index_handler(
    tmpl: web::Data<tera::Tera>,
    query: web::Query<HashMap<String, String>>,
) -> Result<HttpResponse, Error> {
    let s = tmpl
        .render("index.html", &tera::Context::new())
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

pub async fn park_handler(
    tmpl: web::Data<tera::Tera>,
    query: web::Query<HashMap<String, String>>,
) -> Result<HttpResponse, Error> {

    let park_instances = DB_WRAPPER.get_parks().unwrap_or(Vec::new());
    println!("{:#?}", park_instances);

    let mut context = Context::new();
    context.insert("parks", &park_instances);

    let s = tmpl
        .render("parks.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}
