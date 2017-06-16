import store from "./Store";
import Actions from "./Actions";
import parseURL from "./util/parseURL";
import T        from "./constants/ActionTypes";
import mapConst from "./constants/Map";

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const Router = {
  
  route: (e) => {
    console.log("routing:", window.location.hash);

    const { params } = parseURL(window.location.hash);
    const { entry, zoom, center } = params;
    const { server, map } = store.getState();
    const { entries } = server;

    if(Object.keys(params).length == 0){
      store.dispatch(Actions.showSearchResults());
    } else{
      if(entry){ 
        store.dispatch(Actions.updateStateFromURL(window.location.hash));
        store.dispatch(Actions.showMap());
        store.dispatch(Actions.getEntries([entry]));
        store.dispatch(Actions.setCurrentEntry(entry));
        store.dispatch(Actions.setCenter(entry));

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

            store.dispatch(Actions.setCenter({lat, lng}));
            store.dispatch(Actions.search());
            store.dispatch(Actions.setBbox(store.getState().map.bbox));
            
          }
        }

        if (zoom) {
          const zoomValue = Number(zoom)
          if(!isNaN(zoomValue)){
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
