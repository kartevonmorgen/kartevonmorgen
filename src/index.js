/**
 * Copyright (c) 2015 - 2017 Markus Kohlhase <mail@markus-kohlhase.de>
 */

require('es6-promise').polyfill(); // required for redux-form

import React    from "react";
import ReactDOM from "react-dom";
import App      from "./components/App";
import store    from "./Store";

import { Provider, connect } from "react-redux";

if (__DEVELOPMENT__) {
  window.React = React;
  const { whyDidYouUpdate } = require('why-did-you-update');
  whyDidYouUpdate(React);
}

const ConnectedApp = connect((s) => s)(App);

const rootElement = document.querySelector('#app');

// inject the 'dispatch' method and the state
const Wrapper = <Provider store = {store} ><ConnectedApp /></Provider>;

ReactDOM.render(Wrapper, rootElement);
