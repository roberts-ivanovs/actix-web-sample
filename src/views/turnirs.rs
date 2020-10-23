use crate::views::admin::extract_base_path;
use crate::views::redirect_to;
use tera::Context;
use crate::{DB_WRAPPER, models::Turnirs, models::Speletajs, models::Parks, models::Trase, models::TurnirsSpeletajs};
use actix_web::{Error, HttpRequest, HttpResponse, Result, error, get, post, web};
use std::collections::HashMap;
use mysql::serde::{Deserialize, Serialize};
use mysql::{prelude::Queryable, PooledConn};
use serde_qs::Config;


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
    let speletajs_list = Speletajs::get_all_speletaji(&mut conn).unwrap();
    let parks_list  = Parks::get_parks(&mut conn).unwrap();

    let mut result: Vec<(String, u32)> = vec![];

    for parks in parks_list.iter(){
        let trase = Trase::get_trases(&mut conn, parks.id).unwrap();
        for trase_iter in trase.iter() {
            result.push((format!("{} - {}", parks.nosaukums, trase_iter.id), trase_iter.id));
        }
    }

    context.insert("speletaji", &speletajs_list);
    context.insert("parks_trase_list", &result);
    let s = tmpl
        .render("turnirs/turnirs_add.html", &context)
        .map_err(|_| error::ErrorInternalServerError("Template error"))?;
    Ok(HttpResponse::Created().content_type("text/html").body(s))
}

//name=dkadjkaskhsadk&datetime=2020-04-08+10%3A00%3A00&players=4&players=5&tracks=21&METHOD=SUBMIT

#[derive(Debug, PartialEq, Eq, Serialize, Deserialize, Clone)]
struct TurniraIzveide {
    name: String,
    datetime: String,
    players: Vec<String>,
    tracks: String,
    METHOD: String
}

#[post("/add/")]
pub async fn add_turnirs_post(
    req: HttpRequest,
    query_data_raw: String,
) -> Result<HttpResponse, Error> {
    let config = Config::new(10, false);
    let query_data: TurniraIzveide = config.deserialize_str(&query_data_raw).unwrap();

    let mut conn = DB_WRAPPER.get_conn();

    let empty_turnirs = Turnirs {
        id: 0,
        turnira_datums: Some(query_data.datetime),
        turnira_nosaukums: Some(query_data.name)
    };
    let created_turnirs = Turnirs::create(&mut conn, empty_turnirs.clone());
    let turnirs_speletaji = query_data.players;
    let parks_trase = query_data.tracks;

    let transaction_query = "START TRANSACTION;";
    let transaction_query_result = conn.query_drop(transaction_query);

    match transaction_query_result {
        Ok(_) => {},
        Err(_) => {
            let transaction_query_rollback = "ROLLBACK;";
            conn.query_drop(transaction_query_rollback);
            return Ok(redirect_to(req.path()));
        }
    }

    let query_select = format!("SELECT id from Turnirs ORDER BY id desc LIMIT 1");
    let turnirs_id = conn
            .query_first::<(
                u32
            ), String>(query_select);

    match &turnirs_id {
        Ok(_) => {},
        Err(_) => {
            let transaction_query_rollback = "ROLLBACK;";
            conn.query_drop(transaction_query_rollback);
            return Ok(redirect_to(req.path()));
        }
    }


    let mut turnirs_speletajs_saraksts: Vec<u32> = vec![];
    let unwrapper_turnirs_id = turnirs_id.unwrap().unwrap();
    for speletajs in &turnirs_speletaji{
        let insertQuery = format!("INSERT INTO TurnirsSpeletajs(turnirs_FK, speletajs_FK) values({}, {})", &unwrapper_turnirs_id, speletajs);
        let insert_query_result = conn.query_drop(insertQuery);
        match insert_query_result {
            Ok(_) => {},
            Err(_) => {
                let transaction_query_rollback = "ROLLBACK;";
                conn.query_drop(transaction_query_rollback);
                return Ok(redirect_to(req.path()));
            }
        }

        let query_turnirs_speletajs_select = format!("SELECT id FROM TurnirsSpeletajs ORDER BY id desc LIMIT 1");
        let turnirs_speletajs_id_result = conn
        .query_first::<(
            u32
        ), String>(query_turnirs_speletajs_select);

        match &turnirs_speletajs_id_result {
            Ok(_) => {},
            Err(_) => {
                let transaction_query_rollback = "ROLLBACK;";
                conn.query_drop(transaction_query_rollback);
                return Ok(redirect_to(req.path()));
            }
        }
        turnirs_speletajs_saraksts.push(turnirs_speletajs_id_result.unwrap().unwrap().clone());

    }

    let query_trase_grozs_select = format!("SELECT id FROM TraseGrozs WHERE trase_FK = {} ", parks_trase);
    let trase_grozs_result: Result<Vec<u32>, mysql::Error> = conn.query_map(query_trase_grozs_select, |trase_grozs_id| trase_grozs_id);

    match trase_grozs_result {
        Ok(_) => {},
        Err(_) => {
            let transaction_query_rollback = "ROLLBACK;";
            conn.query_drop(transaction_query_rollback);
            return Ok(redirect_to(req.path()));
        }
    }


    for speletajs in turnirs_speletajs_saraksts{
        for id in &trase_grozs_result.unwrap(){
            let query_add_results = format!("INSERT INTO Rezultats(trase_grozs_FK, TurnirsSpeletajs_FK) values({}, {})", id, speletajs);
            let query_add = conn.query_drop(query_add_results);
            match query_add {
                Ok(_) => {},
                Err(_) => {
                    let transaction_query_rollback = "ROLLBACK;";
                conn.query_drop(transaction_query_rollback);
                return Ok(redirect_to(req.path()));
                }
            }
        }
    }

    let transaction_query_commit = "COMMIT;";
    let transaction_query_commit_result = conn.query_drop(transaction_query_commit);

    match transaction_query_commit_result {
        Ok(_) => {},
        Err(_) => {
            let transaction_query_rollback = "ROLLBACK;";
            conn.query_drop(transaction_query_rollback);
            return Ok(redirect_to(req.path()));
        }
    }


    let base_path = extract_base_path(req.path(), "add/");
    match created_turnirs {
        Ok(_) => {
            Ok(redirect_to(base_path))
        }
        Err(_) => {
            Ok(redirect_to(req.path()))
        }
    }

}
