use crate::{Mdl, Msg};
use seed::prelude::*;

// TODO: import { icons }                from "vm-leaflet-icons"
// TODO: import URLs                     from "../constants/URLs"
// TODO: import { IDS }                  from  "../constants/Categories"
// TODO: import STYLE                    from "./styling/Variables"
// TODO: import { avg_rating_for_entry } from "../rating"
// TODO: import styled                   from "styled-components";
// TODO: import T                        from "prop-types";
// TODO: import { FontAwesomeIcon }      from '@fortawesome/react-fontawesome'
// TODO:
// TODO: import { Map, TileLayer, Marker, CircleMarker, Tooltip } from "react-leaflet"
// TODO:
// TODO: import  "leaflet/dist/leaflet.css"
// TODO:
// TODO: const { INITIATIVE, EVENT, COMPANY } = IDS;

pub fn view(mdl: &Mdl) -> Node<Msg> {
    div![
        id! {"map"} // TODO: <Swipeable onSwipedRight={ (e, deltaX) => this.swipedRightOnMap(e, deltaX) } className="center">
                    // TODO:   <Map
                    // TODO:     marker={ (view.left === V.EDIT || view.left === V.NEW) ? map.marker : null}
                    // TODO:     highlight={ search.highlight }
                    // TODO:     center={ map.center}
                    // TODO:     zoom={ map.zoom}
                    // TODO:     category={ form[EDIT.id] ? form[EDIT.id].category ? form[EDIT.id].category.value : null : null}
                    // TODO:     entries={ visibleEntries}
                    // TODO:     ratings={ ratings}
                    // TODO:     onClick={ (event) => {
                    // TODO:       if(event.originalEvent.srcElement.tagName.toLowerCase() === 'path'){
                    // TODO:         return false;
                    // TODO:       } else if(view.left === V.NEW || view.left === V.EDIT){
                    // TODO:         return dispatch(Actions.setMarker(event.latlng));
                    // TODO:       } else {
                    // TODO:         //back to overview
                    // TODO:         dispatch(Actions.setCurrentEntry(null, null));
                    // TODO:         dispatch(Actions.showSearchResults());
                    // TODO:         dispatch(Actions.setCenterInUrl(map.center));
                    // TODO:
                    // TODO:         return dispatch(Actions.hideLeftPanelOnMobile());
                    // TODO:       }
                    // TODO:     }}
                    // TODO:     onMarkerClick={ (id) => {
                    // TODO:       dispatch(Actions.setCurrentEntry(id, null));
                    // TODO:       return dispatch(Actions.showLeftPanel());
                    // TODO:     }}
                    // TODO:     onMoveend={ coordinates => { return dispatch(Actions.onMoveend(coordinates, map.center)); }}
                    // TODO:     onZoomend={ coordinates => { return dispatch(Actions.onZoomend(coordinates, map.zoom)); }}
                    // TODO:     onLocate={ () => { return dispatch(Actions.showOwnPosition()); }}
                    // TODO:     showLocateButton={ true }
                    // TODO:   />
                    // TODO: </Swipeable>
    ]
}

