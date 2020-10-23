use crate::{models::Grozs, models::Trase, DB_WRAPPER};
use actix_web::{error, get, post, web, Error, HttpRequest, HttpResponse, Result};
use tera::Context;

#[get("/{traseid}")]
pub async fn trase_details(
    info: web::Path<(u32,)>,
    tmpl: web::Data<tera::Tera>,
) -> Result<HttpResponse, Error> {
    let mut conn = DB_WRAPPER.get_conn();
    let hard_grozi = Grozs::get_hardest_grozi_in_trase(&mut conn, (info.0).0).unwrap();
    let best_players_in_trase = Trase::get_best_players_in_trase(&mut conn, (info.0).0).unwrap();
    let trase_overview = Trase::trase_summary(&mut conn, (info.0).0).unwrap();
    let mut context = Context::new();
    context.insert("hard_grozi", &hard_grozi);
    context.insert("best_players_in_trase", &best_players_in_trase);
    context.insert("trase_overview", &trase_overview);

    let s = tmpl
        .render("parks/trase_details.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Ok().content_type("text/html").body(s))
}
