// Copyright (c) 2015 - 2017 Markus Kohlhase <mail@markus-kohlhase.de>

import "./styling/App.styl"

import React, { Component } from "react"
import T                    from "prop-types"
import V                    from "../constants/PanelView"
import C                    from "../constants/Categories"
import Actions              from "../Actions"
import CityList             from "./CityList"
import Info                 from "./Info"
import Modal                from "./Modal"
import Map                  from "./Map"
import Sidebar              from "./Sidebar"
import SearchBar            from "./SearchBar"
import LandingPage          from "./LandingPage"
import { EDIT, RATING }     from "../constants/Form"
import URLs                 from "../constants/URLs"
import { pure }             from "recompose"
import { initialize }       from "redux-form"
import mapConst             from "../constants/Map"
import { translate }        from "react-i18next"
import NotificationsSystem  from "reapop";
import theme                from "reapop-theme-wybo";

const { div, span, button, nav, li, i, a, br, h3, p } = React.DOM;

class Main extends Component {
  
  escFunction(event){
    if(event.keyCode === 27) { //ESC
      const { view, dispatch}  = this.props
      if(view.menu) return dispatch(Actions.toggleLandingPage())
      if(!view.showLeftPanel) return dispatch(Actions.showLeftPanel());
      if(view.left === V.ENTRY) {
        dispatch(Actions.setCurrentEntry(null, null));
        dispatch(Actions.showSearchResults());
        return dispatch(Actions.setCenterInUrl(this.props.map.mapCenter));
      }
      if(view.left === V.RESULT){
        dispatch(Actions.setSearchText(''))
        return dispatch(Actions.search())
      } 
    }
  }

  componentDidMount(){
    document.addEventListener("keydown", (e) => this.escFunction(e), false);
  }

  componentWillUnmount(){
    document.removeEventListener("keydown");
  }

