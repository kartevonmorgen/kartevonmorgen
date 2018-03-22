import { dispatch, getState } from "./Store";
import Actions from "./Actions";
import parseUrl from "./util/parseUrl";
import V        from "./constants/PanelView";
import mapConst from "./constants/Map";
import RoutingUsecases from "./constants/RoutingUsecases";

export default (event) => {
  console.log(`URL CHANGE FROM BROWSER: "${getState().url.hash}" --> "${window.location.hash}"`);
  dispatch(Actions.updateStateFromURL(window.location.hash));
  const actions = createActionsFromState(getState());
  for (let a of actions) {
    dispatch(a);
  }
};

const createActionsFromState = (state) => {
  const { server, map, url } = state;
  const { entries } = server;
  const { hash, routingUsecases } = url;
  const { params } = parseUrl(hash);
  const { entry, zoom, center, search, tags, view, left} = params;
  const user_id = params.confirm_email;
  let [lat, lng] = center ? center.split(',') : [null, null];
  const zoomValue = Number(zoom)

  const actions = [];

  for (let usecase of routingUsecases){
    switch(usecase){
      case RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY: 
        console.log("route: left visibility:", left);
        if (left && left == "hide"){
          actions.push(Actions.hideLeftPanel());
        } else {
          actions.push(Actions.showLeftPanel());
        }
        break;
      case RoutingUsecases.NO_ROUTING: 
        console.log("route: nothing");
        if(getState().view.left != V.SUBSCRIBE_TO_BBOX){
          actions.push(Actions.showSearchResults());
        }
        break;
      case RoutingUsecases.SHOW_ENTRY: 
        console.log("route: entry");
        actions.push(Actions.showMap());
        actions.push(Actions.getEntries([entry]));
        if(entries[entry] != null){
          actions.push(Actions.setCurrentEntry(
            entry, {lat: entries[entry].lat, lng: entries[entry].lng}));
        } else {
          actions.push(Actions.setCurrentEntry(entry, null));
          actions.push(Actions.setCenter(entry));
        }
        if(!zoom) {
          actions.push(Actions.setZoom(mapConst.ENTRY_DEFAULT_ZOOM));
        }
        break;
      case RoutingUsecases.CHANGE_CENTER:
        lat = parseFloat(lat);
        lng = parseFloat(lng); 

        if (!(isNaN(lat) || isNaN(lng))
          && ((lat.toFixed(4) != map.center.lat.toFixed(4)) 
          || (lng.toFixed(4) != map.center.lng.toFixed(4)))) {
          console.log("route center: ", lat, lng);
          actions.push(Actions.showSearchResults());
          actions.push(Actions.setCenter({lat, lng}));
        }
        break;
      case RoutingUsecases.CHANGE_ZOOM: 
        if(!isNaN(zoomValue) && zoomValue != map.zoom){
          console.log("route: zoom", zoomValue, map.zoom);
          actions.push(Actions.setZoom(zoomValue));
        }
        break;
      case RoutingUsecases.CHANGE_SEARCH: 
        console.log(`route: search=${search}, tags=${tags}`);
        actions.push(Actions.search());
        break;
      case RoutingUsecases.CONFIRM_EMAIL: 
        console.log("route: confirmEmail");
        actions.push(Actions.confirmEmail(user_id));
        break;
    }
  }

  return actions;
};
