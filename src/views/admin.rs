use actix_http::ResponseBuilder;
use crate::models::Parks;
use tera::Context;
use crate::{DB_WRAPPER, models::Grozs};
use actix_web::{Error, HttpResponse, Result, error, get, web, post};
use serde::{Deserialize};



#[get("/")]
pub async fn admin_root(
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let s = tmpl
        .render("admin/main.html", &tera::Context::new())
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}

#[get("/parks/")]
pub async fn admin_list_parks(
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    admin_park_list(tmpl, HttpResponse::Ok())
}

#[derive(Deserialize)]
pub struct ParkMethods {
    PARKS: u64,
    METHOD: String,
}

#[post("/parks/")]
pub async fn admin_update_parks(
    query_data: web::Form<ParkMethods>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {

    let resp;
    match query_data.METHOD.as_ref() {
        "DELETE" => {
            let mut conn = DB_WRAPPER.get_conn();
            Parks::delete(&mut conn, query_data.PARKS as u32).unwrap();
            resp = HttpResponse::Ok();
        },
        _ => {
            resp = HttpResponse::BadRequest();
        }
    }
    admin_park_list(tmpl, resp)
}


fn admin_park_list(tmpl: web::Data<tera::Tera>, mut resp: ResponseBuilder) -> Result<HttpResponse, Error>  {
    let mut conn = DB_WRAPPER.get_conn();
    let park_instances = Parks::get_parks(&mut conn).unwrap();
    let mut context = Context::new();
    context.insert("parks", &park_instances);
    let s = tmpl
        .render("admin/parks.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(resp.content_type("text/html").body(s))
}