// TODO:
// TODO: class KVMMap extends Component {
// TODO:
// TODO:   getIconById(id) {
// TODO:     switch (id) {
// TODO:       case INITIATIVE:
// TODO:         return icons.initiative;
// TODO:       case EVENT:
// TODO:         return icons.event;
// TODO:       case COMPANY:
// TODO:         return icons.company;
// TODO:       default:
// TODO:         return icons.unknown;
// TODO:     }
// TODO:   }
// TODO:
// TODO:   getCategoryColorById(id){
// TODO:     switch (id) {
// TODO:       case INITIATIVE:
// TODO:         return STYLE.initiative;
// TODO:       case EVENT:
// TODO:         return STYLE.event;
// TODO:       case COMPANY:
// TODO:         return STYLE.company;
// TODO:       default:
// TODO:         return STYLE.otherCategory;
// TODO:     }
// TODO:   }
// TODO:
// TODO:   componentDidMount(){
// TODO:     //workaround due to a bug in react-leaflet:
// TODO:     const map = this.refs.map;
// TODO:     if (map) {
// TODO:       //map.fireLeafletEvent('load', map)
// TODO:       map.leafletElement.addControl(L.control.zoom({position: 'bottomright'}))
// TODO:       this.props.onMoveend(this.getMapCoordinates())
// TODO:     }
// TODO:   }
// TODO:
// TODO:   getMapCoordinates(){
// TODO:     const m = this.refs.map.leafletElement
// TODO:     return {
// TODO:       center: m.getCenter(),
// TODO:       bbox  : m.getBounds(),
// TODO:       zoom  : m.getZoom()
// TODO:     }
// TODO:   }
// TODO:
// TODO:   render() {
// TODO:
// TODO:     var markers = [];
// TODO:
// TODO:     const {
// TODO:       entries,
// TODO:       center,
// TODO:       zoom,
// TODO:       marker,
// TODO:       onMoveend,
// TODO:       onZoomend,
// TODO:       onClick,
// TODO:       onMarkerClick,
// TODO:       ratings,
// TODO:       showLocateButton,
// TODO:       highlight
// TODO:     } = this.props;
// TODO:
// TODO:     if (entries && entries.length > 0 ) {
// TODO:       entries.forEach(e => {
// TODO:         let avg_rating = null;
// TODO:
// TODO:         if (e.lat && e.lng) {
// TODO:
// TODO:           if(e.ratings && e.ratings.length > 0 && Object.keys(ratings).length > 0){
// TODO:             const ratings_for_entry = (e.ratings || []).map(id => ratings[id]);
// TODO:             avg_rating = avg_rating_for_entry(ratings_for_entry);
// TODO:           }
// TODO:
// TODO:           if((e.ratings && e.ratings.length > 0 && avg_rating && avg_rating > 0)
// TODO:             || e.categories[0] === EVENT){
// TODO:             let opacity = 0.5;
// TODO:             if(highlight.indexOf(e.id) == 0 || highlight.length == 0) opacity = 1;
// TODO:             if( marker ) opacity = 0.3;
// TODO:             markers.push(
// TODO:               <Marker
// TODO:                 key       = { e.id }
// TODO:                 onClick   = { () => { onMarkerClick(e.id) }}
// TODO:                 position  = {{ lat: e.lat, lng: e.lng }}
// TODO:                 icon      = { this.getIconById(e.categories[0]) }
// TODO:                 opacity   = { opacity }
// TODO:               >
// TODO:                 <SmallTooltip direction='bottom' offset={[0, 2]}><h3>{e.title}</h3></SmallTooltip>
// TODO:               </Marker>
// TODO:             );
// TODO:           } else {
// TODO:             // to make clicking the circle easier add a larger circle with 0 opacity:
// TODO:
// TODO:             let opacity = 0.5;
// TODO:             if(highlight.indexOf(e.id) == 0 || highlight.length == 0) opacity = 1;
// TODO:             if( marker ) opacity = 0.3;
// TODO:
// TODO:
// TODO:             markers.push(
// TODO:               <CircleMarker
// TODO:                 onClick   = { () => { onMarkerClick(e.id) }}
// TODO:                 key       = { e.id }
// TODO:                 center    = {{ lat: e.lat, lng: e.lng }}
// TODO:                 opacity   = { 1 }
// TODO:                 radius    = { 9 }
// TODO:                 color     = { "#fff" }
// TODO:                 weight    = { 0.7 }
// TODO:                 fillColor = { this.getCategoryColorById(e.categories[0]) }
// TODO:                 fillOpacity = { opacity }
// TODO:               >
// TODO:                 <SmallTooltip direction='bottom' offset={[0, 10]}><h3>{e.title}</h3></SmallTooltip>
// TODO:               </CircleMarker>
// TODO:             );
// TODO:           }
// TODO:
// TODO:           if(highlight.length > 0 && highlight.indexOf(e.id) == 0){
// TODO:
// TODO:             let yOffset = 10
// TODO:             if(e.ratings && e.ratings.length > 0 && avg_rating && avg_rating > 0) yOffset = 2
// TODO:
// TODO:             markers.push(
// TODO:               <CircleMarker
// TODO:                 onClick   = { () => { onMarkerClick(e.id) }}
// TODO:                 key       = { e.id + "-highlight"}
// TODO:                 center    = {{ lat: e.lat, lng: e.lng }}
// TODO:                 opacity   = { 0 }
// TODO:                 fillOpacity = { 0 }
// TODO:               >
// TODO:                 <SmallTooltip permanent={true} direction='bottom' offset={[0, yOffset]}><h3>{e.title}</h3></SmallTooltip>
// TODO:               </CircleMarker>);
// TODO:           }
// TODO:         }
// TODO:       });
// TODO:     }
// TODO:
// TODO:     let attribution = ""
// TODO:     URLs.TILE_SERVER_ATTR.name ? attribution = '<a class="osm attr" href=' + URLs.TILE_SERVER_ATTR.link + '>' + URLs.TILE_SERVER_ATTR.name + '</a> | '  : null
// TODO:     attribution += '&copy; <a class="osm attr" href=' + URLs.OSM_ATTR.link + '>' + URLs.OSM_ATTR.name + '</a>'
// TODO:
// TODO:     return (
// TODO:       <Wrapper>
// TODO:         <Map
// TODO:           ref         = 'map'
// TODO:           center      = { center }
// TODO:           zoom        = { zoom }
// TODO:           zoomSnap    = { 1.0 }
// TODO:           zoomControl = { false }
// TODO:           className   = "map"
// TODO:           worldCopyJump = { true }
// TODO:           onMoveend   = { (e) => { onMoveend(this.getMapCoordinates()) }}
// TODO:           onZoomend   = { (e) => { onZoomend(this.getMapCoordinates()) }}
// TODO:           onClick     = { (e) => { onClick(e) }} >
// TODO:
// TODO:           <TileLayer
// TODO:             url = { URLs.TILE_SERVER.link }
// TODO:             attribution = { attribution }
// TODO:           />
// TODO:           { markers }
// TODO:           { marker
// TODO:             ? <Marker position = { marker } icon = { this.getIconById(parseInt(this.props.category)) } />
// TODO:             : null
// TODO:           }
// TODO:           }
// TODO:         </Map>
// TODO:         {showLocateButton ?
// TODO:           <div className="leaflet-control-container">
// TODO:             <LocateButtonContainer className="leaflet-right">
// TODO:               <LocateButtonInnerContainer className = "leaflet-control-locate leaflet-bar leaflet-control">
// TODO:                 <LocateButton
// TODO:                   className   = "leaflet-bar-part leaflet-bar-part-single" //"locate-icon"
// TODO:                   onClick     = { this.props.onLocate }
// TODO:                   title       = "Zeige meine Position" >
// TODO:                   <LocateIcon icon="location-arrow" />
// TODO:                 </LocateButton>
// TODO:               </LocateButtonInnerContainer>
// TODO:             </LocateButtonContainer>
// TODO:           </div>
// TODO:           : null }
// TODO:       </Wrapper>)
// TODO:   }
// TODO: }
// TODO:
// TODO: KVMMap.propTypes = {
// TODO:   entries       : T.array,
// TODO:   ratings       : T.object,
// TODO:   highlight     : T.array,
// TODO:   center        : T.object,
// TODO:   zoom          : T.number,
// TODO:   marker        : T.object,
// TODO:   onClick       : T.func,
// TODO:   onMoveend     : T.func,
// TODO:   onZoomend     : T.func,
// TODO:   onMarkerClick : T.func,
// TODO:   onLocate      : T.func,
// TODO:   showLocateButton : T.bool
// TODO: };
// TODO:
// TODO: module.exports = KVMMap;
// TODO:
// TODO: const Wrapper = styled.div`
// TODO:
// TODO:   div.map {
// TODO:     height: 100%;
// TODO:     width: 100%;
// TODO:     position: absolute;
// TODO:     margin: 0;
// TODO:     z-index: 0;
// TODO:     padding: 0;
// TODO:     top: 0;
// TODO:     left: 0;
// TODO:   }
// TODO:   .osm.attr, .leaflet-control-attribution.leaflet-control a {
// TODO:     color: ${ STYLE.darkGray }
// TODO:   }
// TODO: `;
// TODO:
// TODO: const LocateButtonContainer = styled.div`
// TODO:   bottom: 95px;
// TODO:   position: absolute;
// TODO:   z-index: 0;
// TODO: `;
// TODO:
// TODO: const LocateButtonInnerContainer = styled.div`
// TODO:   box-shadow: none !important;
// TODO:   width: 30px;
// TODO:   height: 30px;
// TODO:   border: 2px solid rgba(0,0,0,0.2);
// TODO:   background-clip: padding-box;
// TODO: `;
// TODO:
// TODO: const LocateButton = styled.a `
// TODO:   cursor: pointer;
// TODO:   font-size: 14px;
// TODO:   color: #333;
// TODO:   width: 30px !important;
// TODO:   height: 30px !important;
// TODO:   line-height: 30px !important;
// TODO: `;
// TODO:
// TODO: const LocateIcon = styled(FontAwesomeIcon)`
// TODO:   width: 12px;
// TODO:   height: 12px;
// TODO: `;
// TODO:
// TODO: const SmallTooltip = styled(Tooltip)`
// TODO:   > h3 {
// TODO:     margin: 0;
// TODO:     padding: 0;
// TODO:     font-size: 0.75rem;
// TODO:   }
// TODO: `
