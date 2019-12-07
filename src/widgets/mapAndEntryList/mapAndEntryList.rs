// TODO: import "../../components/styling/Stylesheets"
// TODO: 
// TODO: import React         from "react";
// TODO: import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
// TODO: import URLs          from "../../constants/URLs";
// TODO: import i18n          from "../../i18n";
// TODO: import Map           from "../../components/Map";
// TODO: import Sidebar       from "../../components/Sidebar";
// TODO: import Swipeable     from 'react-swipeable'
// TODO: import STYLE         from "../../components/styling/Variables";
// TODO: import V             from "../../constants/PanelView";
// TODO: import { translate } from "react-i18next"
// TODO: import Actions       from "../../Actions";
// TODO: import logo          from "../../img/logo_without_slogan.png";
// TODO: import styled, { createGlobalStyle } from "styled-components";
// TODO: 
// TODO: module.exports = translate('translation')((props) => {
// TODO:   
// TODO:   const { map, server, form, search, view, t, dispatch } = props;
// TODO:   const { entries, ratings } = server;
// TODO:   const resultEntries = search.entryResults.filter(e => entries[e.id]).map(e => entries[e.id])
// TODO:     .concat(search.eventResults);
// TODO: 
// TODO:   return (
// TODO:     <WidgetWrapper>
// TODO:       <GlobalStyle />
// TODO:       <LeftPanelAndHideSidebarButton>
// TODO:         <SwipeableLeftPanel className={"left " + (view.showLeftPanel ? 'opened' : 'closed')}
// TODO:           onSwipedLeft={ () => this.swipedLeftOnPanel() }>
// TODO:           <Sidebar
// TODO:             view={ view }
// TODO:             search={ search }
// TODO:             map={ map }
// TODO:             user={ null }
// TODO:             server={ server }
// TODO:             form={ form }
// TODO:             entries={ entries }
// TODO:             resultEntries={ resultEntries }
// TODO:             ratings={ ratings }
// TODO:             dispatch={ dispatch } // TODO
// TODO:             t={ t }
// TODO:             showAddEntryButton={ false }
// TODO:             showSearchBar={ false }
// TODO:             onTagClick={ () => {} }
// TODO:             tagsClickable={ false }
// TODO:           />
// TODO:         </SwipeableLeftPanel>
// TODO:         <HideSidebarButtonWrapper>
// TODO:           <button
// TODO:             onClick={ () => {
// TODO:               if (view.showLeftPanel) {
// TODO:                 return dispatch(Actions.hideLeftPanel());
// TODO:               } else {
// TODO:                 return dispatch(Actions.showLeftPanel());
// TODO:               }
// TODO:             }}>
// TODO:             <ToggleLeftSidebarIcon icon={"caret-" + (view.showLeftPanel ? 'left' : 'right')} />
// TODO:           </button>
// TODO:         </HideSidebarButtonWrapper>
// TODO:       </LeftPanelAndHideSidebarButton>
// TODO:       <Map
// TODO:         marker={ (view.left === V.EDIT || view.left === V.NEW) ? map.marker : null}
// TODO:         highlight={ search.highlight }
// TODO:         center={ map.center}
// TODO:         zoom={ map.zoom}
// TODO:         category={ null }
// TODO:         entries={ resultEntries}
// TODO:         ratings={ ratings}
// TODO:         onClick={ (event) => {
// TODO:           if(event.originalEvent.srcElement.tagName.toLowerCase() === 'path'){
// TODO:             return false;
// TODO:           } else if(view.left === V.NEW || view.left === V.EDIT){
// TODO:             return dispatch(Actions.setMarker(event.latlng));
// TODO:           } else {
// TODO:             //back to overview
// TODO:             dispatch(Actions.setCurrentEntry(null, null));
// TODO:             dispatch(Actions.showSearchResults());
// TODO:             dispatch(Actions.setCenterInUrl(map.center));
// TODO: 
// TODO:             return dispatch(Actions.hideLeftPanelOnMobile());
// TODO:           }
// TODO:         }}
// TODO:         onMarkerClick={ id => {
// TODO:           dispatch(Actions.setCurrentEntry(id, null)); 
// TODO:           return dispatch(Actions.showLeftPanel()); 
// TODO:         }}
// TODO:         onMoveend={ coordinates => { return dispatch(Actions.onMoveend(coordinates, map.center)); }}
// TODO:         onZoomend={ coordinates => { return dispatch(Actions.onZoomend(coordinates, map.zoom)); }}
// TODO:         onLocate={ () => { return dispatch(Actions.showOwnPosition()); }}
// TODO:         showLocateButton={ true }
// TODO:       />
// TODO:       <KVMLink target="_blank" href={URLs.APP.link + (view.highlight ? ("/#/?entry=" + view.highlight) : "")}>
// TODO:         <KVMLinkBox>
// TODO:           <Logo src={logo} />
// TODO:         </KVMLinkBox>
// TODO:       </KVMLink>
// TODO:     </WidgetWrapper>
// TODO:   );
// TODO: })
// TODO: 
// TODO: const GlobalStyle = createGlobalStyle`
// TODO:   
// TODO:   @media only screen and (max-width: 600px) {
// TODO:     body { font-size:80%;}
// TODO:   }
// TODO: 
// TODO:   h1, h2, h3, h4, h5, h6, h7 {
// TODO:     font-family: ${STYLE.headerFont};
// TODO:   }
// TODO: 
// TODO:   h3 {
// TODO:     font-weight: 500;
// TODO:   }
// TODO: 
// TODO:   .pure-g [class *= "pure-u"] {
// TODO:     font-family: ${STYLE.bodyFont};
// TODO:   }
// TODO:   
// TODO:   html, button, input, select, textarea {
// TODO:     font-family: ${STYLE.bodyFont} !important;
// TODO:   }
// TODO: `;
// TODO: 
// TODO: const WidgetWrapper = styled.div`
// TODO:   /* 
// TODO:   make the app fit the screen/iframe exactly (important for overflow:scroll, 
// TODO:   but can't use height:100vh since that would break iframes smaller than 100vh):
// TODO:   */
// TODO:   position: absolute;
// TODO:   top: 0;
// TODO:   bottom: 0;
// TODO:   left: 0;
// TODO:   right: 0;
// TODO: `
// TODO: 
// TODO: const LeftPanelAndHideSidebarButton = styled.div`
// TODO:   display: flex;
// TODO:   flex-direction: row;
// TODO:   height: 100%;
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
// TODO: 
// TODO: const ToggleLeftSidebarIcon = styled(FontAwesomeIcon) `
// TODO:   margin-right: 0.3em;
// TODO:   width: 0.7em;
// TODO: `
// TODO: 
// TODO: const SwipeableLeftPanel = styled(Swipeable)`
// TODO:   input, textarea, select {
// TODO:     box-shadow: none !important;
// TODO:     border-radius: 3px !important;
// TODO:   }
// TODO: 
// TODO:   position: relative;
// TODO:   height: 100%;
// TODO:   z-index: 2;
// TODO:   order: -1;
// TODO:   overflow-y: hidden;
// TODO:   float: left;
// TODO:   background-color: #fff;
// TODO:   box-shadow: 1px 1px 5px rgba(0,0,0,.5);
// TODO:   .result {
// TODO:     box-sizing: border-box;
// TODO:     ::-webkit-scrollbar {
// TODO:       width: 10px;
// TODO:       height: 10px;
// TODO:     }
// TODO:     ::-webkit-scrollbar-track {
// TODO:       background: rgba(0,0,0,0);
// TODO:     }
// TODO:     ::-webkit-scrollbar-thumb {
// TODO:       background: #999;
// TODO:     }
// TODO:     ::-webkit-scrollbar-thumb:hover {
// TODO:       background: #666;
// TODO:     }
// TODO:   }
// TODO:   .content {
// TODO:     overflow-y: scroll;
// TODO:     overflow: auto;
// TODO:     width: 100%;
// TODO:     box-sizing: border-box;
// TODO:     padding-bottom: 1rem;
// TODO:     display: flex;
// TODO:     flex-direction: column;
// TODO:     ::-webkit-scrollbar {
// TODO:       width: 10px;
// TODO:       height: 10px;
// TODO:     }
// TODO:     ::-webkit-scrollbar-track {
// TODO:       background: rgba(0,0,0,0);
// TODO:     }
// TODO:     ::-webkit-scrollbar-thumb {
// TODO:       background: #999;
// TODO:     }
// TODO:     ::-webkit-scrollbar-thumb:hover {
// TODO:       background: #666;
// TODO:     }
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
// TODO: `
// TODO: 
// TODO: 
// TODO: const KVMLink = styled.a`
// TODO:   font-size: 13px;
// TODO:   color: rgb(20,20,20);
// TODO:   display: block;
// TODO:   text-align: center;
// TODO:   text-decoration: none;
// TODO:   position: absolute;
// TODO:   top: 0;
// TODO:   right: 0;
// TODO: `
// TODO: 
// TODO: const KVMLinkBox = styled.div`
// TODO:   background-color: white;
// TODO:   border-bottom-left-radius: 3px;
// TODO:   box-shadow: 1px 1px 5px rgba(0,0,0,.5);
// TODO:   :hover {
// TODO:     background-color: #efefef;
// TODO:   }
// TODO: `
// TODO: 
// TODO: const Logo = styled.img`
// TODO:   padding: 9px 11px 5px 12px;
// TODO:   height: 30px;
// TODO: `
