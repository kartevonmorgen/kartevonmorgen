import React          from "react";
import styled         from "styled-components";
import { translate }  from "react-i18next";

import BusinessCard   from "./BusinessCard";
import NavButtonWhite from "./NavButtonWhite";
import EntryImage     from "./EntryImage";

const LoadingEntryMessage = styled.div`
  margin: 3em 2em !important;
`;

const Navbar = styled.nav`
  position: relative;
  z-index: 1;
  display: flex;
  flex-direction: row;
  padding: 9pt 6pt 8pt 7pt;
`;

const Entry = styled.div`
  position: relative;
  margin-bottom: 20px;
`

const EntryDetails = props => {

  const { entry, t, isEvent, onBack, onEdit, onTag, tagsClickable } = props;
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
      <Entry>
        <Navbar className="menu-top">
          <NavButtonWhite
            keyName = "back"
            buttonRight = { false }
            icon = "chevron-left"
            text = {t("entryDetails.back")}
            onClick = {onBack}
            aboveImage={hasImage}
          />
          { !isEvent ? 
            <NavButtonWhite
              keyName = "edit"
              buttonRight = { true }
              icon = "pencil-alt"
              text = ""
              onClick = {onEdit}
              aboveImage={hasImage}
            />
          : "" }
        </Navbar>
        {
          hasImage ?
            <EntryImage
              image_url={entry.image_url}
              image_link_url={entry.image_link_url}
            />
            : null
        }
        <BusinessCard
          entry={entry}
          hasImage={hasImage}
          isEvent={isEvent}
          onTag={onTag}
          tagsClickable={tagsClickable}
        />
      </Entry>)
  }
}

module.exports = translate('translation')(EntryDetails)
