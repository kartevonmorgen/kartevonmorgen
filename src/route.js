import { dispatch, getState } from "./Store";
import Actions from "./Actions";
import parseURL from "./util/parseURL";
import T        from "./constants/ActionTypes";
import V        from "./constants/PanelView";
import mapConst from "./constants/Map";

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const usecases = {
  NO_ROUTING: 0,
  SHOW_ENTRY: 1,
  CHANGE_CENTER: 2,
  CHANGE_ZOOM: 3,
  CHANGE_SEARCH: 4,
  CONFIRM_EMAIL: 5,
  CHANGE_SIDEBAR_VISIBILITY: 6
}

export default (event) => {
  dispatch(Actions.updateStateFromURL(window.location.hash));
  createActionsFromState(getState());
};

const createActionsFromState = (state) => {
  const { server, map, url } = state;
  const { entries } = server;
  const { params } = parseURL(window.location.hash); //parseURL(url);
  const { entry, zoom, center, search, tags, view, confirm_email, left} = params;

  switch(getUsecase(state)){
    case usecases.CHANGE_SIDEBAR_VISIBILITY: 
      console.log("route: left visibility:", left);
      dispatch(Actions.urlChangeSidebarVisibility(left == "show"));
      break;
    case usecases.NO_ROUTING: 
      console.log("route: nothing");
      if(getState().view.left != V.SUBSCRIBE_TO_BBOX){
        dispatch(Actions.showSearchResults());
      }
      break;
    case usecases.SHOW_ENTRY: 
      console.log("route: entry");
      dispatch(Actions.updateStateFromURL(window.location.hash));
      dispatch(Actions.showMap());
      dispatch(Actions.getEntries([entry]));
      dispatch(Actions.setCurrentEntry(entry, left ? (left == "show") : true));
      if(entries[entry] != null){
        const e = entries[entry];
        dispatch(Actions.setCenter({lat: e.lat, lng: e.lng}));
      } else{
        dispatch(Actions.setCenter(entry));
      }
      if(!zoom) {
        dispatch(Actions.urlSetZoom(mapConst.ENTRY_DEFAULT_ZOOM));
      }
      break;
    case usecases.CHANGE_CENTER:
        let [lat, lng] = center.split(',');
        lat = parseFloat(lat);
        lng = parseFloat(lng); 
        console.log("route center: ", getState().map.center);
        dispatch(Actions.showSearchResults());
        dispatch(Actions.setCenter({lat, lng}));
      break;
    case usecases.CHANGE_ZOOM: 
      const zoomValue = Number(zoom)
      console.log("route: zoom", zoomValue, map.zoom);
      dispatch(Actions.setZoom(zoomValue));
      break;
    case usecases.CHANGE_SEARCH: 
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

      dispatch(Actions.setSearchText(search_str));
      if(!getState().search.searchByUrl){
        // search string doesn't come from initial URL but from entering it in the search bar
        dispatch(Actions.search());
      }
      break;
    case usecases.CONFIRM_EMAIL: 
      console.log("route: confirm_email");
      dispatch(Actions.confirmEmail(confirm_email));
      break;
  }
};

const getUsecase = (state) => {
  const { server, map, url } = getState();
  const { entries } = server;
  const { params } = parseURL(window.location.hash); //parseURL(url);
  console.log("hash:", window.location.hash);
  console.log("params: ", params);
  const { entry, zoom, center, search, tags, view, confirm_email, left} = params;

  if(left){
    return usecases.CHANGE_SIDEBAR_VISIBILITY;
  }
  if(!params || Object.keys(params).length == 0){
    return usecases.NO_ROUTING;
  } else if(confirm_email){
    return usecases.CONFIRM_EMAIL;
  } else if(!view){
    if(entry){ 
      return usecases.SHOW_ENTRY;
    }   
    else if (center && center.includes(',') && (center.length >= 3)) {
      let [lat, lng] = center.split(',');
      lat = parseFloat(lat);
      lng = parseFloat(lng);

      if (!(isNaN(lat) || isNaN(lng))
        && ((lat.toFixed(4) != map.center.lat.toFixed(4)) 
        || (lng.toFixed(4) != map.center.lng.toFixed(4)))) {
          return usecases.CHANGE_CENTER;
      }
    }
    if (zoom) {
      const zoomValue = Number(zoom)
      if(!isNaN(zoomValue) && zoomValue != map.zoom){
        return usecases.CHANGE_ZOOM;
      }
    }
    if (search || tags || search == "" || tags == "") {
      return usecases.CHANGE_SEARCH;
    }
  }
};
