import T from "../constants/ActionTypes";
import u from "updeep";

const initialState = { version: null };

module.exports = (state, action) => {
  if (state == null) {
    state = initialState;
  }
  if (action == null) {
    action = {};
  }
  switch (action.type) {
    case T.SERVER_INFO_RESULT:
      return u({
        version: action.payload.version
      }, state);
    default:
      return state;
  }
};
