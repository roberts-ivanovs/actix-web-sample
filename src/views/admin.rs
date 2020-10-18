use crate::views::redirect_to_builder;
use crate::views::redirect_to;
use crate::models::Parks;
use crate::{models::Grozs, DB_WRAPPER};
use actix_http::{ResponseBuilder, http::StatusCode};
use actix_web::{Error, HttpRequest, HttpResponse, Result, error, get, post, web};
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
    req: HttpRequest,
    query_data: web::Form<ParkMethods>,
) -> Result<HttpResponse, Error> {
    let path = req.path();
    let mut conn = DB_WRAPPER.get_conn();
    Parks::delete(&mut conn, query_data.PARKS as u32).unwrap();
    Ok(redirect_to_builder(HttpResponse::Accepted(), path))
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
    req: HttpRequest,
    path: web::Path<(u32,)>,
    query_data: web::Form<Parks>,
) -> Result<HttpResponse, Error> {
    let path_str = req.path();
    let id = format!("{}",path.0.0);
    let path_str: Vec<&str> = path_str.split(&id).collect();
    let base_path = path_str.get(0).unwrap();
    let mut conn = DB_WRAPPER.get_conn();
    Parks::update(&mut conn, query_data.0).unwrap();
    Ok(redirect_to_builder(HttpResponse::Accepted(), base_path))
}

#[get("/parks/new/")]
pub async fn admin_create_parks_get(
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {

    let mut context = Context::new();
    let empty_parks = Parks {
        id: 0,
        adrese: Some(String::new()),
        telefona_numurs: Some(String::new()),
        apraksts: Some(String::new()),
        darba_laiks_sakums: String::new(),
        nosaukums: String::new(),
        darba_laiks_beigas: String::new(),
    };
    context.insert("original", &empty_parks);
    let s = tmpl
        .render("admin/e_parks.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Created().content_type("text/html").body(s))
}

#[post("/parks/new/")]
pub async fn admin_create_parks_post(
    query_data: web::Form<Parks>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    Parks::create(&mut conn, query_data.0).unwrap();
    Ok(redirect_to_builder(HttpResponse::Accepted(),"/parks/new/"))
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
