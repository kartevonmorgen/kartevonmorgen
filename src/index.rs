// TODO: require('es6-promise').polyfill(); // required for redux-form
// TODO: 
// TODO: import React    from "react";
// TODO: import ReactDOM from "react-dom";
// TODO: import App      from "./components/App";
// TODO: import store    from "./Store";
// TODO: import Actions  from "./Actions";
// TODO: import route    from "./route";
// TODO: import mapConst from "./constants/Map"
// TODO: import i18n     from './i18n';
// TODO: 
// TODO: import { I18nextProvider }   from 'react-i18next';
// TODO: import { Provider, connect } from "react-redux";
// TODO: import { APP_STAGES }        from "./constants/App";
// TODO: 
// TODO: import "babel-polyfill";
// TODO: 
// TODO: console.log("APP STAGE:", __STAGE__);
// TODO: if (__STAGE__ === APP_STAGES.LOCAL) {
// TODO:   window.React = React;
// TODO: }
// TODO: 
// TODO: // listen for back button, forward button, URL change etc.
// TODO: window.onpopstate = route;
// TODO: 
// TODO: const ConnectedApp = connect((s) => s)(App);
// TODO: 
// TODO: const rootElement = document.querySelector('#app');
// TODO: 
// TODO: // inject the 'dispatch' method and the state
// TODO: const Wrapper = (
// TODO:   <Provider store = {store} >
// TODO:     <I18nextProvider i18n={ i18n } >
// TODO:       <ConnectedApp />
// TODO:     </I18nextProvider>
// TODO:   </Provider>);
// TODO: 
// TODO: if(window.location.hash == ""){
// TODO:   store.dispatch(Actions.showMenu());
// TODO: }
// TODO: 
// TODO: // read the hash url and navigate to the right page
// TODO: store.dispatch(Actions.updateStateFromURL);
// TODO: store.dispatch(Actions.setZoom(mapConst.DEFAULT_ZOOM));
// TODO: route();
// TODO: 
// TODO: ReactDOM.render(Wrapper, rootElement);
