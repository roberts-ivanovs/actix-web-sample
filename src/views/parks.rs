use tera::Context;
use crate::DB_WRAPPER;
use actix_web::{error, web, Error, HttpResponse, Result};
use std::collections::HashMap;

pub async fn park_all_handler(
    tmpl: web::Data<tera::Tera>,
    query: web::Query<HashMap<String, String>>,
) -> Result<HttpResponse, Error> {
    let park_instances = DB_WRAPPER.get_parks().unwrap_or(Vec::new());
    let mut context = Context::new();
    context.insert("parks", &park_instances);
    let s = tmpl
        .render("parks/parks.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

pub async fn park_single_handler(
    info: web::Path<(u32,)>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let park_instances = DB_WRAPPER.get_parks_single(info.0.0).unwrap();
    let trases_instances = DB_WRAPPER.get_trases(info.0.0).unwrap();
    let mut context = Context::new();
    context.insert("parks", &park_instances);
    context.insert("trases", &trases_instances);
    let s = tmpl
        .render("parks/parks_single.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}
