import T from "../constants/ActionTypes";
import cookies from "../util/cookies";

const initialState = {
  id: null,
  email: null,
  subscriptionExists: false
};

module.exports = (state=initialState, action={}) => {

  if (action.error) {
    return state;
  }

  const { payload } = action;

  switch (action.type) {
    case T.LOGIN_RESULT:
      return {
        ...state,
        id: action.error ? null : action.payload.body.u_id,
        email: action.error ? null : action.payload.body.email
      }

    case T.LOGOUT:
      cookies.deleteAllCookies();
      return {
        ...state,
        id: null,
        email: null,
        subscriptionExists: false
      }

    case T.UPDATE_SUBSCRIPTION_INFO:
      return {
        ...state,
        subscriptionExists: action.subscriptionExists
      }

    case T.REGISTER_RESULT:
      return {
        ...state,
        email: action.email
      }

    default:
      return state;
  }
};
