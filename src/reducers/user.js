import T from "../constants/ActionTypes";
import cookies from "../util/cookies";

const initialState = {
  username: null,
  subscriptionExists: false
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

    case T.LOGOUT:
      cookies.deleteAllCookies();
      return {
        ...state,
        username: null
      }

    case T.UPDATE_SUBSCRIPTION_INFO:
      return {
        ...state,
        subscriptionExists: action.subscriptionExists
      }

    default:
      return state;
  }
};
