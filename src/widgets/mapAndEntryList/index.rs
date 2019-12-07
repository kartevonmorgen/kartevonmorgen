// TODO: import "typeface-rubik/index.css"
// TODO: import "purecss/build/base.css"
// TODO: import "purecss/build/grids.css"
// TODO:
// TODO: import React            from "react";
// TODO: import ReactDOM         from "react-dom";
// TODO: import { Provider, connect } from "react-redux";
// TODO: import MapAndEntryList  from "./mapAndEntryList";
// TODO: import mapConst         from "../../constants/Map";
// TODO: import { I18nextProvider } from 'react-i18next';
// TODO: import i18n             from '../../i18n';
// TODO: import { dispatch }     from "../../Store";
// TODO: import store            from "../../Store";
// TODO: import "../../components/styling/Icons";
// TODO: import Actions          from "../../Actions";
// TODO: import route            from "../../route";
// TODO: import { APP_STAGES }   from "../../constants/App";
// TODO:
// TODO: console.log("APP STAGE:", __STAGE__);
// TODO: if (__STAGE__ === APP_STAGES.LOCAL) {
// TODO:   window.React = React;
// TODO: }
// TODO:
// TODO: const rootElement = document.querySelector('#app');
// TODO: window.onpopstate = route;
// TODO:
// TODO: let state = {
// TODO:   bbox: null,
// TODO:   currentEntry: null,
// TODO:   highlight: [],
// TODO: };
// TODO:
// TODO: // read the hash url and navigate to the right page
// TODO: store.dispatch(Actions.updateStateFromURL);
// TODO: store.dispatch(Actions.setZoom(mapConst.DEFAULT_ZOOM));
// TODO: route();
// TODO:
// TODO: const emptyFunction = () => {};
// TODO: const onMoveend = (coordinates) => {
// TODO:   state.bbox = coordinates.bbox;
// TODO: };
// TODO:
// TODO: const ConnectedMapAndEntryList = connect((state) => state)(MapAndEntryList);
// TODO:
// TODO: const MapAndEntryListWidget = (
// TODO:   <Provider store = {store} >
// TODO:     <I18nextProvider i18n={ i18n } >
// TODO:       <ConnectedMapAndEntryList
// TODO:           marker={ null }
// TODO:           size={ 2 }
// TODO:           category={ null }
// TODO:           onClick={ emptyFunction }
// TODO:           onMarkerClick={ emptyFunction }
// TODO:           onMoveend={ onMoveend }
// TODO:           onZoomend={ emptyFunction }
// TODO:           loggedIn={ false }
// TODO:           ratings={ {} }
// TODO:           dispatch={ dispatch }  // TODO: remove
// TODO:         />
// TODO:     </I18nextProvider>
// TODO:   </Provider>
// TODO: );
// TODO:
// TODO: state.highlight = state.currentEntry ? [state.currentEntry.id] : [];
// TODO:
// TODO: ReactDOM.render(MapAndEntryListWidget, rootElement);
