import { dispatch, getState } from "./Store";
import Actions from "./Actions";
import parseURL from "./util/parseURL";
import T        from "./constants/ActionTypes";
import V        from "./constants/PanelView";
import mapConst from "./constants/Map";

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const Router = {
  
  route: (e) => {
    const { params } = parseURL(window.location.hash);
    const { entry, zoom, center, search, tags, view, confirm_email } = params;
    const { server, map } = getState();
    const { entries } = server;

    if(!params || Object.keys(params).length == 0){
      console.log("route: nothing", getState().view);
      if(getState().view.left != V.SUBSCRIBE_TO_BBOX){
        dispatch(Actions.showSearchResults());
      }
    } else if(confirm_email){
      console.log("route: confirm_email");
      dispatch(Actions.confirmEmail(confirm_email));
    } else if(!view){
      if(entry){ 
        console.log("route: entry");
        dispatch(Actions.updateStateFromURL(window.location.hash));
        dispatch(Actions.urlSetCurrentEntry(entry));
        dispatch(Actions.showMap());
        dispatch(Actions.getEntries([entry]));
        dispatch(Actions.setCurrentEntry(entry));
        if(entries[entry] != null){
          const e = entries[entry];
          dispatch(Actions.setCenter({lat: e.lat, lng: e.lng}));
        } else{
          dispatch(Actions.setCenter(entry));
        }

      }   
      else if (center && center.includes(',') && (center.length >= 3)) {
        let [lat, lng] = center.split(',');
        lat = parseFloat(lat);
        lng = parseFloat(lng);

        if (!(isNaN(lat) || isNaN(lng))
          && ((lat.toFixed(4) != map.center.lat.toFixed(4)) 
          || (lng.toFixed(4) != map.center.lng.toFixed(4)))) {
          console.log("route center: ", getState().map.center);
          dispatch(Actions.showSearchResults());
          dispatch(Actions.setCenter({lat, lng}));
        }
      }
      if (zoom) {
        const zoomValue = Number(zoom)
        if(!isNaN(zoomValue) && zoomValue != map.zoom){
          console.log("route: zoom", zoomValue, map.zoom);
          dispatch(Actions.setZoom(zoomValue));
        }
      }
      if (search || tags || search == "" || tags == "") {
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
      }
    }
  }
}; 

module.exports = Router;
