import T from "../constants/ActionTypes";
import cookies from "../util/cookies";

const initialState = {
  u_id: null,
  email: null,
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
        u_id: action.error ? null : action.payload.body.u_id
      }

    case T.LOGOUT:
      cookies.deleteAllCookies();
      return {
        ...state,
        u_id: null
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
