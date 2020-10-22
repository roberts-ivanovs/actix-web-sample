use crate::views::admin::extract_base_path;
use crate::views::redirect_to;
use tera::Context;
use crate::{DB_WRAPPER, models::Turnirs, models::Speletajs, models::Parks, models::Trase};
use actix_web::{Error, HttpRequest, HttpResponse, Result, error, get, post, web};
use std::collections::HashMap;


#[get("/")]
pub async fn turnirs_all_handler(
    tmpl: web::Data<tera::Tera>,
    query: web::Query<HashMap<String, String>>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let turnirs_instances = Turnirs::get_turniri(&mut conn).unwrap();
    let mut context = Context::new();
    context.insert("turniri", &turnirs_instances);
    let s = tmpl
        .render("turnirs/turnirs.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}


#[get("/{turnirsid}")]
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

#[get("/add/")]
pub async fn add_turnirs_get(
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let mut context = Context::new();
    let mut conn = DB_WRAPPER.get_conn();

    let empty_turnirs = Turnirs {
        id: 0,
        turnira_datums: Some(String::new()),
        turnira_nosaukums: Some(String::new()),
    };
    let speletajs_list = Speletajs::get_all_speletaji(&mut conn).unwrap();
    let parks_list  = Parks::get_parks(&mut conn).unwrap();

    let mut parks_trase_map = HashMap::new();
    for parks in parks_list.iter(){
        let trase = Trase::get_trases(&mut conn, parks.id).unwrap();
        parks_trase_map.insert(parks.id, trase);
    }
    
    context.insert("turnirs", &empty_turnirs);
    context.insert("speletaji", &speletajs_list);
    context.insert("parks_trase_map", &parks_trase_map);
    let s = tmpl
        .render("turnirs/turnirs_add.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Created().content_type("text/html").body(s))
}

#[post("/add/")]
pub async fn add_turnirs_post(
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
