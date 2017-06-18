import { dispatch, getState } from "./Store";
import Actions from "./Actions";
import parseURL from "./util/parseURL";
import T        from "./constants/ActionTypes";
import mapConst from "./constants/Map";

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const Router = {
  
  route: (e) => {
    const { params } = parseURL(window.location.hash);
    const { entry, zoom, center, search, tags } = params;
    const { server, map } = getState();
    const { entries } = server;

    if(!params || Object.keys(params).length == 0){
      dispatch(Actions.showSearchResults());
    } else{
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
      else if (center && (center.length > 2)) {
        let [lat, lng] = center.split(',');
        lat = parseFloat(lat);
        lng = parseFloat(lng);

        if (!(isNaN(lat) || isNaN(lng))
          && ((lat.toFixed(4) != map.center.lat.toFixed(4)) 
          || (lng.toFixed(4) != map.center.lng.toFixed(4)))) {
          console.log("route: center");
          dispatch(Actions.showSearchResults());
          dispatch(Actions.setCenter({lat, lng}));
          dispatch(Actions.search());
          dispatch(Actions.setBbox(getState().map.bbox));
        }
      }
      if (zoom) {
        console.log("route: zoom");
        const zoomValue = Number(zoom)
        if(!isNaN(zoomValue)){
          dispatch(Actions.setZoom(zoomValue));
          dispatch(Actions.search());
          dispatch(Actions.setBbox(getState().map.bbox));
        }
      }
      if ((search && search != "") || (tags && tags != "")) {
        console.log("route: search", search, tags);
        var search_str = search ? search : "";
        if(search && tags){
          search_str += " ";
        }
        if(tags){
          console.log("tags: ", tags.split(','), tags.split(',').reduce((acc, tag) => acc + " #" + tag));
          search_str += "#" + tags.split(',').reduce((acc, tag) => acc + " #" + tag);
        }

        dispatch(Actions.setSearchText(search_str));
        dispatch(Actions.search());
      }
    }
  }
}; 

module.exports = Router;
