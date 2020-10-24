use crate::models::Speletajs;
use crate::views::admin::extract_base_path;
use crate::views::redirect_to;
use crate::DB_WRAPPER;
use actix_http::ResponseBuilder;
use actix_web::{error, get, post, web, Error, HttpRequest, HttpResponse, Result};
use serde::Deserialize;
use tera::Context;

#[get("/")]
pub async fn list_speletajs(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    speletajs_list(tmpl, HttpResponse::Ok())
}

#[derive(Deserialize)]
pub struct SpeletajsMethods {
    pub SPELETAJS: u64,
}

#[post("/")]
pub async fn delete_speletajs(
    req: HttpRequest,
    query_data: web::Form<SpeletajsMethods>,
) -> Result<HttpResponse, Error> {
    let path = req.path();
    let mut conn = DB_WRAPPER.get_conn();
    Speletajs::delete(&mut conn, query_data.SPELETAJS as u32).unwrap();
    Ok(redirect_to(path))
}

#[get("/{id}")]
pub async fn update_speletajs_get(
    path: web::Path<(u32,)>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let speletajs_instances = Speletajs::get(&mut conn, (path.0).0).unwrap();
    let mut context = Context::new();
    context.insert("original", &speletajs_instances);
    let s = tmpl
        .render("admin/e_speletajs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

#[post("/{id}")]
pub async fn update_speletajs_post(
    req: HttpRequest,
    path: web::Path<(u32,)>,
    query_data: web::Form<Speletajs>,
) -> Result<HttpResponse, Error> {
    println!("UPDATING SPELETAJS\n\n\n");
    let id = format!("{}", (path.0).0);
    let base_path = extract_base_path(req.path(), &id);
    let mut conn = DB_WRAPPER.get_conn();
    let updated = Speletajs::update(&mut conn, query_data.0);

    println!("IZDEVAS UPDATOT {:#?} \n\n", updated);
    match updated {
        Ok(_) => Ok(redirect_to(base_path)),
        Err(_) => Ok(redirect_to(req.path())),
    }
}

#[get("/new/")]
pub async fn create_speletajs_get(tmpl: web::Data<tera::Tera>) -> Result<HttpResponse, Error> {
    let mut context = Context::new();
    let empty_speletajs = Speletajs {
        id: 0,
        vards: String::new(),
        uzvards: String::new(),
        dzimsanas_dati: Some(String::new()),
        atjaunots: String::new(),
    };
    context.insert("original", &empty_speletajs);
    let s = tmpl
        .render("admin/e_speletajs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Created().content_type("text/html").body(s))
}

#[post("/new/")]
pub async fn create_speletajs_post(
    req: HttpRequest,
    query_data: web::Form<Speletajs>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let created = Speletajs::create(&mut conn, query_data.0);
    println!("{:#?}", created);
    let base_path = extract_base_path(req.path(), "new/");
    match created {
        Ok(_) => Ok(redirect_to(base_path)),
        Err(_) => Ok(redirect_to(req.path())),
    }
}

fn speletajs_list(
    tmpl: web::Data<tera::Tera>,
    mut resp: ResponseBuilder,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let speletajs_instances = Speletajs::get_all_speletaji(&mut conn).unwrap();
    let mut context = Context::new();
    context.insert("speletaji", &speletajs_instances);
    let s = tmpl
        .render("admin/speletajs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(resp.content_type("text/html").body(s))
}
