use crate::{models::Grozs, models::Trase, DB_WRAPPER};
use actix_web::{error, get, post, web, Error, HttpRequest, HttpResponse, Result};
use tera::Context;

#[get("/{traseid}")]
pub async fn trase_details(
    info: web::Path<(u32,)>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let best_players_in_trase = Trase::get_best_players_in_trase(&mut conn, (info.0).0).unwrap();
    let trase_overview = Trase::trase_summary(&mut conn, (info.0).0).unwrap();
    let get_trase_grozu_seciba = Trase::get_trase_grozu_seciba(&mut conn, (info.0).0).unwrap();
    let hardest_grozs_in_trase = Trase::hardest_grozs_in_trase(&mut conn, (info.0).0).unwrap();
    let mut context = Context::new();

    context.insert("best_players_in_trase", &best_players_in_trase);
    context.insert("trase_overview", &trase_overview);
    context.insert("get_trase_grozu_seciba", &get_trase_grozu_seciba);
    context.insert("hardest_grozs_in_trase", &hardest_grozs_in_trase);

    let s = tmpl
        .render("parks/trase_details.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}
