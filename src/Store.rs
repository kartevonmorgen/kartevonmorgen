// TODO: import reducers from "./reducers";
// TODO: import thunk    from "redux-thunk"; // lets us dispatch() functions
// TODO: import logger   from "redux-logger";
// TODO:
// TODO: let middlewares = [thunk];
// TODO:
// TODO: import { createStore, applyMiddleware } from "redux";
// TODO: import { APP_STAGES } from "./constants/App";
// TODO:
// TODO: if (__STAGE__ === APP_STAGES.LOCAL) {
// TODO:   middlewares.push(logger);
// TODO: }
// TODO:
// TODO: // https://github.com/zalmoxisus/redux-devtools-extension
// TODO: const createStoreWrapper =
// TODO:   window.devToolsExtension ? window.devToolsExtension(createStore) : createStore;
// TODO:
// TODO: const store = applyMiddleware.apply(null,middlewares)(createStoreWrapper)(reducers);
// TODO:
// TODO: if (module.hot) {
// TODO:   // Enable Webpack hot module replacement for reducers
// TODO:   module.hot.accept('./reducers', () => {
// TODO:     const nextRootReducer = require('./reducers');
// TODO:     store.replaceReducer(nextRootReducer);
// TODO:   });
// TODO: }
// TODO:
// TODO: module.exports = store
