use tera::Context;
use crate::{DB_WRAPPER, models::Turnirs};
use actix_web::{error, web, Error, HttpResponse, Result};
use std::collections::HashMap;

pub async fn turnirs_all_handler(
    tmpl: web::Data<tera::Tera>,
    query: web::Query<HashMap<String, String>>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let turnirs_instances = Turnirs::get_turnirs(&mut conn).unwrap();
    let mut context = Context::new();
    context.insert("turniri", &turnirs_instances);
    let s = tmpl
        .render("turnirs/turnirs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}


pub async fn turnirs_single_handler(
    info: web::Path<(u32,)>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();

    let turnirs_instances = Turnirs::get(&mut conn, info.0.0).unwrap();
    let turnirs_results = Turnirs::count_turnirs_summary(&mut conn, info.0.0).unwrap();
    let mut context = Context::new();
    context.insert("turnirs", &turnirs_instances);
    context.insert("turnirs_result", &turnirs_results);
    let s = tmpl
        .render("turnirs/turnirs_single.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}
