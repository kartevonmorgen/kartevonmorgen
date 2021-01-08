import store           from "./Store";
import Actions         from "./Actions";
import parseUrl        from "./util/parseUrl";
import V               from "./constants/PanelView";
import mapConst        from "./constants/Map";
import { IDS, NAMES }  from "./constants/Categories";
import RoutingUsecases from "./constants/RoutingUsecases";

const { dispatch, getState } = store;

export default (event) => {
  // console.log(`URL CHANGE FROM BROWSER: "${getState().url.hash}" --> "${window.location.hash}"`);
  dispatch(Actions.updateStateFromURL(window.location.hash));
  const actions = createActionsFromState(getState());
  for (let a of actions) {
    dispatch(a);
  }
};

const createActionsFromState = (state) => {
  const { server, map, url } = state;
  const searchState = state.search;
  const { entries } = server;
  const { hash, routingUsecases } = url;
  const { params } = parseUrl(hash);
  const { entry, event, zoom, center, search, tags, view, left, categories, addentry, dropdowns } = params;
  const user_id = params.confirm_email;
  let [lat, lng] = center ? center.split(',') : [null, null];
  const zoomValue = Number(zoom)

  const actions = [];

  for (let usecase of routingUsecases){
    switch(usecase){
      case RoutingUsecases.SET_DROPDOWNS:
        actions.push(Actions.setDropdowns(dropdowns))
        break
      case RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY: 
        if (left && left == "hide"){
          actions.push(Actions.hideLeftPanel());
        } else {
          actions.push(Actions.showLeftPanel());
        }
        break;
      case RoutingUsecases.NO_ROUTING: 
        if(getState().view.left != V.SUBSCRIBE_TO_BBOX){
          actions.push(Actions.showSearchResults());
        }
        break;
      case RoutingUsecases.SHOW_ENTRY: 
        actions.push(Actions.showMap());
        actions.push(Actions.getEntries([entry]));
        actions.push(Actions.getEvent(entry));
        if(entries[entry] != null){
          actions.push(Actions.setCurrentEntry(
            entry, {lat: entries[entry].lat, lng: entries[entry].lng}));
        } else {
          actions.push(Actions.setCurrentEntry(entry, null));
          if(entry.lat && entry.lng){ 
            actions.push(Actions.setCenter(entry));
          }
        }
        if(!zoom) {
          actions.push(Actions.setZoom(mapConst.ENTRY_DEFAULT_ZOOM));
        }
        break;

      case RoutingUsecases.SHOW_NEW_ENTRY:
        actions.push(Actions.showNewEntry())
        actions.push(Actions.setCategory(addentry))
        break;

      case RoutingUsecases.CHANGE_CENTER:
        lat = parseFloat(lat);
        lng = parseFloat(lng); 

        if (!(isNaN(lat) || isNaN(lng))
          && ((lat.toFixed(4) != map.center.lat.toFixed(4)) 
          || (lng.toFixed(4) != map.center.lng.toFixed(4)))) {
          actions.push(Actions.showSearchResults());
          actions.push(Actions.setCenter({lat, lng}));
        }
        break;
      case RoutingUsecases.CHANGE_ZOOM: 
        if(!isNaN(zoomValue) && zoomValue != map.zoom){
          actions.push(Actions.setZoom(zoomValue));
        }
        break;
      case RoutingUsecases.CHANGE_SEARCH: 
        actions.push(Actions.search());
        break;
      case RoutingUsecases.CONFIRM_EMAIL: 
        actions.push(Actions.confirmEmail(user_id));
        break;
      case RoutingUsecases.CHANGE_SEARCH_CATEGORIES:
        const allCats_IDS = Object.values(IDS);
        const enabledCats_IDS = searchState.categories;
        const catsToEnable_Names = categories.split(",");
        for(let catID of allCats_IDS){
          const catName = NAMES[catID];
          if(catsToEnable_Names.includes(catName) && !enabledCats_IDS.includes(catID)){
            actions.push(Actions.enableSearchCategory(catID));
          }
          if(!catsToEnable_Names.includes(catName) && enabledCats_IDS.includes(catID)){
            actions.push(Actions.disableSearchCategory(catID));
          }
        }
        break;
    }
  }

  return actions;
};
