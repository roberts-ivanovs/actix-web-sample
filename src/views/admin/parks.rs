use crate::views::admin::extract_base_path;
use crate::views::redirect_to;
use crate::models::Parks;
use crate::{DB_WRAPPER};
use actix_http::{ResponseBuilder};
use actix_web::{Error, HttpRequest, HttpResponse, Result, error, get, post, web};
use serde::Deserialize;
use tera::Context;


#[get("/")]
pub async fn list_parks(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    park_list(tmpl, HttpResponse::Ok())
}

#[derive(Deserialize)]
pub struct ParkMethods {
    pub PARKS: u64,
}

#[post("/")]
pub async fn delete_parks(
    req: HttpRequest,
    query_data: web::Form<ParkMethods>,
) -> Result<HttpResponse, Error> {
    let path = req.path();
    let mut conn = DB_WRAPPER.get_conn();
    Parks::delete(&mut conn, query_data.PARKS as u32).unwrap();
    Ok(redirect_to(path))
}

#[get("/{id}")]
pub async fn update_parks_get(
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

#[post("/{id}")]
pub async fn update_parks_post(
    req: HttpRequest,
    path: web::Path<(u32,)>,
    query_data: web::Form<Parks>,
) -> Result<HttpResponse, Error> {
    let id = format!("{}",path.0.0);
    let base_path = extract_base_path(req.path(), &id);
    let mut conn = DB_WRAPPER.get_conn();
    let updated = Parks::update(&mut conn, query_data.0);
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
pub async fn create_parks_get(
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {

    let mut context = Context::new();
    let empty_parks = Parks {
        id: 0,
        adrese: Some(String::new()),
        telefona_numurs: Some(String::new()),
        apraksts: Some(String::new()),
        darba_laiks_sakums: Some(String::new()),
        nosaukums: String::new(),
        darba_laiks_beigas: Some(String::new()),
    };
    context.insert("original", &empty_parks);
    let s = tmpl
        .render("admin/e_parks.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Created().content_type("text/html").body(s))
}

#[post("/new/")]
pub async fn create_parks_post(
    req: HttpRequest,
    query_data: web::Form<Parks>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let created = Parks::create(&mut conn, query_data.0);

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

fn park_list(
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
