// TODO: import React         from "react";
// TODO: import styled        from "styled-components";
// TODO: import EntryDetails  from "../../components/pure/EntryDetails";
// TODO: import URLs          from "../../constants/URLs";
// TODO: import i18n          from "../../i18n";
// TODO: import Map           from "../../components/Map";
// TODO: 
// TODO: const MoreInfoLink = styled.a`
// TODO:   position: absolute;
// TODO:   z-index: 1;
// TODO:   bottom: 0;
// TODO:   background: white;
// TODO:   left: 0;
// TODO:   padding: 6px 25px;
// TODO:   font-size: 0.8em;
// TODO:   font-family: "Rubik", sans-serif;
// TODO:   border-top-right-radius: 2px;
// TODO: `;
// TODO: 
// TODO: module.exports = ({marker, size, center, zoom, category, highlight, 
// TODO:   entries, onClick, onMarkerClick, onMoveend, onZoomend, loggedIn, ratings = {}}) =>
// TODO:   <div>
// TODO:     <Map
// TODO:       marker = {marker}
// TODO:       size = {size}
// TODO:       center = {center}
// TODO:       zoom = {zoom}
// TODO:       category = {category}
// TODO:       highlight = {highlight}
// TODO:       entries = {entries}
// TODO:       onClick = {onClick}
// TODO:       onMarkerClick = {onMarkerClick}
// TODO:       onMoveend = {onMoveend}
// TODO:       onZoomend = {onZoomend}
// TODO:       loggedIn = {loggedIn}
// TODO:       showLocateButton = {false}
// TODO:       ratings = {ratings}
// TODO:       />
// TODO:     <MoreInfoLink target="_blank" href={URLs.APP.link + (highlight ? ("/#/?entry=" + highlight) : "")}>{i18n.t("mapWidget.showLargeMap")}</MoreInfoLink>
// TODO:   </div>
