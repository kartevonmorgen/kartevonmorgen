#[macro_use]
extern crate seed;
use seed::prelude::*;

#[derive(Default)]
struct Mdl {
    // TODO
}

#[derive(Clone)]
enum Msg {
    // TODO
}

fn update(_: Msg, _: &mut Mdl, _: &mut impl Orders<Msg>) {
    // TODO
}

fn view(_: &Mdl) -> impl View<Msg> {
    div![h1!["Hello Rust"],]
}

#[wasm_bindgen(start)]
pub fn render() {
    seed::App::builder(update, view).build_and_start();
}
