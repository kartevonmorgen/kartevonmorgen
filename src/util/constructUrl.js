import mapConst   from "../constants/Map"

const searchTextToUrlQuery = (text) => {
  let query = "search=" 
    + encodeURIComponent(text.replace(/^\s/, "").replace(/\s+/g, " "));
  return query;
}

export default (entry, center, zoom, searchText, showLeft) => {
  let params = [];
  if (entry && entry != "NONE") {
    params.push("entry=" + entry);
  } else if (center) {
    params.push("center=" + center.lat.toFixed(mapConst.NUM_DECIMALS_FOR_COORDINATES)
      + "," +  center.lng.toFixed(mapConst.NUM_DECIMALS_FOR_COORDINATES));
  }
  if (zoom) {
    params.push("zoom=" + parseFloat(zoom).toFixed(mapConst.NUM_DECIMALS_FOR_ZOOM));
  }
  // if ((entry && entry != "NONE") {
  if (!(entry && entry != "NONE") && searchText) {
    params.push(searchTextToUrlQuery(searchText));
  }
  if (showLeft != null) {
    params.push("left=" + (showLeft ? "show" : "hide"));
  }
  
  return "#/?" + params.join("&");
}