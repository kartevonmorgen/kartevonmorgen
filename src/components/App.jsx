//# Copyright (c) 2015 - 2017 Markus Kohlhase <mail@markus-kohlhase.de>

import "./App.styl"

import React            from "react"
import V                from "../constants/PanelView"
import C                from "../constants/Categories"
import Actions          from "../Actions"
import EntryDetails     from "./EntryDetails"
import ResultList       from "./ResultList"
import CityList         from "./CityList"
import Info             from "./Info"
import EntryForm        from "./EntryForm"
import RatingForm       from "./RatingForm"
import Message          from "./Message"
import Modal            from "./Modal"
import Map              from "./Map"
import SearchBar        from "./SearchBar"
import LandingPage      from "./LandingPage"
import { EDIT, RATING } from "../constants/Form"
import URLs             from "../constants/URLs"
import { pure }         from "recompose"
import { initialize }   from "redux-form"
import mapConst         from "../constants/Map"
import LeftMenu         from "./LeftMenu"
import LeftContent      from "./LeftContent"

import { DIVERSITY, RENEWABLE, FAIRNESS,
      HUMANITY, TRANSPARENCY, SOLIDARITY } from "../constants/RatingContexts"

import { GrowlerContainer } from "flash-notification-react-redux"

class Main extends React.Component {

