// use tera::Context;
// use crate::DB_WRAPPER;
// use actix_web::{error, web, Error, HttpResponse, Result};

// pub async fn trase_details(
//     info: web::Path<(u32,)>,
//     tmpl: web::Data<tera::Tera>,
// ) -> Result<HttpResponse, Error> {
//     // let park_instances = DB_WRAPPER.get_parks_single(info.0.0).unwrap();
//     // let trases_instances = DB_WRAPPER.get_trases(info.0.0).unwrap();
//     let mut context = Context::new();
//     // context.insert("parks", &park_instances);
//     // context.insert("trases", &trases_instances);

//     let s = tmpl
//         .render("parks/trase_details.html", &context)
//         .map_err(|_| error::ErrorInternalServerError("Template error"))?;
//     Ok(HttpResponse::Ok().content_type("text/html").body(s))
// }
