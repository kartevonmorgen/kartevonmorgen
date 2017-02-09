import T from "../constants/ActionTypes";
import u from "updeep";

module.exports = (state, action) => {
  var e, i, len, o, p;
  if (state == null) {
    state = {};
  }
  if (action == null) {
    action = {};
  }
  switch (action.type) {
    case T.ENTRIES_RESULT:
      if (!(action.error || ((p = action.payload) == null))) {
        o = {};
        if (Array.isArray(p)) {
          for (i = 0, len = p.length; i < len; i++) {
            e = p[i];
            if (e != null) {
              o[e.id] = e;
            }
          }
        } else {
          o[p.id] = p;
        }
        return u(o, state);
      } else {
        return state;
      }
      break;
    default:
      return state;
  }
};