  render() {

    const { dispatch, search, view, server, map, form, growler, url, user } = this.props;
    const { highlight, addresses, cities } = search;
    const { entries, ratings } = server;
    const { waiting_for_search_results, explainRatingContext, selectedContext } = view;

    if (url.hash != window.location.hash) {
      console.log("URL CHANGE FROM APP: " + window.location.hash + " --> " + url.hash);
      window.history.pushState(null, null, window.location.pathname + url.hash);
    }

    const resultEntries = search
            .result
            .map(id => entries[id])
            .filter(x => x != null && x != undefined);

    const invisibleEntries = search
            .invisible
            .map(id => entries[id])
            .filter(x => x != null && x != undefined);

    const rightPanelIsOpen = false; // right panel moved into landingpage

    let mapCenter = map.center;

    //if (e && e.lat && e.lng && search.current) {
    //    const c = search.current;
    //    const { lat, lng } = entries[c];
    //    mapCenter = { lat, lng };
    //}

    const loggedIn = (user.id != null) && (user.id != undefined);

    return (

    <div className="app">
      <div className="main">
        <GrowlerContainer growler = {growler} shownFor = {2000} />

        { view.menu ?
          <LandingPage
            onMenuItemClick = {(id) => {
              switch(id) {
                case 'map':
                  dispatch(Actions.toggleLandingPage());
                  break;
                case 'new':
                  dispatch(Actions.toggleLandingPage());
                  dispatch(Actions.showNewEntry());
                  break;
                case 'landing':
                  dispatch(Actions.showInfo(null));
                  dispatch(Actions.toggleLandingPage());
                  break;
                case V.LOGOUT:
                  dispatch(Actions.logout());
                  dispatch(Actions.showInfo(V.LOGOUT));
                  break;
                case V.SUBSCRIBE_TO_BBOX:
                  dispatch(Actions.showSubscribeToBbox());
                  break;
                default:
                  dispatch(Actions.showInfo(id));
                  break;
              }
            }}
            onChange = {(city) => {
              dispatch(Actions.setCitySearchText(city));
              dispatch(Actions.searchCity());
            }}
            content     = {view.right}
            searchText  = {search.city}
            cities      = {search.cities}
            onEscape = {() => { dispatch(Actions.setCitySearchText('')); }}

            onSelection = {(city) => {
              if(city){
                dispatch(Actions.setCenter({
                  lat: city.lat,
                  lng: city.lon
                }));
                dispatch(Actions.setZoom(mapConst.CITY_DEFAULT_ZOOM));
                dispatch(Actions.toggleLandingPage());
                dispatch(Actions.setSearchText(''));
                dispatch(Actions.finishCitySearch());
              }
            }}
            onLogin = {(data) => {
                const {username, password} = data;
                dispatch(Actions.login(username, password));
            }}
            onRegister = {(data) => {
                const {username, password, email} = data;
                dispatch(Actions.register(username, password, email));
            }}
            loggedIn = {loggedIn}
            user     = {user}
            onDeleteAccount = {() => { dispatch(Actions.deleteAccount()); }}
          /> : null
        }
        { view.modal ? <Modal view = {view} dispatch = {dispatch} /> : null }

        <div className = {"left " + (view.showLeftPanel && !view.menu ? 'opened' : 'closed') } >

          <div className = {"search integrated " + (view.left === V.RESULT ? 'open' : 'closed') } >
            <SearchBar
              searchText      = {search.text}
              categories      = {search.categories}
              disabled        = {[V.EDIT, V.NEW].indexOf(view.left) >= 0}
              toggleCat       = {(c) => {
                if (c === C.IDS.EVENT) {
                  dispatch(Actions.showFeatureToDonate("events"));
                } else {
                  dispatch(Actions.toggleSearchCategory(c));
                  dispatch(Actions.search());
                }
              }}
              onChange = {(txt="") => {
                dispatch(Actions.setSearchText(txt));
                dispatch(Actions.search());
              }}
              onLenseClick = {() => {
                switch(view.left) {
                  case V.ENTRY:
                    dispatch(Actions.setCurrentEntry(null, null));
                    break;
                  default:
                    dispatch(Actions.setSearchText(''));
                    dispatch(Actions.search());
                }
              }}
              onEscape = {() => { dispatch(Actions.setSearchText('')); }}
              onEnter  = {() => { /* currently not used */           }}
              onLocate = {() => { dispatch(Actions.showOwnPosition());}}
            />
          </div>
          { view.left ?
              <div>
                <nav className = "menu pure-g">
                  <LeftMenu
                    view      = {view.left}
                    map       = {map}
                    user      = {user}
                    dispatch  = {dispatch}
                />
                </nav>
                <div className = "content-wrapper">
                  <LeftContent 
                    view              = {view}
                    user              = {user}
                    form              = {form}
                    search            = {search}
                    entries           = {entries}
                    ratings           = {ratings}
                    dispatch          = {dispatch}
                    resultEntries     = {resultEntries}
                    invisibleEntries  = {invisibleEntries}
                  />
                </div>
              </div>
            : null
          }
        </div>
        <div className = "hide-sidebar">
          <button onClick = {() => {
              if (view.showLeftPanel) {
                dispatch(Actions.hideLeftPanel());
              } else {
                dispatch(Actions.showLeftPanel());
              }
          }}>
            <i className = { "fa fa-angle-double-" + (view.showLeftPanel ? 'left' : 'right') } />
          </button>
        </div>

        <div className = {"right " + (rightPanelIsOpen ? 'opened' : 'closed') } >
          <div className = "menu-toggle">
            <button onClick = { () => { dispatch(Actions.toggleMenu()); }} >
              <span className = "pincloud">
                <i className = { "fa fa-" + (rightPanelIsOpen ? 'times' : 'bars') } />
              </span>
            </button>
          </div>
        </div>
        <div className="center">
          <Map
            marker        = { [V.EDIT, V.NEW].indexOf(view.left) >= 0 ? map.marker : null }
            size          = { view.left
              ?
                rightPanelIsOpen ? 3 : 2
              :
                rightPanelIsOpen ? 1 : 0
            }
            center        = { mapCenter }
            zoom          = { map.zoom }
            category      = {
              form[EDIT.id] &&
              form[EDIT.id].category &&
              form[EDIT.id].category.value
            }
            highlight     = { highlight }
            entries       = { (view.left != V.EDIT && view.left != V.NEW) ? resultEntries : null }
            onClick       = { (latlng) => { dispatch(Actions.setMarker(latlng)); }}
            onMarkerClick = { (id) => {
              dispatch(Actions.setCurrentEntry(id, null));
              dispatch(Actions.showLeftPanel());
            }}
            onMoveend     = {(coordinates) => {
              if (map.center.lat.toFixed(4) != coordinates.center.lat && map.center.lng.toFixed(4) != coordinates.center.lng) {
                dispatch(Actions.setCenter({
                  lat: coordinates.center.lat,
                  lng: coordinates.center.lng
                }));
              }
              dispatch(Actions.setBbox(coordinates.bbox));
              dispatch(Actions.search());
            }}
            onZoomend     = {(coordinates) => {
              if (coordinates.zoom != map.zoom) {
                dispatch(Actions.setZoom(coordinates.zoom));
                // dispatch Actions.setBbox coordinates.bbox
              }
            }}
            loggedIn = { loggedIn }
          />
        </div>

      </div>
    </div>);
  }
}

module.exports = Main;
