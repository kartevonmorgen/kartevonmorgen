import T from "../constants/ActionTypes";

const initialState = {
  searchLastTriggered: null
};

export default (state=initialState, action={}) => {

  const { payload } = action;

  switch (action.type) {
    case T.SET_SEARCH_TIME:
      return {
        ...state,
        searchLastTriggered: payload
      };
    default:
      return state;
  }
};
