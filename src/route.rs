// TODO: import { dispatch, getState } from "./Store";
// TODO: import Actions from "./Actions";
// TODO: import parseUrl from "./util/parseUrl";
// TODO: import V        from "./constants/PanelView";
// TODO: import mapConst from "./constants/Map";
// TODO: import { IDS, NAMES } from "./constants/Categories";
// TODO: import RoutingUsecases from "./constants/RoutingUsecases";
// TODO: 
// TODO: export default (event) => {
// TODO:   console.log(`URL CHANGE FROM BROWSER: "${getState().url.hash}" --> "${window.location.hash}"`);
// TODO:   dispatch(Actions.updateStateFromURL(window.location.hash));
// TODO:   const actions = createActionsFromState(getState());
// TODO:   for (let a of actions) {
// TODO:     dispatch(a);
// TODO:   }
// TODO: };
// TODO: 
// TODO: const createActionsFromState = (state) => {
// TODO:   const { server, map, url } = state;
// TODO:   const searchState = state.search;
// TODO:   const { entries } = server;
// TODO:   const { hash, routingUsecases } = url;
// TODO:   const { params } = parseUrl(hash);
// TODO:   const { entry, event, zoom, center, search, tags, view, left, categories } = params;
// TODO:   const user_id = params.confirm_email;
// TODO:   let [lat, lng] = center ? center.split(',') : [null, null];
// TODO:   const zoomValue = Number(zoom)
// TODO: 
// TODO:   const actions = [];
// TODO: 
// TODO:   for (let usecase of routingUsecases){
// TODO:     switch(usecase){
// TODO:       case RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY: 
// TODO:         console.log("route: left visibility:", left);
// TODO:         if (left && left == "hide"){
// TODO:           actions.push(Actions.hideLeftPanel());
// TODO:         } else {
// TODO:           actions.push(Actions.showLeftPanel());
// TODO:         }
// TODO:         break;
// TODO:       case RoutingUsecases.NO_ROUTING: 
// TODO:         console.log("route: nothing");
// TODO:         if(getState().view.left != V.SUBSCRIBE_TO_BBOX){
// TODO:           actions.push(Actions.showSearchResults());
// TODO:         }
// TODO:         break;
// TODO:       case RoutingUsecases.SHOW_ENTRY: 
// TODO:         console.log("route: entry");
// TODO:         actions.push(Actions.showMap());
// TODO:         actions.push(Actions.getEntries([entry]));
// TODO:         actions.push(Actions.getEvent(entry));
// TODO:         if(entries[entry] != null){
// TODO:           actions.push(Actions.setCurrentEntry(
// TODO:             entry, {lat: entries[entry].lat, lng: entries[entry].lng}));
// TODO:         } else {
// TODO:           actions.push(Actions.setCurrentEntry(entry, null));
// TODO:           if(entry.lat && entry.lng){ 
// TODO:             actions.push(Actions.setCenter(entry));
// TODO:           }
// TODO:         }
// TODO:         if(!zoom) {
// TODO:           actions.push(Actions.setZoom(mapConst.ENTRY_DEFAULT_ZOOM));
// TODO:         }
// TODO:         break;
// TODO: 
// TODO:       case RoutingUsecases.CHANGE_CENTER:
// TODO:         lat = parseFloat(lat);
// TODO:         lng = parseFloat(lng); 
// TODO: 
// TODO:         if (!(isNaN(lat) || isNaN(lng))
// TODO:           && ((lat.toFixed(4) != map.center.lat.toFixed(4)) 
// TODO:           || (lng.toFixed(4) != map.center.lng.toFixed(4)))) {
// TODO:           console.log("route center: ", lat, lng);
// TODO:           actions.push(Actions.showSearchResults());
// TODO:           actions.push(Actions.setCenter({lat, lng}));
// TODO:         }
// TODO:         break;
// TODO:       case RoutingUsecases.CHANGE_ZOOM: 
// TODO:         if(!isNaN(zoomValue) && zoomValue != map.zoom){
// TODO:           console.log("route: zoom", zoomValue, map.zoom);
// TODO:           actions.push(Actions.setZoom(zoomValue));
// TODO:         }
// TODO:         break;
// TODO:       case RoutingUsecases.CHANGE_SEARCH: 
// TODO:         console.log(`route: search=${search}, tags=${tags}`);
// TODO:         actions.push(Actions.search());
// TODO:         break;
// TODO:       case RoutingUsecases.CONFIRM_EMAIL: 
// TODO:         console.log("route: confirmEmail");
// TODO:         actions.push(Actions.confirmEmail(user_id));
// TODO:         break;
// TODO:       case RoutingUsecases.CHANGE_SEARCH_CATEGORIES:
// TODO:         console.log("route: categories");
// TODO:         const allCats_IDS = Object.values(IDS);
// TODO:         const enabledCats_IDS = searchState.categories;
// TODO:         const catsToEnable_Names = categories.split(",");
// TODO:         for(let catID of allCats_IDS){
// TODO:           const catName = NAMES[catID];
// TODO:           if(catsToEnable_Names.includes(catName) && !enabledCats_IDS.includes(catID)){
// TODO:             actions.push(Actions.enableSearchCategory(catID));
// TODO:           }
// TODO:           if(!catsToEnable_Names.includes(catName) && enabledCats_IDS.includes(catID)){
// TODO:             actions.push(Actions.disableSearchCategory(catID));
// TODO:           }
// TODO:         }
// TODO:         break;
// TODO:     }
// TODO:   }
// TODO: 
// TODO:   return actions;
// TODO: };
