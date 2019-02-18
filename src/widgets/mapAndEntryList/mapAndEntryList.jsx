import React         from "react";
import URLs          from "../../constants/URLs";
import i18n          from "../../i18n";
import Map           from "../../components/Map";
import Sidebar       from "../../components/Sidebar";
import Swipeable     from 'react-swipeable'
import STYLE         from "../../components/styling/Variables";
import V             from "../../constants/PanelView";
import { translate } from "react-i18next"
import Actions       from "../../Actions";
import styled, { createGlobalStyle } from "styled-components";

module.exports = translate('translation')((props) => {
  
  const { map, server, search, view, t, dispatch } = props;
  const { entries, ratings } = server;
  const resultEntries = search.entryResults.filter(e => entries[e.id]).map(e => entries[e.id])
    .concat(search.eventResults);

  return (
    <div>
      <GlobalStyle />
      <SwipeableLeftPanel className={"left " + (view.showLeftPanel ? 'opened' : 'closed')}
        onSwipedLeft={ () => this.swipedLeftOnPanel() }>
        <Sidebar
          view={ view }
          search={ search }
          map={ map }
          user={ null }
          server={ server }
          form={ null }
          entries={ entries }
          resultEntries={ resultEntries }
          ratings={ ratings }
          dispatch={ dispatch } // TODO
          t={ t }
          showAddEntryButton={ false }
          showSearchBar={ false }
          onTagClick={ () => {} }
        />
      </SwipeableLeftPanel>
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
            dispatch(Actions.setCenterInUrl(mapCenter));

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
      {/* TODO: */}
      {/* <MoreInfoLink target="_blank" href={URLs.APP.link + (view.highlight ? ("/#/?entry=" + view.highlight) : "")}>{i18n.t("mapWidget.showLargeMap")}</MoreInfoLink> */}
    </div>
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

const SwipeableLeftPanel = styled(Swipeable)`
  position: absolute;
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

const MoreInfoLink = styled.a`
  position: absolute;
  z-index: 1;
  bottom: 0;
  background: white;
  left: 0;
  padding: 6px 25px;
  font-size: 0.8em;
`;