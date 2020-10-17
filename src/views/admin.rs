use crate::models::Parks;
use crate::{models::Grozs, DB_WRAPPER};
use actix_http::ResponseBuilder;
use actix_web::{error, get, post, web, Error, HttpResponse, Result};
use serde::Deserialize;
use tera::Context;

#[get("/")]
pub async fn admin_root(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    let s = tmpl
        .render("admin/main.html", &tera::Context::new())
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

// ------------- PARKS ------------------

#[get("/parks/")]
pub async fn admin_list_parks(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    admin_park_list(tmpl, HttpResponse::Ok())
}

#[derive(Deserialize)]
pub struct ParkMethods {
    pub PARKS: u64,
}

#[post("/parks/")]
pub async fn admin_delete_parks(
    query_data: web::Form<ParkMethods>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let resp;
    let mut conn = DB_WRAPPER.get_conn();
    Parks::delete(&mut conn, query_data.PARKS as u32).unwrap();
    resp = HttpResponse::Ok();
    admin_park_list(tmpl, resp)
}

#[get("/parks/{id}")]
pub async fn admin_update_parks_get(
    path: web::Path<(u32,)>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let park_instances = Parks::get(&mut conn, path.0.0).unwrap();
    let mut context = Context::new();
    context.insert("original", &park_instances);
    let s = tmpl
        .render("admin/e_parks.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

#[post("/parks/{id}")]
pub async fn admin_update_parks_post(
    query_data: web::Form<Parks>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {

    println!("{:#?}", query_data);

    let mut conn = DB_WRAPPER.get_conn();
    let id = query_data.id.clone();
    Parks::update(&mut conn, query_data.0).unwrap();
    let park_instances = Parks::get(&mut conn, id).unwrap();
    let mut context = Context::new();
    context.insert("original", &park_instances);
    let s = tmpl
        .render("admin/e_parks.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

// ----------- HELPERS -----------------

fn admin_park_list(
    tmpl: web::Data<tera::Tera>,
    mut resp: ResponseBuilder,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let park_instances = Parks::get_parks(&mut conn).unwrap();
    let mut context = Context::new();
    context.insert("parks", &park_instances);
    let s = tmpl
        .render("admin/parks.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(resp.content_type("text/html").body(s))
}
