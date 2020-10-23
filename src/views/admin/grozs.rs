use crate::models::Grozs;
use crate::views::admin::extract_base_path;
use crate::views::redirect_to;
use crate::DB_WRAPPER;
use actix_http::ResponseBuilder;
use actix_web::{error, get, post, web, Error, HttpRequest, HttpResponse, Result};
use serde::Deserialize;
use tera::Context;

#[get("/")]
pub async fn list_grozs(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let park_instances = Grozs::get_grozi(&mut conn).unwrap();
    let mut context = Context::new();
    context.insert("all_grozi", &park_instances);
    let s = tmpl
        .render("admin/grozs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

#[derive(Deserialize)]
pub struct GrozsMethods {
    pub PARKS: u64,
}

#[post("/")]
pub async fn delete_grozs(
    req: HttpRequest,
    query_data: web::Form<GrozsMethods>,
) -> Result<HttpResponse, Error> {
    let path = req.path();
    let mut conn = DB_WRAPPER.get_conn();
    Grozs::delete(&mut conn, query_data.PARKS as u32).unwrap();
    Ok(redirect_to(path))
}

#[get("/{id}")]
pub async fn update_grozs_get(
    path: web::Path<(u32,)>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let park_instances = Grozs::get(&mut conn, (path.0).0).unwrap();
    let mut context = Context::new();
    context.insert("original", &park_instances);
    let s = tmpl
        .render("admin/e_grozs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

#[post("/{id}")]
pub async fn update_grozs_post(
    req: HttpRequest,
    path: web::Path<(u32,)>,
    query_data: web::Form<Grozs>,
) -> Result<HttpResponse, Error> {
    let id = format!("{}", (path.0).0);
    let base_path = extract_base_path(req.path(), &id);
    let mut conn = DB_WRAPPER.get_conn();
    let updated = Grozs::update(&mut conn, query_data.0);
    match updated {
        Ok(_) => Ok(redirect_to(base_path)),
        Err(_) => Ok(redirect_to(req.path())),
    }
}

#[get("/new/")]
pub async fn create_grozs_get(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    let mut context = Context::new();
    let empty_grozs = Grozs {
        id: 0,
        soda_punkti: Some(0),
        maksimalais_metienu_skaits: Some(0),
        attalums_lidz_grozam: 0,
    };
    context.insert("original", &empty_grozs);
    let s = tmpl
        .render("admin/e_grozs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Created().content_type("text/html").body(s))
}

#[post("/new/")]
pub async fn create_grozs_post(
    req: HttpRequest,
    query_data: web::Form<Grozs>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let created = Grozs::create(&mut conn, query_data.0);

    let base_path = extract_base_path(req.path(), "new/");
    match created {
        Ok(_) => Ok(redirect_to(base_path)),
        Err(_) => Ok(redirect_to(req.path())),
    }
}
