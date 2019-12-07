use crate::Actions::{server, Msg};
use seed::prelude::*;

type Time = String;

#[derive(Debug, Default)]
pub struct Mdl {
    pub searchLastTriggered: Option<Time>,
}

pub fn update(action: &Msg, state: &mut Mdl, orders: &mut impl Orders<Msg>) {
    match action {
        Msg::Server(server::Msg::setSearchTime(time)) => {
            state.searchLastTriggered = Some(time.clone());
        }
        _ => {
            // do nothing
        }
    }
}
