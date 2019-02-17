import React          from "react";
import styled         from "styled-components";
import { translate }  from "react-i18next";

import BusinessCard   from "./BusinessCard";
import NavButtonWhite from "./NavButtonWhite";
import EntryImage     from "./EntryImage";
import Actions        from "../../Actions"; // TODO: remove dependency

const LoadingEntryMessage = styled.div`
  margin: 3em 2em; !important;
`;

const Navbar = styled.nav`
  position: relative;
  z-index: 1;
`;

const EntryDetails = props => {

  const { entry, t, dispatch, mapCenter, isEvent } = props;
  const hasImage = entry ? (entry.image_url ? true : false) : false;
  if (!entry) {
    return(
      <LoadingEntryMessage>
        {t("entryDetails.loadingEntry")}
      </LoadingEntryMessage>
    );
  }
  else {
    return (
      <div className="entry">
        <Navbar className="menu-top">
          <NavButtonWhite
            keyName = "back"
            buttonRight = { false }
            icon = "chevron-left"
            text = {t("entryDetails.back")}
            onClick = {() => {
              props.dispatch(Actions.setCurrentEntry(null, null));
              props.dispatch(Actions.showSearchResults());
              props.dispatch(Actions.setCenterInUrl(mapCenter));
            }}
            aboveImage={hasImage}
          />
          { !isEvent ? 
            <NavButtonWhite
              keyName = "edit"
              buttonRight = { true }
              icon = "pencil-alt"
              text = ""
              onClick = {() => {
                props.dispatch(Actions.editCurrentEntry());
              }}
              aboveImage={hasImage}
            />
          : "" }
        </Navbar>
        {
          hasImage ?
            <EntryImage image_url={entry.image_url} image_link_url={entry.image_link_url} />
            : null
        }
        <BusinessCard entry={entry} hasImage={hasImage} dispatch={dispatch} isEvent={isEvent}/>
      </div>)
  }
}

module.exports = translate('translation')(EntryDetails)
