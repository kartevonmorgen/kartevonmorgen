import mapConst   from "../constants/Map"
import {ENTRY_HISTORY}   from "../constants/URLs"

const searchTextToUrlQuery = (text) => {
  let query = "search=" 
    + encodeURIComponent(text.replace(/^\s/, "").replace(/\s+/g, " "));
  return query;
}

export const getHistoryLink = (entryId) => (`${ENTRY_HISTORY.link}/${entryId}`)

export default (entry, center, zoom, searchText, showLeft, categories) => {
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
  if (categories) {
    params.push("categories=" + categories);
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