import T from "../constants/ActionTypes";

const initialState = {
  moveendLastTriggered: null,
  zoomendLastTriggered: null,
  searchLastTriggered: null
};

module.exports = (state=initialState, action={}) => {

  const { payload } = action;

  switch (action.type) {
    case T.SET_MOVEEND_TIME:
      return {
        ...state,
        moveendLastTriggered: payload
      };
    case T.SET_ZOOMEND_TIME:
      return {
        ...state,
        zoomendLastTriggered: payload
      };
    case T.SET_SEARCH_TIME:
      return {
        ...state,
        searchLastTriggered: payload
      };
    default:
      return state;
  }
};
