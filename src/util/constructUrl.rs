// TODO: import mapConst   from "../constants/Map"
// TODO:
// TODO: const searchTextToUrlQuery = (text) => {
// TODO:   let query = "search="
// TODO:     + encodeURIComponent(text.replace(/^\s/, "").replace(/\s+/g, " "));
// TODO:   return query;
// TODO: }
// TODO:
// TODO: export default (entry, center, zoom, searchText, showLeft, categories) => {
// TODO:   let params = [];
// TODO:   if (entry && entry != "NONE") {
// TODO:     params.push("entry=" + entry);
// TODO:   } else if (center) {
// TODO:     params.push("center=" + center.lat.toFixed(mapConst.NUM_DECIMALS_FOR_COORDINATES)
// TODO:       + "," +  center.lng.toFixed(mapConst.NUM_DECIMALS_FOR_COORDINATES));
// TODO:   }
// TODO:   if (zoom) {
// TODO:     params.push("zoom=" + parseFloat(zoom).toFixed(mapConst.NUM_DECIMALS_FOR_ZOOM));
// TODO:   }
// TODO:   if (categories) {
// TODO:     params.push("categories=" + categories);
// TODO:   }
// TODO:   // if ((entry && entry != "NONE") {
// TODO:   if (!(entry && entry != "NONE") && searchText) {
// TODO:     params.push(searchTextToUrlQuery(searchText));
// TODO:   }
// TODO:   if (showLeft != null) {
// TODO:     params.push("left=" + (showLeft ? "show" : "hide"));
// TODO:   }
// TODO:
// TODO:   return "#/?" + params.join("&");
// TODO: }
