import store from "./Store";
import Actions from "./Actions";
import parseURL from "./util/parseURL";
import T        from "./constants/ActionTypes";
import mapConst from "./constants/Map";

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const changeURL = (key, newValue) => {
  console.log("changeURL: ", key, newValue, typeof(newValue));
  const { params } = parseURL(window.location.hash);
  const {center, zoom, entry, tags} = params;

   const latlng = (key == "center") ? newValue.split(",") 
     : (center ? center.split(",") : null);

  const current = {
    mapCenter: latlng ? { lat: parseFloat(latlng[0]), lng: parseFloat(latlng[1])} : store.getState().map.center,
    zoom: parseInt(zoom) || mapConst.DEFAULT_ZOOM,
    entry: entry
  };

  switch(key){
    case "center":
      const latlngNew = newValue.split(",");
      current.mapCenter = { lat: parseFloat(latlngNew[0]), lng: parseFloat(latlngNew[1])};
      break;
    case "zoom":
      current.zoom = newValue;
      break;
    case "entry":
      current.entry = newValue;
      break;
  }

  const mapRouting = !current.entry;

  const newUrl =  "/?" 
  + (mapRouting ? ("center=" + current.mapCenter.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
  + "," + current.mapCenter.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
  + "&zoom=" + current.zoom) : "")
  + (current.entry ? ("entry=" + current.entry) : "");

  return newUrl;
}


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
    const mapCenter = params["center"];

    const entries = store.getState().server.entries;

    if(entry){ 
      console.log("entry:", entries[entry]);
      // const e = entries[entry];
      // store.dispatch(Actions.setCenter({lat: e.lat, lng: e.lng}));
      store.dispatch(Actions.search());
      store.dispatch(Actions.getEntries([entry]));
      store.dispatch(Actions.setCurrentEntry(entry));
      //store.dispatch(Actions.setBbox(store.getState().map.bbox));
    }   
    else {
      if (mapCenter && mapCenter.length > 2) {
        let [lat, lng] = mapCenter.split(',');
        lat = parseFloat(lat);
        lng = parseFloat(lng);
        if (!(isNaN(lat) || isNaN(lng))) {

          // if someone types specifies a custom map center, show the map directly
          if(lat != mapConst.DEFAULT_CENTER.lat || lng != mapConst.DEFAULT_CENTER.lng){
            store.dispatch(Actions.showMap());
          }

          store.dispatch(Actions.setCenter({lat, lng}));
          //store.dispatch(Actions.setBbox(store.getState().map.bbox));
          store.dispatch(Actions.search());
        }
      }

      if (zoom) {
        const zoomValue = Number(zoom)
        if(!isNaN(zoomValue)){
          store.dispatch(Actions.setZoom(zoomValue));
          store.dispatch(Actions.search());
        }
      }
    }
  },

  setCurrentEntry(id){
    window.location.hash = changeURL("entry", id);
    store.dispatch(Actions.highlight(id ? [id] : []));
  },

  setCenter(coordinates){
    const {center, bbox} = coordinates;
    store.dispatch(Actions.setBbox(coordinates.bbox));
    window.location.hash = changeURL("center", center.lat.toFixed(4) + "," + center.lng.toFixed(4));
  },

  setZoom(zoom){
    window.location.hash = changeURL("zoom", zoom);
  }
};

module.exports = Router;