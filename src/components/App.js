import "./styling/Stylesheets"
import "./styling/Icons"

import React, { Component }           from "react"
import update                         from 'immutability-helper';
import T                              from "prop-types"
import { translate }                  from "react-i18next"
import NotificationsSystem            from "reapop";
import theme                          from "reapop-theme-wybo";
import { FontAwesomeIcon }            from '@fortawesome/react-fontawesome'
import Swipeable                      from 'react-swipeable'
import styled, { createGlobalStyle }  from "styled-components";
import isString from "lodash/isString"

import V                       from "../constants/PanelView"
import * as Actions            from "../Actions"
import Modal                   from "./pure/Modal"
import Map                     from "./Map"
import Sidebar                 from "./Sidebar"
import LandingPage             from "./LandingPage"
import { EDIT }                from "../constants/Form"
import STYLE, { pink }         from "./styling/Variables"
import { NUM_ENTRIES_TO_SHOW } from "../constants/Search"
import mapConst                from "../constants/Map"
import {getIcon}               from "../customizations/icons"
import i18n                    from "../i18n"
import {initialize}            from "redux-form"


class Main extends Component {

  state = {
    openRightPanel: false,
  }

  toggleRightPanel = () => (
    this.setState(prevState => update(
      prevState, {openRightPanel: {$set: !prevState.openRightPanel}})
    )
  )

