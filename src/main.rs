#[macro_use]
extern crate lazy_static;

mod db;
mod models;
mod views;

use crate::views::admin::admin_update_parks_get;
use crate::views::admin::admin_delete_parks;
use crate::views::index_handler;
use actix_http::{body::Body, Response};
use actix_web::dev::ServiceResponse;
use actix_web::http::StatusCode;
use actix_web::middleware::errhandlers::{ErrorHandlerResponse, ErrorHandlers};
use actix_web::{middleware, web, App, HttpServer, Result};
use db::DatabaseWrapper;
use tera::Tera;
use views::admin::{admin_create_parks_get, admin_create_parks_post, admin_list_parks, admin_root, admin_update_parks_post};
use views::{
    parks::{park_all_handler, park_single_handler},
    trase::trase_details,
};

static DB_URL: &'static str = "mysql://root:password@localhost:3308/disku_golfs";

lazy_static! {
    pub static ref DB_WRAPPER: DatabaseWrapper = DatabaseWrapper::new(DB_URL);
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    std::env::set_var("RUST_LOG", "actix_web=info");
    env_logger::init();

    println!("initializing the database");
    DB_WRAPPER.init_db();
    println!("DB init OK");

    HttpServer::new(|| {
        let tera = Tera::new(concat!(env!("CARGO_MANIFEST_DIR"), "/templates/**/*")).unwrap();
        println!("Spawning thread");
        App::new()
            .data(tera) // enable logger
            .wrap(middleware::Logger::default())
            .service(web::resource("/").route(web::get().to(index_handler)))
            .service(web::resource("/parks/").route(web::get().to(park_all_handler)))
            .service(web::resource("/parks/{parkid}").route(web::get().to(park_single_handler)))
            .service(web::resource("/trase/{traseid}").route(web::get().to(trase_details)))
            .service(
                web::scope("/admin")
                    .service(admin_root)
                    .service(admin_list_parks)
                    .service(admin_update_parks_get)
                    .service(admin_update_parks_post)
                    .service(admin_create_parks_get)
                    .service(admin_create_parks_post)
                    .service(admin_delete_parks),
            )
            .service(web::scope("").wrap(error_handlers()))
    })
    .bind("127.0.0.1:8080")?
    .run()
    .await
}

// Custom error handlers, to return HTML responses when an error occurs.
fn error_handlers() -> ErrorHandlers<Body> {
    ErrorHandlers::new().handler(StatusCode::NOT_FOUND, not_found)
}

// Error handler for a 404 Page not found error.
fn not_found<B>(res: ServiceResponse<B>) -> Result<ErrorHandlerResponse<B>> {
    let response = get_error_response(&res, "Page not found");
    Ok(ErrorHandlerResponse::Response(
        res.into_response(response.into_body()),
    ))
}

// Generic error handler.
fn get_error_response<B>(res: &ServiceResponse<B>, error: &str) -> Response<Body> {
    let request = res.request();

    // Provide a fallback to a simple plain text response in case an error occurs during the
    // rendering of the error page.
    let fallback = |e: &str| {
        Response::build(res.status())
            .content_type("text/plain")
            .body(e.to_string())
    };

    let tera = request.app_data::<web::Data<Tera>>().map(|t| t.get_ref());
    match tera {
        Some(tera) => {
            let mut context = tera::Context::new();
            context.insert("error", error);
            context.insert("status_code", res.status().as_str());
            let body = tera.render("error.html", &context);

            match body {
                Ok(body) => Response::build(res.status())
                    .content_type("text/html")
                    .body(body),
                Err(_) => fallback(error),
            }
        }
        None => fallback(error),
    }
}
