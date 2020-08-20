import React, { Component }     from "react"
import {connect}                from "react-redux"
import { icons }                from "vm-leaflet-icons"
import { CopyToClipboard } from 'react-copy-to-clipboard'
import { translate } from "react-i18next";
import Actions                   from "../Actions"
import URLs                     from "../constants/URLs"
import { IDS, NAMES }                  from  "../constants/Categories"
import STYLE                    from "./styling/Variables"
import { avg_rating_for_entry } from "../rating_groups"
import styled                   from "styled-components";
import T                        from "prop-types";
import { FontAwesomeIcon }      from '@fortawesome/react-fontawesome'
import { Fab, Action as ActionButon } from 'react-tiny-fab'
import ReactTooltip from        'react-tooltip'
import {divIcon, point as leafletPoint} from "leaflet"
import { Map, TileLayer, Marker, Tooltip } from "react-leaflet"
import {getIcon}                from '../customizations/icons'

import  "leaflet/dist/leaflet.css"
import 'react-tiny-fab/dist/styles.css'

const { INITIATIVE, EVENT, COMPANY } = IDS;

class KVMMap extends Component {

  getIconById(customizationName, id) {
    switch (id) {
      case INITIATIVE:
        return getIcon(NAMES[id], customizationName) || icons.initiative;
      case EVENT:
        return getIcon(NAMES[id], customizationName) || icons.event;
      case COMPANY:
        return getIcon(NAMES[id], customizationName) || icons.company;
      default:
        return icons.unknown;
    }
  }

  getCategoryColorById(palette, id){
    switch (id) {
      case INITIATIVE:
        return palette.initiative || STYLE.initiative;
      case EVENT:
        return palette.event || STYLE.event;
      case COMPANY:
        return palette.company || STYLE.company;
      default:
        return palette.otherCategory || STYLE.otherCategory;
    }
  }

  componentDidMount(){
    //workaround due to a bug in react-leaflet:
    const map = this.refs.map;
    if (map) {
      //map.fireLeafletEvent('load', map)
      map.leafletElement.addControl(L.control.zoom({position: 'bottomright'}))
      this.props.onMoveend(this.getMapCoordinates())

      document.getElementsByClassName("map leaflet-container")[0].setAttribute("tabindex", "7")
      document.getElementsByClassName("leaflet-control-zoom-out")[0].setAttribute("tabindex", "8")
      document.getElementsByClassName("leaflet-control-zoom-in")[0].setAttribute("tabindex", "9")
      document.getElementsByClassName("rtf--mb")[0].setAttribute("tabindex", "12")

    }

    this.props.fetchProminentTags()
    this.props.fetchTags()
  }

  // componentDidUpdate(prevProps, prevState, snapshot) {
  //   if (!isEqual(prevProps.entries, this.props.entries)) {
  //     const markersElements = document.getElementsByClassName("leaflet-interactive")
  //     const sortedEntries = sortBy(this.props.entries, "id")
  //     if (markersElements) {
  //       for (var i = 0; i !== markersElements.length; i++) {
  //         const markerElement = markersElements[i]
  //         const entry = sortedEntries[i]
  //         // markerElement.setAttribute("id", entry.id)
  //         markerElement.setAttribute("tabindex", "0")
  //         markerElement.addEventListener("click", (e) => {
  //           e.preventDefault()
  //           console.log(e.target)
  //         })
  //       }
  //     }
  //   }
  // }

  getMapCoordinates(){
    const m = this.refs.map.leafletElement
    return {
      center: m.getCenter(),
      bbox  : m.getBounds(),
      zoom  : m.getZoom()
    }
  }

