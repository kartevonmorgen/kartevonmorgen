import React         from "react";
import styled        from "styled-components";
import EntryDetails  from "../../components/pure/EntryDetails";
import * as URLs     from "../../constants/URLs";
import i18n          from "../../i18n";
import Map           from "../../components/Map";
import STYLE         from "../../components/styling/Variables"

const MoreInfoLink = styled.a`
  position: absolute;
  z-index: 1;
  bottom: 0;
  background: white;
  left: 0;
  padding: 6px 25px;
  font-size: 0.8em;
  font-family: ${STYLE.bodyFont};
  border-top-right-radius: 2px;
`;

export default ({customizations, marker, size, center, zoom, category, highlight,
  entries, onClick, onMarkerClick, onMoveend, onZoomend, loggedIn, ratings = {}}) =>
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
      showLocateButton = {false}
      ratings = {ratings}
      />
    <MoreInfoLink target="_blank" href={URLs.APP.link + (highlight ? ("/#/?entry=" + highlight) : "")}>{i18n.t("mapWidget.showLargeMap")}</MoreInfoLink>
  </div>
