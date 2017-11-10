import React    from "react";
import ReactDOM from "react-dom";
import WebAPI   from "../../WebAPI";
import parseUrl from "../../util/parseUrl";
import Map      from "./map";

const rootElement = document.querySelector('#app');

const flatten = nestedArray => nestedArray.reduce(
  (a, next) => a.concat(Array.isArray(next) ? flatten(next) : next), []
);

let store = {};

const render = () => {
  console.log("store:", store);
  const center = {
    lat: store.highlightEntry.lat,
    lng: store.highlightEntry.lng
  };

  console.log("highlight entry:", store.highlightEntry);

  const emptyFunction = () => {};

  ReactDOM.render(Map({marker: null, size: 2, center: center, 
    zoom: 12, category: null, highlight: [store.highlightEntry.id], 
  entries: store.entries, onClick: emptyFunction , onMarkerClick: emptyFunction, 
  onMoveend: emptyFunction, onZoomend: emptyFunction, loggedIn: false}), rootElement);
};

// render();

const entryID = parseUrl(window.location.href).params.entry;
WebAPI.getEntries([entryID], (err, res) => {
  store.entries = {};
  if(!err && res.length > 0) {
    store.entries = res;

    let o = {};
    if (Array.isArray(res)) {
      res.filter(e => e != null)
       .forEach(e => { o[e.id] = e; });
    } else {
      o[res.id] = res;
    }
    store.highlightEntry = o[entryID];

    render();
  }
});

// marker        = (map.marker if view.left in [V.EDIT, V.NEW])
//       size          = if view.left? then (if rightPanelIsOpen then 3 else 2) else if rightPanelIsOpen then 1 else 0
//       center        = mapCenter
//       zoom          = map.zoom
//       category      = form[EDIT.id]?.category?.value
//       highlight     = highlight
//       entries       = (resultEntries unless view.left in [V.EDIT, V.NEW])
//       onClick       = (latlng) -> dispatch Actions.setMarker latlng
//       onMarkerClick = (id) -> 
//         dispatch Actions.setCurrentEntry id, null
//         dispatch Actions.showLeftPanel()
//       onMoveend     : (coordinates) ->
//         if map.center.lat.toFixed(4) != coordinates.center.lat and map.center.lng.toFixed(4) != coordinates.center.lng
//           dispatch Actions.setCenter
//             lat: coordinates.center.lat
//             lng: coordinates.center.lng
//         dispatch Actions.setBbox coordinates.bbox
//         dispatch Actions.search()
//       onZoomend     : (coordinates) ->
//         if coordinates.zoom != map.zoom
//           dispatch Actions.setZoom coordinates.zoom
//         #   dispatch Actions.setBbox coordinates.bbox
//       loggedIn
//       {entry ? <MoreInfoLink href={URLs.APP.link + "/#/?entry=" + entry.id}>Große Karte öffnen...</MoreInfoLink> : ""} />

