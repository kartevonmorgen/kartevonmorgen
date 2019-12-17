#[macro_use]
extern crate seed;
use seed::prelude::*;

mod Actions;
mod GeoLocation;
mod Store;
mod WebAPI;
mod components;
mod constants;
mod entities;
mod i18n;
mod index;
mod rating;
mod reducers;
mod route;
mod util;
mod widgets;

pub use reducers::Mdl;
pub use Actions::Msg;

fn view(_: &Mdl) -> impl View<Msg> {
    div![h1!["Hello Rust"],]
}

#[wasm_bindgen(start)]
pub fn render() {
    seed::App::builder(reducers::update, view).build_and_start();
}
