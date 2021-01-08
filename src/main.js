import React    from "react";
import ReactDOM from "react-dom";
import App      from "./components/App";
import store    from "./Store";
import Actions  from "./Actions";
import route    from "./route";
import mapConst from "./constants/Map"
import i18n     from './i18n';

import { I18nextProvider }   from 'react-i18next';
import { Provider, connect } from "react-redux";
import { APP_STAGES }        from "./constants/App";


console.log("APP STAGE:", __STAGE__);
if (__STAGE__ === APP_STAGES.LOCAL) {
  window.React = React;
}

// listen for back button, forward button, URL change etc.
window.onpopstate = route;

const ConnectedApp = connect((s) => s)(App);

const rootElement = document.querySelector('#app');

// inject the 'dispatch' method and the state
const Wrapper = (
  <Provider store = {store} >
    <I18nextProvider i18n={ i18n } >
      <ConnectedApp />
    </I18nextProvider>
  </Provider>);

if(window.location.hash == ""){
  store.dispatch(Actions.showMenu());
}

// read the hash url and navigate to the right page
store.dispatch(Actions.updateStateFromURL);
store.dispatch(Actions.setZoom(mapConst.DEFAULT_ZOOM));
route();


// before render is an array of functions mainly initializers like customizers
// the entry point is the customization folder

const renderApp = (beforeRenderHooks=[]) => {
  beforeRenderHooks.map(hook => hook())
  ReactDOM.render(Wrapper, rootElement);
}

export default renderApp
