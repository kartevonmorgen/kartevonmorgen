import { composeWithDevTools } from 'redux-devtools-extension';
import thunk    from "redux-thunk"; // lets us dispatch() functions
// import logger   from "redux-logger";

import reducers from "./reducers";


let middlewares = [thunk];

import { createStore, applyMiddleware } from "redux";
import { APP_STAGES } from "./constants/App";

if (__STAGE__ === APP_STAGES.LOCAL) {
  // middlewares.push(logger);
}

// https://github.com/zalmoxisus/redux-devtools-extension
const composeEnhancers = composeWithDevTools({
  // Specify name here, actionsBlacklist, actionsCreators and other options if needed
});

const store = createStore(reducers, /* preloadedState, */ composeEnhancers(
  applyMiddleware(...middlewares),
  // other store enhancers if any
));

if (module.hot) {
  // Enable Webpack hot module replacement for reducers
  module.hot.accept('./reducers', () => {
    const nextRootReducer = require('./reducers');
    store.replaceReducer(nextRootReducer);
  });
}

export default store
