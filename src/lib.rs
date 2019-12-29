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

#[wasm_bindgen(start)]
pub fn render() {
    let app = seed::App::builder(reducers::update, components::App::view).build_and_start();
    init_map();
    //TODO: check browser language
    app.update(Msg::Client(Actions::client::Msg::SetLocale(i18n::Lang::De)));
}

#[wasm_bindgen]
extern "C" {
    fn init_map();
}
