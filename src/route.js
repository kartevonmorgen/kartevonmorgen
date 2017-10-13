import { dispatch, getState } from "./Store";
import Actions from "./Actions";
import parseURL from "./util/parseURL";
import T        from "./constants/ActionTypes";
import V        from "./constants/PanelView";
import mapConst from "./constants/Map";
import RoutingUsecases from "./constants/RoutingUsecases";

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

export default (event) => {
  dispatch(Actions.updateStateFromURL(window.location.hash));
  const actions = createActionsFromState(getState());
  for (let a of actions) {
    dispatch(a);
  }
};

const createActionsFromState = (state) => {
  const { server, map, url } = state;
  const { entries } = server;
  const { hash, routing_usecases } = url;
  const { params } = parseURL(hash);
  const { entry, zoom, center, search, tags, view, confirm_email, left} = params;

  const actions = [];

  for (let usecase of routing_usecases){
    switch(usecase){
      case RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY: 
        console.log("route: left visibility:", left);
        actions.push(Actions.urlChangeSidebarVisibility(left == "show"));
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
        actions.push(Actions.setCurrentEntry(entry, left ? (left == "show") : true));
        if(entries[entry] != null){
          const e = entries[entry];
          actions.push(Actions.setCenter({lat: e.lat, lng: e.lng}));
        } else{
          actions.push(Actions.setCenter(entry));
        }
        if(!zoom) {
          actions.push(Actions.urlSetZoom(map.center, mapConst.ENTRY_DEFAULT_ZOOM));
        }
        break;
      case RoutingUsecases.CHANGE_CENTER:
        let [lat, lng] = center.split(',');
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
        const zoomValue = Number(zoom)
        if(!isNaN(zoomValue) && zoomValue != map.zoom){
          console.log("route: zoom", zoomValue, map.zoom);
          actions.push(Actions.setZoom(zoomValue));
        }
        break;
      case RoutingUsecases.CHANGE_SEARCH: 
        console.log("route: search", search, tags);
        var search_str = search ? search : "";
        if(search && tags){
          search_str += " ";
        }
        if(tags){
          search_str += "#" + tags.split(',').reduce((acc, tag) => acc + " #" + tag);
        }
        if(tags == ""){
          search_str += " #";
        }

        actions.push(Actions.setSearchText(search_str));
        if(!getState().search.searchByUrl){
          // search string doesn't come from initial URL but from entering it in the search bar
          actions.push(Actions.search());
        }
        break;
      case RoutingUsecases.CONFIRM_EMAIL: 
        console.log("route: confirm_email");
        actions.push(Actions.confirmEmail(confirm_email));
        break;
    }
  }

  return actions;
};