  render(){
    const { dispatch, customizations, search, view, server, map, form, url, user, t, lng } = this.props;
    const {openRightPanel} = this.state;

    let language = "de";
    if (isString(lng)) {
      language = lng.split("-")[0]
    }

    const { entries, ratings } = server;

    this.changeUrlAccordingToState(url);
    const visibleEntries = this.filterVisibleEntries(entries, search);
    const loggedIn = user.email ? true : false;

    return (
      <StyledApp fonts={customizations.fonts} className="app">
        <GlobalStyle fonts={customizations.fonts}/>
        <NotificationsSystem theme={theme}/>
        {
          view.menu ?
            <LandingPage
              fonts={customizations.fonts}
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
              onChange={ (city) => {
                dispatch(Actions.setCitySearchText(city));
                if (city) {
                  return dispatch(Actions.searchCity())
                }
              }}
              content={ view.right }
              searchText={ search.city }
              loadingSearch={ server.loadingSearch }
              searchError={ search.error }
              cities={ search.cities }
              onEscape={ () => { return dispatch(Actions.setCitySearchText('')); }}
              onSelection={ this.onLandingPageCitySelection.bind(this) }
              onLogin={ data => {
                var password, email;
                email = data.email, password = data.password;
                return dispatch(Actions.login(email, password));
              }}
              onRegister={ data => {
                var email, password;
                email = data.email, password = data.password;
                return dispatch(Actions.register(email, password));
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

        <LeftPanelAndHideSidebarButton>
          <SwipeableLeftPanel className={"left " + (view.showLeftPanel && !view.menu ? 'opened' : 'closed')}
            onSwipedLeft={ () => this.swipedLeftOnPanel() }>
            <Sidebar
              view={ view }
              search={ search }
              map={ map }
              server={ server }
              user={ user }
              form={ form }
              entries={entries}
              resultEntries={ visibleEntries }
              ratings={ ratings }
              // LeftPanelentries={ server.entries } never used…?
              dispatch={ dispatch }
              t={ t }
              customizations={ customizations }
              onTagClick={ this.onTagClick }
              tagsClickable={ true }
            />
          </SwipeableLeftPanel>
          <HideSidebarButtonWrapper>
            <button
              tabIndex={-1}
              aria-label="open close button for left sidebar"
              onClick={ () => {
                if (view.showLeftPanel) {
                  return dispatch(Actions.hideLeftPanel());
                } else {
                  return dispatch(Actions.showLeftPanel());
                }
              }}>
              <ToggleLeftSidebarIcon icon={"caret-" + (view.showLeftPanel ? 'left' : 'right')} />
            </button>
          </HideSidebarButtonWrapper>
        </LeftPanelAndHideSidebarButton>

        { customizations.burgerMenu.show &&
          <RightPanel customizations={customizations.burgerMenu}>
            <div className="menu-toggle">
              <button tabIndex={15} className="toggleButton" onClick={this.toggleRightPanel}>
                <img
                  alt="right panel icon"
                  className="panelIcon"
                  src={getIcon('burger', customizations.name).options.iconUrl}
                />
                <MenuFontAwesomeIcon icon={'bars'}/>
              </button>
            </div>
            {openRightPanel &&
            (<div className="container">
              <u>
                {
                  customizations.burgerMenu.links.map(item => (
                    <li>
                      <a target={item.policy === "newTab" ? "_blank" : ""} rel="noopener noreferrer" href={item.link}>
                        {
                          item.translation[language] ?
                            item.translation[language] :
                            item.translation['de']
                        }
                      </a>
                      {
                        item.icon && (
                          <FontAwesomeIcon className="icon" icon={item.icon}/>
                        )
                      }
                    </li>
                  ))
                }
              </u>

              <div className="language-wrapper">
                <a
                  onClick={() => {
                    i18n.changeLanguage('de');
                  }}
                  href="#"
                  className={"language-link" + ((i18n.language.includes("de")) ? " selected" : " unselected")}
                >
                  de
                </a>
                {" "}
                <a
                  onClick={() => {
                    i18n.changeLanguage('en');
                  }}
                  href="#"
                  className={"language-link" + ((i18n.language.includes("en")) ? " selected" : " unselected")}
                >
                  en
                </a>
                {" "}
                <a
                  onClick={() => {
                    i18n.changeLanguage('es');
                  }}
                  href="#"
                  className={"language-link" + ((i18n.language.includes("es")) ? " selected" : " unselected")}
                >
                  es
                </a>
              </div>
            </div>)
            }
          </RightPanel>
        }
        <Swipeable onSwipedRight={ (e, deltaX) => this.swipedRightOnMap(e, deltaX) } className="center">
          <Map
            customizations={customizations}
            marker={ (view.left === V.EDIT || view.left === V.NEW) ? map.marker : null}
            highlight={ search.highlight }
            center={ map.center}
            zoom={ map.zoom}
            category={ form[EDIT.id] ? form[EDIT.id].category ? form[EDIT.id].category.value : null : null}
            entries={ visibleEntries}
            ratings={ ratings}
            onClick={ (event) => {
              if(event.originalEvent.srcElement.tagName.toLowerCase() === 'path'){
                return false;
              } else if(view.left === V.NEW || view.left === V.EDIT){
                return dispatch(Actions.setMarker(event.latlng));
              } else {
                //back to overview
                dispatch(Actions.setCurrentEntry(null, null));
                dispatch(Actions.showSearchResults());
                dispatch(Actions.setCenterInUrl(map.center));

                return dispatch(Actions.hideLeftPanelOnMobile());
              }
            }}
            onMarkerClick={ (id) => {
              dispatch(Actions.setCurrentEntry(id, null));
              return dispatch(Actions.showLeftPanel());
            }}
            onMoveend={ coordinates => { return dispatch(Actions.onMoveend(coordinates, map.center)); }}
            onZoomend={ coordinates => { return dispatch(Actions.onZoomend(coordinates, map.zoom)); }}
            onLocate={ () => { return dispatch(Actions.showOwnPosition()); }}
            showLocateButton={ true }
          />
        </Swipeable>
      </StyledApp>
    );
  }

  filterVisibleEntries(entries, search){
    var val = search.entryResults.filter(e => entries[e.id])
      .map(e => entries[e.id])
      .filter(this.categoryIsEnabled(search.categories))
      .concat(search.eventResults)
      .slice(0, NUM_ENTRIES_TO_SHOW);
    if (search.current && entries[search.current] && !val.find(e => e.id == search.current)) {
      val = val.concat(entries[search.current]);
    }
    return val;
  }

  categoryIsEnabled(enabledCategories){
    return (entry) => {
      return entry.categories.some(cat => enabledCategories.includes(cat));
    }
  }

  onLandingPageCitySelection(city){
    const { dispatch } = this.props;
    if (city) {
      dispatch(Actions.setCenter({
        lat: Number(city.lat),
        lng: Number(city.lon)
      }));
      dispatch(Actions.setZoom(mapConst.CITY_DEFAULT_ZOOM));
      dispatch(Actions.toggleLandingPage());
      dispatch(Actions.showSearchResults());
      dispatch(Actions.setSearchText(''));
      return dispatch(Actions.finishCitySearch());
    }
  }

  changeUrlAccordingToState(urlState){
    if (urlState.hash !== window.location.hash) {
      history.replaceState(null, null, window.location.pathname + urlState.hash);
    }
  }

  onKeydown(event){
    const { view, dispatch, map}  = this.props
    const {zoom} = map

    if(event.altKey && event.keyCode === 107) { // +
      dispatch(Actions.setZoom(zoom+1))
    }

    if(event.altKey && event.keyCode === 109) { // -
      dispatch(Actions.setZoom(zoom-1))

    }

    if(event.keyCode === 38) { // Up Arrow
      const {activeElement} = document
      if (activeElement.parentElement.id === "result-list") {
        const {previousElementSibling} = activeElement
        if (previousElementSibling) {
          previousElementSibling.focus()
        }
      }
    }

    if(event.keyCode === 40) { // Down Arrow
      const {activeElement} = document
      if (activeElement.parentElement.id === "result-list") {
        const {nextElementSibling} = activeElement
        if (nextElementSibling) {
          nextElementSibling.focus()
        }
      }
    }

    if(event.keyCode === 27) { //ESC
      // if a form is opened for editing or adding a new entry close it
      if(view.left === V.NEW || view.left === V.EDIT) {
        dispatch(initialize(EDIT.id, {}, EDIT.fields));
        dispatch(view.left === V.EDIT ? Actions.cancelEdit() : Actions.cancelNew());
        return
      }

      if(view.menu) return dispatch(Actions.toggleLandingPage())
      if(!view.showLeftPanel) return dispatch(Actions.showLeftPanel());
      if(view.left === V.ENTRY) {
        dispatch(Actions.setCurrentEntry(null, null));
        dispatch(Actions.showSearchResults());
        return dispatch(Actions.setCenterInUrl(this.props.map.center));
      }
      if(view.left === V.RESULT){
        dispatch(Actions.setSearchText(''))
        return dispatch(Actions.search())
      }
    }

    if(event.ctrlKey && event.keyCode === 13) { // ctrl + enter
      if(view.left === V.NEW || view.left === V.EDIT) {
        document.getElementById("license-agreement-checkbox").focus()
      }
    }
  }

  componentDidMount(){
    document.addEventListener("keydown", (e) => this.onKeydown(e), false);
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

  onTagClick = (t) => {
    this.props.dispatch(Actions.showSearchResults());
    this.props.dispatch(Actions.setSearchText('#'+t));
    this.props.dispatch(Actions.search());
  };

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

export default translate('translation')(Main)

/* Moved all styles here. TODO: Move to right components */
const GlobalStyle = createGlobalStyle`

  @media only screen and (max-width: 600px) {
    body { font-size:80%;}
  }

  h1, h2, h3, h4, h5, h6, h7 {
    font-family: ${props => props.fonts.headerFont || STYLE.headerFont};
  }

  html, button, input, select, textarea {
    font-family: ${props => props.fonts.bodyFont || STYLE.bodyFont};
  }
`;

const MenuFontAwesomeIcon = styled(FontAwesomeIcon)`
  padding-right: .45rem;
`;

const ToggleLeftSidebarIcon = styled(FontAwesomeIcon) `
  margin-right: 0.3em;
  width: 0.7em;
`

const SwipeableLeftPanel = styled(Swipeable)`
  position: relative;
  height: 100%;
  z-index: 2;
  order: -1;
  overflow-y: hidden;
  float: left;
  background-color: #fff;
  box-shadow: 1px 1px 5px rgba(0,0,0,.5);
  .content {
    width: 100%;
    box-sizing: border-box;
    padding-bottom: 1rem;
    display: flex;
    flex-direction: column;
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
`

const RightPanel = styled.div `
  position: absolute;
  top: 15px;
  right: 0;
  background: #fff;
  color: ${STYLE.coal};
  display: flex;
  flex-direction: column;
  justify-content: flex-end;

  // .menu-toggle {
  //   display: flex;
  //   flex-direction: column;
  //   justify-content: flex-end;
  // }

  .container {
    z-index: 1;
    background-color: #fff;
    color: ${STYLE.darkGray};
    margin-top: 5px;
    margin-right: 5px;
    padding: 5px;
    border-radius: 0.2em;
    border: none;
    box-shadow: 0 1px 3px 0.2px rgba(0,0,0,0.5);
  }

  .container u {
    text-decoration: none;
    list-style-type: none;
  }

  .container li {
    margin-bottom: 7px;
    display: flex;
    justify-content: space-between;
  }

  .container .icon {
    margin-left: 25px;
  }

  .container li:last-child {
    margin-bottom: 0px;
  }

  .container a {
    text-decoration: none;
    color: inherit;
  }

  .container .language-wrapper {
    display: flex;
    justify-content: space-around;
    margin-top: 8px;
  }

  .container .language-link {
    margin: 3pt;
    &.selected {
      color: ${props => props.customizations.languageSelectors.selected.color};
      pointer-events: none;
    }
    &.unselected {
      color: ${props => props.customizations.languageSelectors.unselected.color};
      &:hover {
        color: ${props => props.customizations.languageSelectors.unselected.hover};
      }
    }
  }

  .menu-toggle {
    display: flex;
    justify-content: flex-end;
  }

  .menu-toggle .toggleButton {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
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
    .panelIcon {
      height: 25px;
      margin-right: 8px;
    }
    i {
      margin-right: 0.3em;
    }
  }
`

const LeftPanelAndHideSidebarButton = styled.div`
  display: flex;
  flex-direction: row;
  height: 100%;
`

const HideSidebarButtonWrapper = styled.div `
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

  /*
  make the app fit the screen/iframe exactly (important for overflow:scroll,
  but can't use height:100vh since that would break iframes smaller than 100vh):
  */
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;

  .tutorial {
    margin-bottom: 3em;
    img { width: 100%; }
  }

  /* TYPO */
  @media only screen and(max-width: 600px) {
    body {
      font-size: 80%;
    }
  }

  input, select, textarea, button {
    font-family: ${props => props.fonts.bodyFont || STYLE.bodyFont};
  }

  h1, h2, h3, h4, h5, h6, h7 {
    font-family: ${props => props.fonts.headerFont || STYLE.headerFont};
    font-weight: 500;
    margin-block-end: 2px;
  }

  button {
    font-family: ${props => props.fonts.bodyFont || STYLE.bodyFont};
    &.pure-button i {
      margin-right: 0.5em;
    }
  }

  .button-secondary {
    color: white;
    border-radius: 4px;
    text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
    background: rgb(66, 184, 221); /* this is a light blue */
  }
  
  .button-warning {
    color: white;
    border-radius: 4px;
    text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
    background: ${pink}
  }

  .fa {
    font-family: "FontAwesome" !important;
  }

  .pure-g [class *= "pure-u"] {
    font-family: ${props => props.fonts.bodyFont || STYLE.bodyFont};
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

  .pure-menu-serverlist {
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
    div.warn {
      color: #ff9966;
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
    display: flex;
    justify-content: space-between;
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
      font-weight: 500 !important;
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
  
 .hidden {
    display: none;
  }

  /* ======= leaflet */
  .leaflet-div-icon {
    background: none;
    border: none;
  }
`
