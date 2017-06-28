import T from "../constants/ActionTypes";

const initialState = {
  username: null
};

module.exports = (state=initialState, action={}) => {

  if (action.error) {
    //console.error(action.error);
    return state;
  }

  const { payload } = action;

  switch (action.type) {
    case T.LOGIN_RESULT:
      return {
        ...state,
        username: action.error ? null : action.payload.body.username
      }

    default:
      return state;
  }
};