  render() {
    const {
      entries,
      center,
      zoom,
      marker,
      onMoveend,
      onZoomend,
      onClick,
      onMarkerClick,
      ratings,
      showLocateButton,
      highlight,
      customizations,
      showNotification,
      showEmbedModal,
      t
    } = this.props;

    // const entries = sortBy(this.props.entries, "id")

    const url = window.location.href

    var markers = [];

    if (entries && entries.length > 0 ) {
      entries.forEach(e => {
        let avg_rating = null;

        if (e.lat && e.lng) {

          if(e.ratings && e.ratings.length > 0 && Object.keys(ratings).length > 0){
            const ratings_for_entry = (e.ratings || []).map(id => ratings[id]);
            avg_rating = avg_rating_for_entry(ratings_for_entry);
          }

          if((e.ratings && e.ratings.length > 0 && avg_rating && avg_rating > 0)
            || e.categories[0] === EVENT){
            let opacity = 0.5;
            if(highlight.indexOf(e.id) == 0 || highlight.length == 0) opacity = 1;
            if( marker ) opacity = 0.3;
            markers.push(
              <Marker
                alt={e.title}
                keyboard={false}
                title={e.title}
                key       = { e.id }
                onClick   = { () => { onMarkerClick(e.id) }}
                position  = {{ lat: e.lat, lng: e.lng }}
                icon      = { this.getIconById(customizations.name, e.categories[0]) }
                opacity   = { opacity }
              >
                <SmallTooltip direction='bottom' offset={[0, 2]}><h3>{e.title}</h3></SmallTooltip>
              </Marker>
            );
          } else {
            // to make clicking the circle easier add a larger circle with 0 opacity:

            let opacity = 0.5;
            if(highlight.indexOf(e.id) == 0 || highlight.length == 0) opacity = 1;
            if( marker ) opacity = 0.3;


            const markerColor = this.getCategoryColorById(customizations.circleMarkers, e.categories[0])
            markers.push(
              <Marker
                alt={e.title}
                keyboard={false}
                title={e.title}
                icon={divIcon({
                  iconSize: leafletPoint(20, 20),
                  html: `
                  <svg height="20" width="20">
                     <circle
                       cx="10"
                       cy="10"
                       r="9"
                       stroke="white"
                       stroke-width="0.7"
                       fill="${markerColor}"
                       opacity=${opacity}
                     />
                  </svg>
                `
                })}
                key       = { e.id }
                onClick   = { () => { onMarkerClick(e.id) }}
                position  = {{ lat: e.lat, lng: e.lng }}
              >
                <SmallTooltip direction='bottom' offset={[0, 10]}><h3>{e.title}</h3></SmallTooltip>
              </Marker>
            );
          }

          // if(highlight.length > 0 && highlight.indexOf(e.id) == 0){
          //
          //   let yOffset = 10
          //   if(e.ratings && e.ratings.length > 0 && avg_rating && avg_rating > 0) yOffset = 2
          //
          //   markers.push(
          //     <CircleMarker
          //       onClick   = { () => { onMarkerClick(e.id) }}
          //       key       = { e.id + "-highlight"}
          //       center    = {{ lat: e.lat, lng: e.lng }}
          //       opacity   = { 0 }
          //       fillOpacity = { 0 }
          //     >
          //       <SmallTooltip permanent={true} direction='bottom' offset={[0, yOffset]}><h3>{e.title}</h3></SmallTooltip>
          //     </CircleMarker>);
          // }
        }
      });
    }

    let attribution = ""
    URLs.TILE_SERVER_ATTR.name ? attribution = '<a class="osm attr" href=' + URLs.TILE_SERVER_ATTR.link + '>' + URLs.TILE_SERVER_ATTR.name + '</a> | '  : null
    attribution += '&copy; <a class="osm attr" href=' + URLs.OSM_ATTR.link + '>' + URLs.OSM_ATTR.name + '</a>'

    return (
      <Wrapper>
        <Map
          attributionControl={false}
          ref         = 'map'
          center      = { center }
          zoom        = { zoom }
          zoomSnap    = { 1.0 }
          zoomControl = { false }
          className   = "map"
          worldCopyJump = { true }
          onMoveend   = { (e) => { onMoveend(this.getMapCoordinates()) }}
          onZoomend   = { (e) => { onZoomend(this.getMapCoordinates()) }}
          onClick     = { (e) => { onClick(e) }} >

          <TileLayer
            url = { URLs.TILE_SERVER.link }
            attribution = { attribution }
          />
          { markers }
          { marker
            ? <Marker position = { marker } icon = { this.getIconById(customizations.name, parseInt(this.props.category)) } />
            : null
          }
        </Map>
        <Fab
          aria-lable="sharing button"
          event="click"
          icon={
            <ShareIcon data-tip={t('share')} data-for="shareButton" icon="share-square" color="black"/>
          }
          position={{bottom: 116, right: -23, zIndex: 0}}
          mainButtonStyles={{
            width: 30, height: 30, borderRadius: "4px", background: "#fff"
          }}
        >
          <div style={{paddingTop: 10}}>
            <CopyToClipboard tabIndex={13} text={url}>
              <ActionButon
                aira-lable="copy URL"
                onClick={() => showNotification(t('growler.linkCopied'), "success")}
                style={{
                  backgroundColor: 'white',
                  height: 30,
                  width: 90,
                  borderRadius: "4px",
                  marginRight: 8,
                  color: "black",
                }}
              >
                <ActionIcon icon="link" color="black"/>
                <div><ActionText>{t('copy')}</ActionText></div>
              </ActionButon>
            </CopyToClipboard>
          </div>
          <div style={{paddingTop: 30}}>
            <ActionButon
              tabIndex={14}
              aria-label="get embedding code"
              onClick={() => showEmbedModal()}
              style={{
                backgroundColor: 'white',
                height: 30,
                width: 90,
                borderRadius: "4px",
                marginRight: 8,
                color: "black",
              }}
            >
              <ActionIcon icon="code" color="black"/>
              <div><ActionText>Embed</ActionText></div>
            </ActionButon>
          </div>
        </Fab>
        <ReactTooltip id="shareButton" type="light" place="left" effect="solid"/>
        {showLocateButton ?
          <div className="leaflet-control-container">
            <LocateButtonContainer className="leaflet-right">
              <LocateButtonInnerContainer className = "leaflet-control-locate leaflet-bar leaflet-control">
                <LocateButton
                  tabIndex = {10}
                  className   = "leaflet-bar-part leaflet-bar-part-single" //"locate-icon"
                  onClick     = { this.props.onLocate }
                  title       = "Zeige meine Position" >
                  <LocateIcon icon="location-arrow" />
                </LocateButton>
              </LocateButtonInnerContainer>
            </LocateButtonContainer>
          </div>
          : null }
      </Wrapper>)
  }
}

