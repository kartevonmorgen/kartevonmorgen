import React         from "react";
import EntryDetails  from "../../components/EntryDetails";
import URLs          from "../../constants/URLs";
import styled        from "styled-components";
import Map           from "../../components/Map";

const MoreInfoLink = styled.a`
  padding: 1em;
`;

module.exports = ({marker, size, center, zoom, category, highlight, 
  entries, onClick, onMarkerClick, onMoveend, onZoomend, loggedIn}) =>
  <div>
    <Map
      marker = {marker}
      size = {size}
      center = {center}
      zoom = {zoom}
      category = {category}
      highlight = {highlight}
      entries = {entries}
      onClick = {onClick}
      onMarkerClick = {onMarkerClick}
      onMoveend = {onMoveend}
      onZoomend = {onZoomend}
      loggedIn = {loggedIn}
      />
    <MoreInfoLink target="_blank" href={URLs.APP.link + (highlight ? ("/#/?entry=" + highlight) : "")}>Große Karte öffnen...</MoreInfoLink>
  </div>
