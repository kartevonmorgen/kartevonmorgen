import T from "../constants/ActionTypes";

const initialState = {
  actual: null,
};

module.exports = (state=initialState, action={}) => {
  switch (action.type) {
    case T.UPDATE_URL:
      return {
        ...state,
        actual: action.payload
      }
    default:
      return state;
  }
};
