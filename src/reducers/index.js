import form     from "./form";
import search   from "./search";
import map      from "./map";
import view     from "./view";
import server   from "./server";
import url      from "./url";

import { GrowlerReducer  } from "flash-notification-react-redux/index.js"
import { combineReducers } from "redux";

module.exports = combineReducers({
  form,
  search,
  map,
  view,
  server,
  url,
  growler: GrowlerReducer
});
