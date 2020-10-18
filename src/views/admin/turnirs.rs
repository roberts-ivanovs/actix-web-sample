use crate::views::admin::extract_base_path;
use crate::views::redirect_to;
use crate::models::Turnirs;
use crate::{DB_WRAPPER};
use actix_http::{ResponseBuilder};
use actix_web::{Error, HttpRequest, HttpResponse, Result, error, get, post, web};
use serde::Deserialize;
use tera::Context;


#[get("/")]
pub async fn list_turnirs(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let turniri_instances = Turnirs::get_turniri(&mut conn).unwrap();
    let mut context = Context::new();
    context.insert("turniri", &turniri_instances);
    let s = tmpl
        .render("admin/turnirs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

#[derive(Deserialize)]
pub struct TurnirsMethods {
    pub TURNIRS: u64,
}

#[post("/")]
pub async fn delete_turnirs(
    req: HttpRequest,
    query_data: web::Form<TurnirsMethods>,
) -> Result<HttpResponse, Error> {
    let path = req.path();
    let mut conn = DB_WRAPPER.get_conn();
    Turnirs::delete(&mut conn, query_data.TURNIRS as u32).unwrap();
    Ok(redirect_to(path))
}

#[get("/{id}")]
pub async fn update_turnirs_get(
    path: web::Path<(u32,)>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let park_instances = Turnirs::get(&mut conn, path.0.0).unwrap();
    let mut context = Context::new();
    context.insert("original", &park_instances);
    let s = tmpl
        .render("admin/e_turnirs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

#[post("/{id}")]
pub async fn update_turnirs_post(
    req: HttpRequest,
    path: web::Path<(u32,)>,
    query_data: web::Form<Turnirs>,
) -> Result<HttpResponse, Error> {
    let id = format!("{}",path.0.0);
    let base_path = extract_base_path(req.path(), &id);
    let mut conn = DB_WRAPPER.get_conn();
    let updated = Turnirs::update(&mut conn, query_data.0);
    match updated {
        Ok(_) => {
            Ok(redirect_to(base_path))
        }
        Err(_) => {
            Ok(redirect_to(req.path()))
        }
    }
}

#[get("/new/")]
pub async fn create_turnirs_get(
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {

    let mut context = Context::new();
    let empty_turnirs = Turnirs {
        id: 0,
        turnira_datums: Some("".to_owned()),
        turnira_nosaukums: Some("".to_owned()),
    };
    context.insert("original", &empty_turnirs);
    let s = tmpl
        .render("admin/e_turnirs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Created().content_type("text/html").body(s))
}

#[post("/new/")]
pub async fn create_turnirs_post(
    req: HttpRequest,
    query_data: web::Form<Turnirs>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let created = Turnirs::create(&mut conn, query_data.0);

    let base_path = extract_base_path(req.path(), "new/");
    match created {
        Ok(_) => {
            Ok(redirect_to(base_path))
        }
        Err(_) => {
            Ok(redirect_to(req.path()))
        }
    }
}
