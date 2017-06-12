import store from "./Store";
import Actions from "./Actions";
import parseURL from "./util/parseURL";
import T        from "./constants/ActionTypes";

const route = (e) => {
  // const { url } = getState();
  // if (newURL === url.actual) {
  //   return;
  // }
  const url_parsed = parseURL(window.location.hash);
  const { params } = url_parsed;

  const { entry } = params;
  const { tags } = params;
  const mapCenter = params["map-center"];

  if(entry){ 
    store.dispatch(Actions.getEntries([entry]));
    store.dispatch(Actions.setCurrentEntry(entry));
  }   
  else {
    if (mapCenter && mapCenter.length > 2) {
      let [lat, lng] = mapCenter.split(',');
      lat = parseFloat(lat);
      lng = parseFloat(lng);
      if (!(isNaN(lat) || isNaN(lng))) {
        store.dispatch(Actions.setCenter({lat, lng}));
        store.dispatch(Actions.setBbox(getState().map.bbox));
        store.dispatch(Actions.search());
      }
    }

    if (tags && tags.length > 0) {
      let tags2 = tags.split(',');
      let txt = "";
      for (let tag of tags2) {
        txt += ("#" + tag);
      }
      store.dispatch(Actions.setCurrentEntry());
      store.dispatch(Actions.setSearchText(txt));
      store.dispatch(Actions.search());
    }
  }
  store.dispatch(Actions.updateURL(url_parsed));
};

module.exports = route;