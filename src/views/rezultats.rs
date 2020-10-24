use crate::{
    models::Parks,
    models::{Rezultats, Speletajs, Trase, Turnirs},
    DB_WRAPPER,
};
use actix_web::{error, get, post, web, Error, HttpRequest, HttpResponse, Result};
use std::collections::HashMap;
use tera::Context;

#[get("/{speletajs_id}/{trase_id}")]
pub async fn rezultats_all_handler(
    tmpl: web::Data<tera::Tera>,
    info: web::Path<(u32, u32)>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let rezultats_instances =
        Rezultats::get_rezultats_in_turnirs_for_speletajs(&mut conn, (info.0).0, (info.0).1)
            .unwrap();
    let speletajs = Speletajs::get(&mut conn, (info.0).0);
    let turnirs = Turnirs::get(&mut conn, (info.0).1).unwrap();

    let mut context = Context::new();
    context.insert("rezultats_all", &rezultats_instances);
    context.insert("speletajs", &speletajs);
    context.insert("turnirs", &turnirs);

    println!("{:#?}", &rezultats_instances);
    let s = tmpl
        .render("rezultats/rezultats.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}
