use crate::{Mdl,Msg, components::{Sidebar,LandingPage,Map}};
use seed::prelude::*;

// TODO: import { translate }        from "react-i18next"
// TODO: import NotificationsSystem  from "reapop";
// TODO: import theme                from "reapop-theme-wybo";
// TODO: import Swipeable            from 'react-swipeable'

// TODO: import V                    from "../constants/PanelView"
// TODO: import Modal                from "./pure/Modal"
// TODO: import LandingPage          from "./LandingPage"
// TODO: import { EDIT }             from "../constants/Form"
// TODO: import STYLE                from "./styling/Variables"
// TODO: import { NUM_ENTRIES_TO_SHOW } from "../constants/Search"
// TODO: import mapConst             from "../constants/Map"

pub fn view(mdl: &Mdl) -> impl View<Msg> {

// TODO:     const { dispatch, search, view, server, map, form, url, user, t } = this.props;
// TODO:     const { entries, ratings } = server;

// TODO:     this.changeUrlAccordingToState(url);
// TODO:     const visibleEntries = this.filterVisibleEntries(entries, search);
// TODO:     const loggedIn = user.email ? true : false;

               div![ class!["app"],

// TODO:         <NotificationsSystem theme={theme}/>
// TODO:         {
// TODO:           view.menu ?
                      LandingPage::view(&mdl),
// TODO:               onMenuItemClick={ id => {
// TODO:                 switch (id) {
// TODO:                   case 'map':
// TODO:                     return dispatch(Actions.toggleLandingPage());
// TODO:                   case 'new':
// TODO:                     dispatch(Actions.toggleLandingPage());
// TODO:                     return dispatch(Actions.showNewEntry());
// TODO:                   case 'landing':
// TODO:                     dispatch(Actions.showInfo(null));
// TODO:                     return dispatch(Actions.toggleLandingPage());
// TODO:                   case V.LOGOUT:
// TODO:                     dispatch(Actions.logout());
// TODO:                     return dispatch(Actions.showInfo(V.LOGOUT));
// TODO:                   case V.SUBSCRIBE_TO_BBOX:
// TODO:                     return dispatch(Actions.showSubscribeToBbox());
// TODO:                   default:
// TODO:                     return dispatch(Actions.showInfo(id));
// TODO:                 }
// TODO:               }}
// TODO:               onChange={ (city) => {
// TODO:                 dispatch(Actions.setCitySearchText(city));
// TODO:                 if (city) {
// TODO:                   return dispatch(Actions.searchCity())
// TODO:                 }
// TODO:               }}
// TODO:               content={ view.right }
// TODO:               searchText={ search.city }
// TODO:               loadingSearch={ server.loadingSearch }
// TODO:               searchError={ search.error }
// TODO:               cities={ search.cities }
// TODO:               onEscape={ () => { return dispatch(Actions.setCitySearchText('')); }}
// TODO:               onSelection={ this.onLandingPageCitySelection.bind(this) }
// TODO:               onLogin={ data => {
// TODO:                 var password, email;
// TODO:                 email = data.email, password = data.password;
// TODO:                 return dispatch(Actions.login(email, password));
// TODO:               }}
// TODO:               onRegister={ data => {
// TODO:                 var email, password;
// TODO:                 email = data.email, password = data.password;
// TODO:                 return dispatch(Actions.register(email, password));
// TODO:               }}
// TODO:               loggedIn={ loggedIn}
// TODO:               user={ user}
// TODO:               onDeleteAccount={ () => {
// TODO:                 return dispatch(Actions.deleteAccount());
// TODO:               }}
// TODO:             />
// TODO:             : ""
// TODO:         }
// TODO:         {
// TODO:           view.modal != null ? <Modal view={view} dispatch={dispatch} /> : ""
// TODO:         }
                 div![
                    style!{
                        St::Display => "flex";
                        St::FlexDirection => "row";
                        St::Height => percent(100);
                    },

// TODO:           <SwipeableLeftPanel className={"left " + (view.showLeftPanel && !view.menu ? 'opened' : 'closed')}
// TODO:             onSwipedLeft={ () => this.swipedLeftOnPanel() }>
                      Sidebar::view(&mdl),
// TODO:               view={ view }
// TODO:               search={ search }
// TODO:               map={ map }
// TODO:               server={ server }
// TODO:               user={ user }
// TODO:               form={ form }
// TODO:               entries={entries}
// TODO:               resultEntries={ visibleEntries }
// TODO:               ratings={ ratings }
// TODO:               // LeftPanelentries={ server.entries } never used…?
// TODO:               dispatch={ dispatch }
// TODO:               t={ t }
// TODO:               showAddEntryButton={ true }
// TODO:               showSearchBar={ true }
// TODO:               onTagClick={ this.onTagClick }
// TODO:               tagsClickable={ true }
// TODO:             />
// TODO:           </SwipeableLeftPanel>
// TODO:           <HideSidebarButtonWrapper>
// TODO:             <button
// TODO:               onClick={ () => {
// TODO:                 if (view.showLeftPanel) {
// TODO:                   return dispatch(Actions.hideLeftPanel());
// TODO:                 } else {
// TODO:                   return dispatch(Actions.showLeftPanel());
// TODO:                 }
// TODO:               }}>
// TODO:               <ToggleLeftSidebarIcon icon={"caret-" + (view.showLeftPanel ? 'left' : 'right')} />
// TODO:             </button>
// TODO:           </HideSidebarButtonWrapper>
                 ],

// TODO:         <RightPanel>
// TODO:           <div className="menu-toggle">
// TODO:             <button onClick={()=>{ return dispatch(Actions.toggleMenu()); }} >
// TODO:               <span className="pincloud">
// TODO:                 <MenuFontAwesomeIcon icon={'bars'} />
// TODO:               </span>
// TODO:             </button>
// TODO:           </div>
// TODO:         </RightPanel>
// TODO:
// TODO:         <Swipeable onSwipedRight={ (e, deltaX) => this.swipedRightOnMap(e, deltaX) } className="center">
                   Map::view(&mdl),
// TODO:             marker={ (view.left === V.EDIT || view.left === V.NEW) ? map.marker : null}
// TODO:             highlight={ search.highlight }
// TODO:             center={ map.center}
// TODO:             zoom={ map.zoom}
// TODO:             category={ form[EDIT.id] ? form[EDIT.id].category ? form[EDIT.id].category.value : null : null}
// TODO:             entries={ visibleEntries}
// TODO:             ratings={ ratings}
// TODO:             onClick={ (event) => {
// TODO:               if(event.originalEvent.srcElement.tagName.toLowerCase() === 'path'){
// TODO:                 return false;
// TODO:               } else if(view.left === V.NEW || view.left === V.EDIT){
// TODO:                 return dispatch(Actions.setMarker(event.latlng));
// TODO:               } else {
// TODO:                 //back to overview
// TODO:                 dispatch(Actions.setCurrentEntry(null, null));
// TODO:                 dispatch(Actions.showSearchResults());
// TODO:                 dispatch(Actions.setCenterInUrl(map.center));
// TODO:
// TODO:                 return dispatch(Actions.hideLeftPanelOnMobile());
// TODO:               }
// TODO:             }}
// TODO:             onMarkerClick={ (id) => {
// TODO:               dispatch(Actions.setCurrentEntry(id, null));
// TODO:               return dispatch(Actions.showLeftPanel());
// TODO:             }}
// TODO:             onMoveend={ coordinates => { return dispatch(Actions.onMoveend(coordinates, map.center)); }}
// TODO:             onZoomend={ coordinates => { return dispatch(Actions.onZoomend(coordinates, map.zoom)); }}
// TODO:             onLocate={ () => { return dispatch(Actions.showOwnPosition()); }}
// TODO:             showLocateButton={ true }
// TODO:           />
// TODO:         </Swipeable>
               ]
}


