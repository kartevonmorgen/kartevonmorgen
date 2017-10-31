import reducers from "./reducers";
import thunk    from "redux-thunk"; // lets us dispatch() functions
import logger   from "redux-logger";

let middlewares = [thunk];

import { createStore, applyMiddleware } from "redux";

if (__DEVELOPMENT__) {
  middlewares.push(logger);
}

// https://github.com/zalmoxisus/redux-devtools-extension
const createStoreWrapper =
  window.devToolsExtension ? window.devToolsExtension(createStore) : createStore;

const store = applyMiddleware.apply(null,middlewares)(createStoreWrapper)(reducers);

if (module.hot) {
  // Enable Webpack hot module replacement for reducers
  module.hot.accept('./reducers', () => {
    const nextRootReducer = require('./reducers');
    store.replaceReducer(nextRootReducer);
  });
}

module.exports = store
