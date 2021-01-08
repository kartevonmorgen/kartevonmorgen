import "../../components/styling/Stylesheets"

import React         from "react";
import * as URLs     from "../../constants/URLs";
import i18n          from "../../i18n";
import Map           from "../../components/Map";
import Sidebar       from "../../components/Sidebar";
import Swipeable     from 'react-swipeable'
import STYLE         from "../../components/styling/Variables";
import V             from "../../constants/PanelView";
import { translate } from "react-i18next"
import Actions       from "../../Actions";
import logo          from "../../img/logo_without_slogan.png";

import { FontAwesomeIcon }           from '@fortawesome/react-fontawesome'
import styled, { createGlobalStyle } from "styled-components";

export default translate('translation')((props) => {
  
  const { map, server, form, search, view, t, dispatch } = props;
  const { entries, ratings } = server;
  const resultEntries = search.entryResults.filter(e => entries[e.id]).map(e => entries[e.id])
    .concat(search.eventResults);

  return (
    <WidgetWrapper>
      <GlobalStyle />
      <LeftPanelAndHideSidebarButton>
        <SwipeableLeftPanel className={"left " + (view.showLeftPanel ? 'opened' : 'closed')}
          onSwipedLeft={ () => this.swipedLeftOnPanel() }>
          <Sidebar
            view={ view }
            search={ search }
            map={ map }
            user={ null }
            server={ server }
            form={ form }
            entries={ entries }
            resultEntries={ resultEntries }
            ratings={ ratings }
            dispatch={ dispatch } // TODO
            t={ t }
            showAddEntryButton={ false }
            showSearchBar={ false }
            onTagClick={ () => {} }
            tagsClickable={ false }
          />
        </SwipeableLeftPanel>
        <HideSidebarButtonWrapper>
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
        </HideSidebarButtonWrapper>
      </LeftPanelAndHideSidebarButton>
      <Map
        marker={ (view.left === V.EDIT || view.left === V.NEW) ? map.marker : null}
        highlight={ search.highlight }
        center={ map.center}
        zoom={ map.zoom}
        category={ null }
        entries={ resultEntries}
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
        onMarkerClick={ id => {
          dispatch(Actions.setCurrentEntry(id, null)); 
          return dispatch(Actions.showLeftPanel()); 
        }}
        onMoveend={ coordinates => { return dispatch(Actions.onMoveend(coordinates, map.center)); }}
        onZoomend={ coordinates => { return dispatch(Actions.onZoomend(coordinates, map.zoom)); }}
        onLocate={ () => { return dispatch(Actions.showOwnPosition()); }}
        showLocateButton={ true }
      />
      <KVMLink target="_blank" href={URLs.APP.link + (view.highlight ? ("/#/?entry=" + view.highlight) : "")}>
        <KVMLinkBox>
          <Logo src={logo} />
        </KVMLinkBox>
      </KVMLink>
    </WidgetWrapper>
  );
})

const GlobalStyle = createGlobalStyle`
  
  @media only screen and (max-width: 600px) {
    body { font-size:80%;}
  }

  h1, h2, h3, h4, h5, h6, h7 {
    font-family: ${STYLE.headerFont};
  }

  h3 {
    font-weight: 500;
  }

  .pure-g [class *= "pure-u"] {
    font-family: ${STYLE.bodyFont};
  }
  
  html, button, input, select, textarea {
    font-family: ${STYLE.bodyFont} !important;
  }
`;

const WidgetWrapper = styled.div`
  /* 
  make the app fit the screen/iframe exactly (important for overflow:scroll, 
  but can't use height:100vh since that would break iframes smaller than 100vh):
  */
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
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

const ToggleLeftSidebarIcon = styled(FontAwesomeIcon) `
  margin-right: 0.3em;
  width: 0.7em;
`

const SwipeableLeftPanel = styled(Swipeable)`
  input, textarea, select {
    box-shadow: none !important;
    border-radius: 3px !important;
  }

  position: relative;
  height: 100%;
  z-index: 2;
  order: -1;
  overflow-y: hidden;
  float: left;
  background-color: #fff;
  box-shadow: 1px 1px 5px rgba(0,0,0,.5);
  .result {
    box-sizing: border-box;
    ::-webkit-scrollbar {
      width: 10px;
      height: 10px;
    }
    ::-webkit-scrollbar-track {
      background: rgba(0,0,0,0);
    }
    ::-webkit-scrollbar-thumb {
      background: #999;
    }
    ::-webkit-scrollbar-thumb:hover {
      background: #666;
    }
  }
  .content {
    overflow-y: scroll;
    overflow: auto;
    width: 100%;
    box-sizing: border-box;
    padding-bottom: 1rem;
    display: flex;
    flex-direction: column;
    ::-webkit-scrollbar {
      width: 10px;
      height: 10px;
    }
    ::-webkit-scrollbar-track {
      background: rgba(0,0,0,0);
    }
    ::-webkit-scrollbar-thumb {
      background: #999;
    }
    ::-webkit-scrollbar-thumb:hover {
      background: #666;
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
`


const KVMLink = styled.a`
  font-size: 13px;
  color: rgb(20,20,20);
  display: block;
  text-align: center;
  text-decoration: none;
  position: absolute;
  top: 0;
  right: 0;
`

const KVMLinkBox = styled.div`
  background-color: white;
  border-bottom-left-radius: 3px;
  box-shadow: 1px 1px 5px rgba(0,0,0,.5);
  :hover {
    background-color: #efefef;
  }
`

const Logo = styled.img`
  padding: 9px 11px 5px 12px;
  height: 30px;
`
