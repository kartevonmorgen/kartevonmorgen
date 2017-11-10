import React    from "react";
import ReactDOM from "react-dom";
import Card     from "./card";
import WebAPI   from "../../WebAPI";
import parseUrl from "../../util/parseUrl";
import "../../components/App.styl";

const rootElement = document.querySelector('#app');

const flatten = nestedArray => nestedArray.reduce(
  (a, next) => a.concat(Array.isArray(next) ? flatten(next) : next), []
);

let store = {};

const render = () => {
  ReactDOM.render(Card({entry: store.entry}), rootElement);
};

render();

const entryID = parseUrl(window.location.href).params.entry;
WebAPI.getEntries([entryID], (err, res) => {
  if(!err && res.length > 0) {
    store.entry = res[0];
    render();
  }
});