KVMMap.propTypes = {
  entries       : T.array,
  ratings       : T.object,
  highlight     : T.array,
  center        : T.object,
  zoom          : T.number,
  marker        : T.object,
  onClick       : T.func,
  onMoveend     : T.func,
  onZoomend     : T.func,
  onMarkerClick : T.func,
  onLocate      : T.func,
  showLocateButton : T.bool
};

const mapDispatchToProps = (dispatch) => ({
  showNotification: (message, status) => (dispatch(Actions.showNotification(message, status))),
  showEmbedModal: () => (dispatch(Actions.showEmbedModal())),
  fetchTags: () => (dispatch(Actions.fetchTags())),
  fetchProminentTags: () => (dispatch(Actions.fetchProminentTags()))
})

module.exports = connect(null, mapDispatchToProps)(translate('translation')(KVMMap));

const Wrapper = styled.div`

  div.map {
    height: 100%;
    width: 100%;
    position: absolute;
    margin: 0;
    z-index: 0;
    padding: 0;
    top: 0;
    left: 0;
  }
  .osm.attr, .leaflet-control-attribution.leaflet-control a {
    color: ${ STYLE.darkGray }
  }
`;

const LocateButtonContainer = styled.div`
  bottom: 95px;
  position: absolute;
  z-index: 0;
`;

const LocateButtonInnerContainer = styled.div`
  box-shadow: none !important;
  width: 30px;
  height: 30px;
  border: 2px solid rgba(0,0,0,0.2);
  background-clip: padding-box;
`;

const LocateButton = styled.a `
  cursor: pointer;
  font-size: 14px;
  color: #333;
  width: 30px !important;
  height: 30px !important;
  line-height: 30px !important;
`;

const ShareIcon = styled(FontAwesomeIcon)`
  width: 12px;
  height: 12px;
`
const ActionIcon = styled(FontAwesomeIcon)`
  width: 12px;
  height: 12px;
  color: "black";
  margin-right: 5px;
`

const ActionText = styled.span`
  font-size: 0.75rem;
`

const LocateIcon = styled(FontAwesomeIcon)`
  width: 12px;
  height: 12px;
`;

const SmallTooltip = styled(Tooltip)`
  > h3 {
    margin: 0;
    padding: 0;
    font-size: 0.75rem;
  }
`
