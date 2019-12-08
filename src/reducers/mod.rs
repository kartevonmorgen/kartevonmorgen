use crate::Actions::Msg;
use seed::prelude::*;

pub mod form;
pub mod map;
pub mod search;
pub mod server;
pub mod timedActions;
pub mod url;
pub mod user;
pub mod view;

// TODO: import { reducer as notificationsReducer } from 'reapop';
// TODO: notifications = notificationsReducer()

pub fn update(msg: Msg, mdl: &mut Mdl, orders: &mut impl Orders<Msg>) {
    form::update(&msg, &mut mdl.form, orders);
    map::update(&msg, &mut mdl.map, orders);
    search::update(&msg, &mut mdl.search, orders);
    server::update(&msg, &mut mdl.server, orders);
    timedActions::update(&msg, &mut mdl.timedActions, orders);
    url::update(&msg, &mut mdl.url, orders);
    user::update(&msg, &mut mdl.user, orders);
    view::update(&msg, &mut mdl.view, orders);
}

#[derive(Debug, Default)]
pub struct Mdl {
    pub form: form::Mdl,
    pub map: map::Mdl,
    pub search: search::Mdl,
    pub server: server::Mdl,
    pub timedActions: timedActions::Mdl,
    pub url: url::Mdl,
    pub user: user::Mdl,
    pub view: view::Mdl,
}
