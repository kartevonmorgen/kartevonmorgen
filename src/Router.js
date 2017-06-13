import store from "./Store";
import Actions from "./Actions";
import parseURL from "./util/parseURL";
import T        from "./constants/ActionTypes";
import mapConst from "./constants/Map";

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const Router = {
  
  route: (e) => {
    console.log("route:", window.location.hash);
    // const { url } = getState();
    // if (newURL === url.actual) {
    //   return;
    // }
    const url_parsed = parseURL(window.location.hash);
    const { params } = url_parsed;

    const { entry, tags, zoom } = params;
    const center = params["center"];

    const entries = store.getState().server.entries;

    const { map } = store.getState();

    if(Object.keys(params).length == 0){
      store.dispatch(Actions.showSearchResults());
    } else{
      if(entry){ 
        store.dispatch(Actions.getEntries([entry]));
        store.dispatch(Actions.setCurrentEntry(entry));
      }   
      else {
        if (center && (center.length > 2)) {
          let [lat, lng] = center.split(',');
          lat = parseFloat(lat);
          lng = parseFloat(lng);
          if (!(isNaN(lat) || isNaN(lng))
            && (lat.toFixed(4) != map.center.lat.toFixed(4)) 
            && (lng.toFixed(4) != map.center.lng.toFixed(4))) {

            store.dispatch(Actions.showSearchResults());
            // if someone specifies a custom map center, show the map directly
            if(lat != mapConst.DEFAULT_CENTER.lat || lng != mapConst.DEFAULT_CENTER.lng){
              store.dispatch(Actions.showMap());
            }

            console.log("center --> search");
            store.dispatch(Actions.setCenter({lat, lng}));
            store.dispatch(Actions.search());
            store.dispatch(Actions.setBbox(store.getState().map.bbox));
            
          }
        }

        if (zoom) {
          const zoomValue = Number(zoom)
          if(!isNaN(zoomValue)){

            console.log("zoom --> search");
            store.dispatch(Actions.setZoom(zoomValue));
            store.dispatch(Actions.search());
            store.dispatch(Actions.setBbox(store.getState().map.bbox));
          }
        }
      }
    }
  }
};

module.exports = Router;