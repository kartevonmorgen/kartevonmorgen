import "typeface-rubik/index.css"
import "purecss/build/base.css"
import "purecss/build/grids.css"

import React            from "react";
import ReactDOM         from "react-dom";
import { Provider, connect } from "react-redux";
import MapAndEntryList  from "./mapAndEntryList";
import mapConst         from "../../constants/Map";
import { I18nextProvider } from 'react-i18next';
import i18n             from '../../i18n';
import Store            from  "../../Store";
import store            from "../../Store";
import "../../components/styling/Icons";
import Actions          from "../../Actions";
import route            from "../../route";
import { APP_STAGES }   from "../../constants/App";

const { dispatch } = Store

console.log("APP STAGE:", __STAGE__);
if (__STAGE__ === APP_STAGES.LOCAL) {
  window.React = React;
}

const rootElement = document.querySelector('#app');
window.onpopstate = route;

let state = {
  bbox: null,
  currentEntry: null,
  highlight: [],
};

// read the hash url and navigate to the right page
store.dispatch(Actions.updateStateFromURL);
store.dispatch(Actions.setZoom(mapConst.DEFAULT_ZOOM));
route();

const emptyFunction = () => {};
const onMoveend = (coordinates) => {
  state.bbox = coordinates.bbox;
};

const ConnectedMapAndEntryList = connect((state) => state)(MapAndEntryList);

const MapAndEntryListWidget = (
  <Provider store = {store} > 
    <I18nextProvider i18n={ i18n } >
      <ConnectedMapAndEntryList
          marker={ null }
          size={ 2 }
          category={ null }
          onClick={ emptyFunction }
          onMarkerClick={ emptyFunction }
          onMoveend={ onMoveend }
          onZoomend={ emptyFunction }
          loggedIn={ false }
          ratings={ {} }
          dispatch={ dispatch }  // TODO: remove
        />
    </I18nextProvider>
  </Provider>
);

state.highlight = state.currentEntry ? [state.currentEntry.id] : [];

ReactDOM.render(MapAndEntryListWidget, rootElement);
