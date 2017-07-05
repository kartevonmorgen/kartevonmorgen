import "./Map.styl"

import React, { Component }         from "react"
import { Map, TileLayer, Marker }   from "react-leaflet"
import { icons }                    from "vm-leaflet-icons"
import URLs                         from "../constants/URLs"
import { pure }                     from "recompose"
import { NAMES, CSS_CLASSES, IDS }  from  "../constants/Categories"

const { INITIATIVE, EVENT, COMPANY } = IDS;

class KVMMap extends Component {

  getIconById(id){
    switch (id) {
      case INITIATIVE:
        return icons.initiative;
      case EVENT:
        return icons.event;
      case COMPANY:
        return icons.company;
      default:
        return icons.unknown;
    }
  }

  componentDidMount(){
    //workaround due to a bug in react-leaflet:
    const map = this.refs.map;
    if (map) {
      map.fireLeafletEvent('load', map)
      map.leafletElement.addControl(L.control.zoom({position: 'bottomright'}))
      this.props.onMoveend(this.getMapCoordinates())
    }
  }

  componentDidUpdate(prevProps, prevState){
    if (prevProps.size != this.props.size) {
      this.refs.map.leafletElement.invalidateSize()
    }
  }

  getMapCoordinates(){
    const m = this.refs.map.leafletElement
    return {
      center: m.getCenter(),
      bbox  : m.getBounds(),
      zoom  : m.getZoom()
    }
  }

  render() {

    var markers = [];

    const {
      entries,
      center,
      zoom,
      marker,
      highlight,
      onMoveend,
      onZoomend,
      onClick,
      onMarkerClick,
      loggedIn
    } = this.props;

    if (entries && entries.length > 0 ) {
      entries.forEach(e => {
        markers.push(
          <Marker
            onClick   = { () => { onMarkerClick(e.id) }}
            key       = { e.id }
            position  = {{ lat: e.lat, lng: e.lng }}
            opacity   = { highlight.length > 0
                            ? highlight.indexOf(e.id) < 0 ? 0.3 : 1
                            : 1
                        }
            icon      = { this.getIconById(e.categories[0]) }
            />
          )
      })
    }

    return (<Map
      style       = {{ height: "100%" }}
      ref         = 'map'
      center      = { center }
      zoom        = { zoom   }
      zoomControl = { false }
      className   = "map"
      onMoveend   = { (e) => { onMoveend(this.getMapCoordinates()) }}
      onZoomend   = { (e) => { onZoomend(this.getMapCoordinates()) }}
      onClick     = { (e) => { onClick(e.latlng) }} >

        <TileLayer
          url = { URLs.OSM_TILES.link }
          attribution = {
            '&copy; <a class="osm attr" href=' +
             URLs.OSM_ATTR.link + '>' + URLs.OSM_ATTR.name + '</a>' } >
        </TileLayer>
        { markers }
        { marker
          ? <Marker position = { marker } icon = { this.getIconById(parseInt(this.props.category)) } />
          : null
        }
      </Map>)
    }
}

const T = React.PropTypes;

KVMMap.propTypes = {
    entries       : T.array,
    highlight     : T.array,
    center        : T.object,
    zoom          : T.number,
    marker        : T.object,
    onClick       : T.func,
    onMoveend     : T.func,
    onZoomend     : T.func,
    onMarkerClick : T.func
};

module.exports = pure(KVMMap);
