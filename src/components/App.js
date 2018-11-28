// Copyright (c) 2015 - 2017 Markus Kohlhase <mail@markus-kohlhase.de>
import "./styling/Stylesheets"

import React, { Component } from "react"
import T                    from "prop-types"
import V                    from "../constants/PanelView"
import C                    from "../constants/Categories"
import Actions              from "../Actions"
// import CityList             from "./CityList"
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
import "./styling/Icons"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import styled, { keyframes, createGlobalStyle } from "styled-components";
import STYLE                from "./styling/Variables"
import Swipeable from 'react-swipeable'


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

  swipedLeftOnPanel() {
    this.props.dispatch(Actions.hideLeftPanel())
  }

  swipedRightOnMap(e, deltaX) {
    if( e.nativeEvent === undefined || e.nativeEvent.changedTouches === undefined) return true
    if(e.nativeEvent.changedTouches[0].pageX + deltaX < 26 ) this.props.dispatch(Actions.showLeftPanel())
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
    const mapCenter = map.center;
    const loggedIn = user.username ? true : false;
    
    return (
      <StyledApp className="app">
        <GlobalStyle />
        <MainWrapper className="main">
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

          <Swipeable onSwipedLeft={ () => this.swipedLeftOnPanel() }>
            <LeftPanel className={"left " + (view.showLeftPanel && !view.menu ? 'opened' : 'closed')}>
              <div className={"search " + ((view.left === V.RESULT) ? 'open' : 'closed')}>
                <SearchBar
                  searchText={search.text}
                  categories={search.categories}
                  type="integrated"
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
                  loading={ server.loadingSearch }
                />
              </div>

              <div className="content-wrapper">
                <Sidebar
                  view={ view }
                  search={ search }
                  map={ map }
                  user={ user }
                  form={ form }
                  entries={entries}
                  resultEntries={ resultEntries }
                  ratings={ ratings }
                  // LeftPanelentries={ server.entries } never used…?
                  dispatch={ dispatch }
                  t={ t }
                />
              </div>
            </LeftPanel>
          </Swipeable>

          <HiddenSidebar>
            <button
              onClick={ () => {
                if (view.showLeftPanel) {
                  return dispatch(Actions.hideLeftPanel());
                } else {
                  return dispatch(Actions.showLeftPanel());
                }
              }}>
              <ToggleLeftSidebarIcon icon={"caret-" + (view.showLeftPanel ? 'left' : 'right')} />
            </button>
          </HiddenSidebar>   
          
          <RightPanel>
            <div className="menu-toggle">
              <button onClick={()=>{ return dispatch(Actions.toggleMenu()); }} >
                <span className="pincloud">
                  <MenuFontAwesomeIcon icon={'bars'} />
                </span>
              </button>
            </div>
          </RightPanel> 

          <Swipeable onSwipedRight={ (e, deltaX) => this.swipedRightOnMap(e, deltaX) } className="center">
            <Map
              marker={ (view.left === V.EDIT || view.left === V.NEW) ? map.marker : null}
              highlight={ search.highlight }
              center={ mapCenter}
              zoom={ map.zoom}
              category={ form[EDIT.id] ? form[EDIT.id].category ? form[EDIT.id].category.value : null : null}
              entries={ resultEntries}
              ratings={ ratings}
              onClick={ (event) => {
                if(event.originalEvent.srcElement.tagName.toLowerCase() === 'path') return false;
                
                //back to overview
                dispatch(Actions.setCurrentEntry(null, null));
                dispatch(Actions.showSearchResults());
                dispatch(Actions.setCenterInUrl(mapCenter));

                dispatch(Actions.hideLeftPanelOnMobile());
                return dispatch(Actions.setMarker(event.latlng));
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
          </Swipeable>
        </MainWrapper>
      </StyledApp>
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

/* Moved all styles here. TODO: Move to right components */


const GlobalStyle = createGlobalStyle`
  
  @media only screen and (max-width: 600px) {
    body { font-size:80%;}
  }

  h1, h2, h3, h4, h5, h6, h7 {
    font-family: ${STYLE.headerFont};
    font-weight: 500;
  }
  
  html, button, input, select, textarea {
    font-family: ${STYLE.bodyFont};
  }
`;


// Create the keyframes
const fadein = keyframes`
  from { opacity: 0; }
  to { opacity: 1; }
`

import pincloud from "../img/pincloud.png";


const MainWrapper = styled.div `
  height: 100vh;
`

const MenuFontAwesomeIcon = styled(FontAwesomeIcon)`
  padding-right: .45rem;
`;

const ToggleLeftSidebarIcon = styled(FontAwesomeIcon) `
  margin-right: 0.3em;
  width: 0.7em;
`

const LeftPanel = styled.div `
  position: relative;
  z-index: 2;
  order: -1;
  height: 100vh;
  overflow-y: hidden;
  float: left;
  background-color: #fff;
  box-shadow: 1px 1px 5px rgba(0,0,0,.5);
  .content-wrapper {
    .result {
      box-sizing: border-box;
      padding-bottom: 30px;
      overflow: auto;
    }
    .content-above-buttons {
      overflow-y: scroll;
      overflow: auto;
      height: calc(100vh - 42px);
      box-sizing: border-box;
      padding-bottom: 30px;
    }
    .content {
      overflow-y: scroll;
      overflow: auto;
      height: 100vh;
      width: 100%;
      box-sizing: border-box;
      padding-bottom: 1rem;
      position: absolute;
      display: flex;
      flex-direction: column;
    }
  }
  &.closed {
    width: 0;
  }
  &.opened {
    max-width: 380px;
    width: 90%;
    .menu {
      width: 100%;
    }
  }
  .search {
    &.closed {
      display: none;
    }
    .main-categories {
      height: 2.1em;
    }
  }
  nav {
    &.menu {
      z-index: 10;
      padding: 0;
      margin: 0;
      background: ${STYLE.coal};
      text-align: center;
      position: absolute;
      bottom: 0;
      li {
        cursor: pointer;
        box-sizing: border-box;
        font-weight: normal;
        padding: 0.3em;
        font-size: 1.2em;
        border: none;
        color: ${STYLE.lightGray};
        background: transparent;
        border-top: 4px solid transparent;
        border-bottom: 4px solid transparent;
        &:hover {
          color: #fff;
          border-bottom: 4px solid #fff;
        }
        i {
          margin-right: 0.5em;
        }
      }
    }
    &.menu-top {
      top: 0;
      display: flex;
      flex-direction: row;
      padding: 9pt 6pt 8pt 7pt;
    }
  }
`

const RightPanel = styled.div `
  position: absolute;
  top: 15px;
  right: 0;
  background: #fff;
  color: ${STYLE.coal};

  .menu-toggle button {
    outline: none;
    position: relative;
    z-index: 1;
    top: 0;
    right: 0;
    font-size: 15pt;
    text-transform: uppercase;
    text-align: right;
    color: ${STYLE.darkGray};
    background: #fff;
    border-radius: 0.2em 0 0 0.2em;
    border: none;
    padding: 0.2em;
    box-shadow: 0 1px 3px 0.2px rgba(0,0,0,0.5);
    &:hover {
      color: ${STYLE.coal};
      box-shadow: 0 1px 3px 0.2px #000;
    }
    .pincloud {
      display: inline-block;
      width: 3.5em;
      height: 1.2em;
      background-position: left;
      background-image: url(${pincloud});
      background-repeat: no-repeat;
      background-size: 50%;
    }
    i {
      margin-right: 0.3em;
    }
  }
`

const HiddenSidebar = styled.div `
  position: relative;
  z-index: 2;
  height: 0;
  >button {
    position: relative;
    padding: 10px 3px 10px 7px;
    top: 72px;
    font-size: 13pt;
    color: ${STYLE.darkGray};
    background: #fff;
    border: none;
    border-left: 1px solid ${STYLE.lightGray};
    border-radius: 0 0.2em 0.2em 0;
    box-shadow: 2px 1px 4px 0 rgba(0,0,0,.4);
    &:hover {
      color: ${STYLE.coal};
      box-shadow: px 2px 2px 0.3px #000;
    }
    i {
      margin-right: 0.3em;
    }
  }
`

const StyledApp = styled.div `

  background: #fff;
  min-height: 100vh;
  height: 100vh;

  .tutorial {
    margin-bottom: 3em;
    img { width: 100%; }
  

  button {
    font-family: ${STYLE.bodyFont};
    &.pure-button i {
      margin-right: 0.5em;
    }
  }

  .fa {
    font-family: "FontAwesome" !important;
  }

  .pure-g [class *= "pure-u"] {
    font-family: ${STYLE.bodyFont};
  }

  /* ============================== */
  /* SCROLLBAR */
  ::-webkit-scrollbar {
    background-color: #eee;
  }
  ::-webkit-scrollbar-thumb {
    /* //Instead of the line below you could use @include border-radius($radius, $vertical-radius) */
    border-radius: 0;
    background-color: #ccc;
  }

  .pure-menu-list {
    margin: 0 50px;
  }

  .pure-menu-link:hover {
    color: #000;
  }


  label span.desc {
    color: ${STYLE.darkGray};
    font-size: 0.8em;
    margin-left: 0.5em;
  }
  legend span.desc {
    color: ${STYLE.darkGray};
    font-size: 0.8em;
    margin-left: 0.5em;
  }



  /* ======= FORM */
  form {
    div.err {
      color: #f44;
      font-size: 0.9em;
    }
    input[type="text"].err {
      border-color: #f44;
    }
    textarea.err {
      border-color: #f44;
    }
    select.err {
      border-color: #f44;
    }
  }
  /* ======= */

  /* ======= BANNER */
  .banner {
    position: relative;
    z-index: 10;
    color: #eee;
    text-align: center;
    padding-top: 1em;
    padding-bottom: 1em;
    .banner-link {
      color: #000;
    }
  }
  /* ======= */

  /* ======= CHEVRON */
  div.chevron {
    position: relative;
    color: ${STYLE.lightGray};
    i {
      position: absolute;
      display: inline-table;
      top: 0;
      bottom: 0;
      margin: auto;
    }
  }
  /* ======= */


  /* ======= MISC */

  .close-button {
    text-align: center;
    margin: 0;
    padding: 1em;
    button {
      margin: 0 5px;
    }
  }
  .message {
    white-space: pre-wrap;
    margin: 0;
    padding: 1em;
  }
  .new-rating-form {
    margin: 2em 1.8em 1.8em 1.8em;

    .radio-button {
      margin: 0.2em 0.3em 0.2em 0;
    }
    .form-heading {
      font-weight: bold;
      margin-top: 0.5em;
      margin-bottom: 0;
    }
    .rating-context-explanation {
      margin-top: 0.5em;
      margin-bottom: 0.5em;
      font-style: italic;
    }
    .title {
      margin-bottom: 0.5em;
    }
  }
  .optional::placeholder {
    color: #777;
  }
  input, textarea, select {
    box-shadow: none !important;
    border-radius: 3px !important;
  }
  .info {
    .landing-img {
      width: 70%;
    }
    h3 {
      margin-top: 50px;
    }
  }
  .license input {
    margin-top: 0.7em;
  }
`

