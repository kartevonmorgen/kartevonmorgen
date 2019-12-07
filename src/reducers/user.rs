// TODO: import cookies from "../util/cookies";

use crate::Actions::{server, Msg};
use seed::prelude::*;

#[derive(Debug, Default)]
pub struct Mdl {
    pub email: Option<String>,
    pub subscriptionExists: bool,
}

pub fn update(action: &Msg, state: &mut Mdl, orders: &mut impl Orders<Msg>) {
    match action {
        // TODO: case T.LOGIN_RESULT:
        // TODO:   return {
        // TODO:     ...state,
        // TODO:     email: action.error ? null : payload.body.email
        // TODO:   }
        // TODO:
        // TODO: case T.LOGOUT:
        // TODO:   cookies.deleteAllCookies();
        // TODO:   return {
        // TODO:     ...state,
        // TODO:     email: null,
        // TODO:     subscriptionExists: false
        // TODO:   }
        // TODO:
        // TODO: case T.UPDATE_SUBSCRIPTION_INFO:
        // TODO:   return {
        // TODO:     ...state,
        // TODO:     subscriptionExists: action.subscriptionExists
        // TODO:   }
        // TODO:
        // TODO: case T.REGISTER_RESULT:
        // TODO:   return {
        // TODO:     ...state,
        // TODO:     email: action.email
        // TODO:   }
        _ => {
            // do nothing
        }
    }
}
