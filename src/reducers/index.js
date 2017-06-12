import form     from "./form";
import search   from "./search";
import map      from "./map";
import view     from "./view";
import server   from "./server";
import url      from "./url";

import { GrowlerReducer as growler } from "flash-notification-react-redux"
import { combineReducers           } from "redux";

module.exports = combineReducers({
  form,
  search,
  map,
  view,
  server,
  url,
  growler
});
