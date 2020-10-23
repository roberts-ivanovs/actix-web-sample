use crate::{
    models::Parks,
    models::{Speletajs, Trase},
    DB_WRAPPER,
};
use actix_web::{error, get, post, web, Error, HttpRequest, HttpResponse, Result};
use std::collections::HashMap;
use tera::Context;

#[get("/")]
pub async fn speletajs_all_handler(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let speletaj_instances = Speletajs::get_all_speletaji(&mut conn).unwrap();
    let mut context = Context::new();
    context.insert("speletajs_all", &speletaj_instances);
    let s = tmpl
        .render("speletajs/speletajs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

#[get("/{speletajid}")]
pub async fn speletajs_single_handler(
    info: web::Path<(u32,)>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let speletaj_instances = Speletajs::get(&mut conn, (info.0).0).unwrap();
    let turnirs_details =
        Speletajs::get_turniri_statistics(&mut conn, &speletaj_instances).unwrap();
    let mut context = Context::new();
    context.insert("speletajs", &speletaj_instances);
    context.insert("turnirs_details", &turnirs_details);
    let s = tmpl
        .render("speletajs/speletajs_single.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}