// TODO:   filterVisibleEntries(entries, search){
// TODO:     return search.entryResults.filter(e => entries[e.id])
// TODO:       .map(e => entries[e.id])
// TODO:       .filter(this.categoryIsEnabled(search.categories))
// TODO:       .concat(search.eventResults)
// TODO:       .slice(0, NUM_ENTRIES_TO_SHOW);
// TODO:   }
// TODO:
// TODO:   categoryIsEnabled(enabledCategories){
// TODO:     return (entry) => {
// TODO:       return entry.categories.some(cat => enabledCategories.includes(cat));
// TODO:     }
// TODO:   }
// TODO:
// TODO:   onLandingPageCitySelection(city){
// TODO:     const { dispatch } = this.props;
// TODO:     if (city) {
// TODO:       dispatch(Actions.setCenter({
// TODO:         lat: Number(city.lat),
// TODO:         lng: Number(city.lon)
// TODO:       }));
// TODO:       dispatch(Actions.setZoom(mapConst.CITY_DEFAULT_ZOOM));
// TODO:       dispatch(Actions.toggleLandingPage());
// TODO:       dispatch(Actions.showSearchResults());
// TODO:       dispatch(Actions.setSearchText(''));
// TODO:       return dispatch(Actions.finishCitySearch());
// TODO:     }
// TODO:   }
// TODO:
// TODO:   changeUrlAccordingToState(urlState){
// TODO:     if (urlState.hash !== window.location.hash) {
// TODO:       console.log("URL CHANGE FROM APP: " + window.location.hash + " --> " + urlState.hash);
// TODO:       window.history.pushState(null, null, window.location.pathname + urlState.hash);
// TODO:     }
// TODO:   }
// TODO:
// TODO:   escFunction(event){
// TODO:     if(event.keyCode === 27) { //ESC
// TODO:       const { view, dispatch}  = this.props
// TODO:       if(view.menu) return dispatch(Actions.toggleLandingPage())
// TODO:       if(!view.showLeftPanel) return dispatch(Actions.showLeftPanel());
// TODO:       if(view.left === V.ENTRY) {
// TODO:         dispatch(Actions.setCurrentEntry(null, null));
// TODO:         dispatch(Actions.showSearchResults());
// TODO:         return dispatch(Actions.setCenterInUrl(this.props.map.center));
// TODO:       }
// TODO:       if(view.left === V.RESULT){
// TODO:         dispatch(Actions.setSearchText(''))
// TODO:         return dispatch(Actions.search())
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:
// TODO:   componentDidMount(){
// TODO:     document.addEventListener("keydown", (e) => this.escFunction(e), false);
// TODO:   }
// TODO:
// TODO:   componentWillUnmount(){
// TODO:     document.removeEventListener("keydown");
// TODO:   }
// TODO:
// TODO:   swipedLeftOnPanel() {
// TODO:     this.props.dispatch(Actions.hideLeftPanel())
// TODO:   }
// TODO:
// TODO:   swipedRightOnMap(e, deltaX) {
// TODO:     if( e.nativeEvent === undefined || e.nativeEvent.changedTouches === undefined) return true
// TODO:     if(e.nativeEvent.changedTouches[0].pageX + deltaX < 26 ) this.props.dispatch(Actions.showLeftPanel())
// TODO:   }
// TODO:
// TODO:   onTagClick = (t) => {
// TODO:     this.props.dispatch(Actions.showSearchResults());
// TODO:     this.props.dispatch(Actions.setSearchText('#'+t));
// TODO:     this.props.dispatch(Actions.search());
// TODO:   };
// TODO:
// TODO: }
// TODO:
// TODO: Main.propTypes = {
// TODO:   view :          T.object.isRequired,
// TODO:   server :        T.object.isRequired,
// TODO:   map:            T.object.isRequired,
// TODO:   search :        T.object.isRequired,
// TODO:   form :          T.object.isRequired,
// TODO:   url:            T.object.isRequired,
// TODO:   user :          T.object.isRequired,
// TODO:   timedActions :  T.object.isRequired
// TODO: };
// TODO:
// TODO: module.exports = translate('translation')(Main)
// TODO:
// TODO: // Create the keyframes
// TODO: const fadein = keyframes`
// TODO:   from { opacity: 0; }
// TODO:   to { opacity: 1; }
// TODO: `
// TODO:
// TODO: import pincloud from "../img/pincloud.png";
// TODO:
// TODO: const MenuFontAwesomeIcon = styled(FontAwesomeIcon)`
// TODO:   padding-right: .45rem;
// TODO: `;
// TODO:
// TODO: const ToggleLeftSidebarIcon = styled(FontAwesomeIcon) `
// TODO:   margin-right: 0.3em;
// TODO:   width: 0.7em;
// TODO: `
// TODO:
// TODO: const SwipeableLeftPanel = styled(Swipeable)`
// TODO:   position: relative;
// TODO:   height: 100%;
// TODO:   z-index: 2;
// TODO:   order: -1;
// TODO:   overflow-y: hidden;
// TODO:   float: left;
// TODO:   background-color: #fff;
// TODO:   box-shadow: 1px 1px 5px rgba(0,0,0,.5);
// TODO:   .content {
// TODO:     width: 100%;
// TODO:     box-sizing: border-box;
// TODO:     padding-bottom: 1rem;
// TODO:     display: flex;
// TODO:     flex-direction: column;
// TODO:   }
// TODO:   &.closed {
// TODO:     width: 0;
// TODO:   }
// TODO:   &.opened {
// TODO:     max-width: 380px;
// TODO:     width: 90%;
// TODO:     .menu {
// TODO:       width: 100%;
// TODO:     }
// TODO:   }
// TODO:   .search {
// TODO:     &.closed {
// TODO:       display: none;
// TODO:     }
// TODO:     .main-categories {
// TODO:       height: 2.1em;
// TODO:     }
// TODO:   }
// TODO: `
// TODO:
// TODO: const RightPanel = styled.div `
// TODO:   position: absolute;
// TODO:   top: 15px;
// TODO:   right: 0;
// TODO:   background: #fff;
// TODO:   color: ${STYLE.coal};
// TODO:
// TODO:   .menu-toggle button {
// TODO:     outline: none;
// TODO:     position: relative;
// TODO:     z-index: 1;
// TODO:     top: 0;
// TODO:     right: 0;
// TODO:     font-size: 15pt;
// TODO:     text-transform: uppercase;
// TODO:     text-align: right;
// TODO:     color: ${STYLE.darkGray};
// TODO:     background: #fff;
// TODO:     border-radius: 0.2em 0 0 0.2em;
// TODO:     border: none;
// TODO:     padding: 0.2em;
// TODO:     box-shadow: 0 1px 3px 0.2px rgba(0,0,0,0.5);
// TODO:     &:hover {
// TODO:       color: ${STYLE.coal};
// TODO:       box-shadow: 0 1px 3px 0.2px #000;
// TODO:     }
// TODO:     .pincloud {
// TODO:       display: inline-block;
// TODO:       width: 3.5em;
// TODO:       height: 1.2em;
// TODO:       background-position: left;
// TODO:       background-image: url(${pincloud});
// TODO:       background-repeat: no-repeat;
// TODO:       background-size: 50%;
// TODO:     }
// TODO:     i {
// TODO:       margin-right: 0.3em;
// TODO:     }
// TODO:   }
// TODO: `
// TODO:
// TODO: const HideSidebarButtonWrapper = styled.div `
// TODO:   position: relative;
// TODO:   z-index: 2;
// TODO:   height: 0;
// TODO:   >button {
// TODO:     position: relative;
// TODO:     padding: 10px 3px 10px 7px;
// TODO:     top: 72px;
// TODO:     font-size: 13pt;
// TODO:     color: ${STYLE.darkGray};
// TODO:     background: #fff;
// TODO:     border: none;
// TODO:     border-left: 1px solid ${STYLE.lightGray};
// TODO:     border-radius: 0 0.2em 0.2em 0;
// TODO:     box-shadow: 2px 1px 4px 0 rgba(0,0,0,.4);
// TODO:     &:hover {
// TODO:       color: ${STYLE.coal};
// TODO:       box-shadow: px 2px 2px 0.3px #000;
// TODO:     }
// TODO:     i {
// TODO:       margin-right: 0.3em;
// TODO:     }
// TODO:   }
// TODO: `
