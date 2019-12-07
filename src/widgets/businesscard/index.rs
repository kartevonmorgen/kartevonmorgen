// TODO: import React    from "react";
// TODO: import ReactDOM from "react-dom";
// TODO: import Card     from "./card";
// TODO: import WebAPI   from "../../WebAPI";
// TODO: import parseUrl from "../../util/parseUrl";
// TODO: import { I18nextProvider } from 'react-i18next';
// TODO: import i18n     from "../../i18n";
// TODO: 
// TODO: const rootElement = document.querySelector('#app');
// TODO: 
// TODO: const flatten = nestedArray => nestedArray.reduce(
// TODO:   (a, next) => a.concat(Array.isArray(next) ? flatten(next) : next), []
// TODO: );
// TODO: 
// TODO: let store = {};
// TODO: 
// TODO: const render = () => {
// TODO:   ReactDOM.render(
// TODO:     <I18nextProvider i18n={ i18n } >
// TODO:       <Card entry={ store.entry }/>
// TODO:     </I18nextProvider>, rootElement);
// TODO: };
// TODO: 
// TODO: render();
// TODO: 
// TODO: const entryID = parseUrl(window.location.href).params.entry;
// TODO: 
// TODO: WebAPI.getEntries([entryID], (err, res) => {
// TODO:   if(!err && res.length > 0) {
// TODO:     store.entry = res[0];
// TODO:     render();
// TODO:   }
// TODO: });