  render(){
    const { dispatch, search, view, server, map, form, url, user, timedActions, t } = this.props;
    const { addresses } = search;
    const { entries, ratings } = server;
    const { explainRatingContext, selectedContext } = view;

    if (url.hash !== window.location.hash) {
      console.log("URL CHANGE FROM APP: " + window.location.hash + " --> " + url.hash);
      window.history.pushState(null, null, window.location.pathname + url.hash);
    }
    
    const resultEntries = search.result.filter(e => entries[e.id]).map(e => entries[e.id]);

    const rightPanelIsOpen = false;   // rightpanel moved into landingpage, TODO
    
    // TODO:
    // const mapCenter = (e && e.lat && e.lng && search.current) 
    //   ? {
    //       lat: entries[search.current].lat,
    //       lng: entries[search.current].lng
    //     } 
    //   : map.center;
    const mapCenter = map.center;

    const loggedIn = user.username ? true : false;
    
    return (
      <div className="app">
        <div className="main">
          <NotificationsSystem theme={theme}/>
          { 
            view.menu ? 
              <LandingPage
                onMenuItemClick={ id => {
                  switch (id) {
                    case 'map':
                      return dispatch(Actions.toggleLandingPage());
                    case 'new':
                      dispatch(Actions.toggleLandingPage());
                      return dispatch(Actions.showNewEntry());
                    case 'landing':
                      dispatch(Actions.showInfo(null));
                      return dispatch(Actions.toggleLandingPage());
                    case V.LOGOUT:
                      dispatch(Actions.logout());
                      return dispatch(Actions.showInfo(V.LOGOUT));
                    case V.SUBSCRIBE_TO_BBOX:
                      return dispatch(Actions.showSubscribeToBbox());
                    default:
                      return dispatch(Actions.showInfo(id));
                  }
                }}
                onChange={ city => {
                  dispatch(Actions.setCitySearchText(city));
                  if (city && city.length > 3) {
                    return dispatch(Actions.searchCity());
                  }
                }}
                content={ view.right }
                searchText={ search.city }
                searchError={ search.error }
                cities={ search.cities }
                onEscape={ () => { return dispatch(Actions.setCitySearchText('')); }}
                onSelection={ city => {
                  if (city) {
                    dispatch(Actions.setCenter({
                      lat: city.lat,
                      lng: city.lon
                    }));
                    dispatch(Actions.setZoom(mapConst.CITY_DEFAULT_ZOOM));
                    dispatch(Actions.toggleLandingPage());
                    dispatch(Actions.setSearchText(''));
                    return dispatch(Actions.finishCitySearch());
                  }
                }}
                onLogin={ data => {
                  var password, username;
                  username = data.username, password = data.password;
                  return dispatch(Actions.login(username, password));
                }}
                onRegister={ data => {
                  var email, password, username;
                  username = data.username, password = data.password, email = data.email;
                  return dispatch(Actions.register(username, password, email));
                }}
                loggedIn={ loggedIn}
                user={ user}
                onDeleteAccount={ () => {
                  return dispatch(Actions.deleteAccount());
                }}
              />
            : ""
          }
          { 
            view.modal != null ? <Modal view={view} dispatch={dispatch} /> : ""
          }

          <div className={"left " + (view.showLeftPanel && !view.menu ? 'opened' : 'closed')}>
            <div className={"search integrated " + ((view.left === V.RESULT) ? 'open' : 'closed')}>
              <SearchBar
                searchText={search.text}
                categories={search.categories}
                disabled={view.left === V.EDIT || view.left === V.NEW}
                toggleCat={ c => {
                  if (c === C.IDS.EVENT) {
                    return dispatch(Actions.showFeatureToDonate("events"));
                  } else {
                    dispatch(Actions.toggleSearchCategory(c));
                    return dispatch(Actions.search());
                  }
                }}
                onChange={txt => {
                  if (txt == null) {
                    txt = "";
                  }
                  dispatch(Actions.setSearchText(txt));
                  return dispatch(Actions.search());
                }}
                onEscape={ () => {
                  return dispatch(Actions.setSearchText(''));
                }}
                onEnter={ () => {}}      // currently not used, TODO
              />
            </div>

            <div className="content-wrapper">
              <Sidebar
                view={ view }
                search={ search }
                map={ map }
                user={ user }
                form={ form }
                resultEntries={ resultEntries }
                ratings={ ratings }
                entries={ server.entries }
                dispatch={ dispatch }
                t={ t }
              />
            </div>
          </div>

          <div className="hide-sidebar">
            <button
              onClick={ () => {
                if (view.showLeftPanel) {
                  return dispatch(Actions.hideLeftPanel());
                } else {
                  return dispatch(Actions.showLeftPanel());
                }
              }}>
              <i className={"fa fa-angle-double-" + (view.showLeftPanel ? 'left' : 'right')}/>
            </button>
          </div>   
          
          <div className={"right " + (rightPanelIsOpen ? 'opened' : 'closed')}>
            <div className="menu-toggle">
              <button onClick={()=>{ return dispatch(Actions.toggleMenu()); }} >
                <span className="pincloud">
                  <i className={"fa fa-" + (rightPanelIsOpen ? 'times' : 'bars')} />
                </span>
              </button>
            </div>
          </div> 

          <div className="center">
            <Map
              marker={ (view.left === V.EDIT || view.left === V.NEW) ? map.marker : null}
              size={ view.left != null ? (rightPanelIsOpen ? 3 : 2) : rightPanelIsOpen ? 1 : 0}
              highlight={ search.highlight }
              center={ mapCenter}
              zoom={ map.zoom}
              category={ form[EDIT.id] ? form[EDIT.id].category ? form[EDIT.id].category.value : null : null}
              entries={ resultEntries}
              ratings={ ratings}
              onClick={ latlng => {
                return dispatch(Actions.setMarker(latlng));
              }}
              onMarkerClick={ id => { 
                dispatch(Actions.setCurrentEntry(id, null)); 
                return dispatch(Actions.showLeftPanel()); 
              }}
              onMoveend={ coordinates => { return dispatch(Actions.onMoveend(coordinates, map.center)); }}
              onZoomend={ coordinates => { return dispatch(Actions.onZoomend(coordinates, map.zoom)); }}
              onLocate={ () => { return dispatch(Actions.showOwnPosition()); }}
              showLocateButton={ true }
            />
          </div>
        </div>
      </div>
    );  
  }
}

Main.propTypes = {
  view :          T.object.isRequired,
  server :        T.object.isRequired,
  map:            T.object.isRequired,
  search :        T.object.isRequired,
  form :          T.object.isRequired,
  url:            T.object.isRequired,
  user :          T.object.isRequired,
  timedActions :  T.object.isRequired
};

module.exports = translate('translation')(pure(Main))