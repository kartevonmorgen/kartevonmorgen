import form                from "./form";
import search              from "./search";
import map                 from "./map";
import view                from "./view";
import server              from "./server";
import url                 from "./url";
import user                from "./user";
import timedActions        from "./timedActions";
import { reducer as notificationsReducer } from 'reapop';
import { combineReducers } from "redux";

module.exports = combineReducers({
  notifications: notificationsReducer(),
  form,
  search,
  map,
  view,
  server,
  url,
  user,
  timedActions,
});
