// TODO: import "typeface-rubik/index.css"
// TODO: import React        from "react";
// TODO: import ReactDOM     from "react-dom";
// TODO: import WebAPI       from "../../WebAPI";
// TODO: import parseUrl     from "../../util/parseUrl";
// TODO: import MapComponent from "./map";
// TODO: import mapConst     from "../../constants/Map";
// TODO: import { NUM_ENTRIES_TO_FETCH } from "../../constants/Search";
// TODO: import Categories   from "../../constants/Categories";
// TODO:
// TODO: const rootElement = document.querySelector('#app');
// TODO:
// TODO: const flatten = nestedArray => nestedArray.reduce(
// TODO:   (a, next) => a.concat(Array.isArray(next) ? flatten(next) : next), []
// TODO: );
// TODO:
// TODO: let state = {
// TODO:   searchString: null,
// TODO:   currentEntry: null,
// TODO:   entries: [],
// TODO:   entriesById: {},
// TODO:   zoom: mapConst.DEFAULT_ZOOM,
// TODO:   center: mapConst.DEFAULT_CENTER,
// TODO:   bbox: null,
// TODO:   categories: [Categories.IDS.INITIATIVE, Categories.IDS.COMPANY]
// TODO: };
// TODO:
// TODO: const render = () => {
// TODO:   const emptyFunction = () => {};
// TODO:
// TODO:   const onMoveend = (coordinates) => {
// TODO:     state.bbox = coordinates.bbox;
// TODO:   };
// TODO:
// TODO:   const highlight = state.currentEntry ? [state.currentEntry.id] : [];
// TODO:
// TODO:   ReactDOM.render(MapComponent({marker: null, size: 2, center: state.center,
// TODO:     zoom: state.zoom, category: null, highlight: highlight,
// TODO:   entries: state.entries, onClick: emptyFunction , onMarkerClick: emptyFunction,
// TODO:   onMoveend: onMoveend, onZoomend: emptyFunction, loggedIn: false}), rootElement);
// TODO: };
// TODO:
// TODO: const search = () => {
// TODO:   const s = state.searchString;
// TODO:   const cats = state.categories;
// TODO:   const sw = state.bbox._southWest;
// TODO:   const ne = state.bbox._northEast;
// TODO:   const bbox = [sw.lat, sw.lng, ne.lat, ne.lng];
// TODO:
// TODO:   if (!cats.length < 1 && (s == null || !s.trim().endsWith("#"))) {
// TODO:     WebAPI.searchEntries(s, cats, bbox, (err, res) => {
// TODO:       if ((Array.isArray(res.visible)) && res.visible.length > 0) {
// TODO:         const ids = res.visible.map(e => e.id)
// TODO:           .slice(0, NUM_ENTRIES_TO_FETCH);
// TODO:         WebAPI.getEntries(ids, (entriesErr, entriesRes) => {
// TODO:           if(!entriesErr && entriesRes.length > 0) {
// TODO:             state.entries = entriesRes;
// TODO:             render();
// TODO:           }
// TODO:         });
// TODO:       }
// TODO:     });
// TODO:   }
// TODO: }
// TODO:
// TODO: const { params } = parseUrl(window.location.href);
// TODO: let entryId = params.entry;
// TODO: let searchStr = params.search;
// TODO: let tagsStr = params.tags;
// TODO: let zoomStr = params.zoom;
// TODO: let centerStr = params.center;
// TODO:
// TODO: if(zoomStr){
// TODO:   state.zoom = parseFloat(zoomStr);
// TODO: }
// TODO: if(params && Object.keys(params).length != 0){
// TODO:   if(entryId){
// TODO:     state.zoom = mapConst.ENTRY_DEFAULT_ZOOM;
// TODO:     WebAPI.getEntries([entryId], (err, res) => {
// TODO:       state.entries = {};
// TODO:       if(!err && res.length > 0) {
// TODO:         state.entries = res;
// TODO:
// TODO:         state.entriesById = {};
// TODO:         if (Array.isArray(res)) {
// TODO:           res.filter(e => e != null)
// TODO:            .forEach(e => { state.entriesById[e.id] = e; });
// TODO:         } else {
// TODO:           state.entriesById[res.id] = res;
// TODO:         }
// TODO:         state.currentEntry = state.entriesById[entryId];
// TODO:         state.center = {
// TODO:           lat: state.currentEntry.lat,
// TODO:           lng: state.currentEntry.lng
// TODO:         };
// TODO:         render();
// TODO:       }
// TODO:     });
// TODO:   } else {
// TODO:     if (centerStr && centerStr.includes(',') && (centerStr.length >= 3)) {
// TODO:       state.center = {
// TODO:         lat: parseFloat(centerStr.split(',')[0]),
// TODO:         lng: parseFloat(centerStr.split(',')[1])
// TODO:       };
// TODO:     }
// TODO:     if (search || tags || search == "" || tags == "") {
// TODO:       state.searchString = searchStr || "";
// TODO:       render(); // necessary to make leaflet define the bbox
// TODO:       search();
// TODO:     }
// TODO:   }
// TODO: }
// TODO:
// TODO: render();
