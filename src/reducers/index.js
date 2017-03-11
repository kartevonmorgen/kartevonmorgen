import form     from "./form";
import search   from "./search";
import map      from "./map";
import view     from "./view";
import entries  from "./entries";
import server   from "./server";

import { GrowlerReducer  } from "flash-notification-react-redux/index.js"
import { combineReducers } from "redux";

module.exports = combineReducers({
  entries: entries,
  form: form,
  search: search,
  map: map,
  view: view,
  server: server,
  growler: GrowlerReducer
});
