// TODO: import T from "../constants/ActionTypes";
// TODO: import cookies from "../util/cookies";
// TODO:
// TODO: const initialState = {
// TODO:   email: null,
// TODO:   subscriptionExists: false
// TODO: };
// TODO:
// TODO: module.exports = (state=initialState, action={}) => {
// TODO:
// TODO:   if (action.error) {
// TODO:     return state;
// TODO:   }
// TODO:
// TODO:   const { payload } = action;
// TODO:
// TODO:   switch (action.type) {
// TODO:     case T.LOGIN_RESULT:
// TODO:       return {
// TODO:         ...state,
// TODO:         email: action.error ? null : payload.body.email
// TODO:       }
// TODO:
// TODO:     case T.LOGOUT:
// TODO:       cookies.deleteAllCookies();
// TODO:       return {
// TODO:         ...state,
// TODO:         email: null,
// TODO:         subscriptionExists: false
// TODO:       }
// TODO:
// TODO:     case T.UPDATE_SUBSCRIPTION_INFO:
// TODO:       return {
// TODO:         ...state,
// TODO:         subscriptionExists: action.subscriptionExists
// TODO:       }
// TODO:
// TODO:     case T.REGISTER_RESULT:
// TODO:       return {
// TODO:         ...state,
// TODO:         email: action.email
// TODO:       }
// TODO:
// TODO:     default:
// TODO:       return state;
// TODO:   }
// TODO: };
