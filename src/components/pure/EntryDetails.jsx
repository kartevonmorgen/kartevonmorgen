import React, {useEffect}          from "react";
import {connect}      from "react-redux"
import styled         from "styled-components";
import { translate }  from "react-i18next";

import BusinessCard   from "./BusinessCard";
import NavButtonWhite from "./NavButtonWhite";
import EntryImage     from "./EntryImage";
import Actions from "../../Actions"

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
`

const EntryDetails = props => {
  useEffect(() => {
    props.backupSearchText()
  }, [])

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
      <Entry id="EntryDetail">
        <Navbar className="menu-top">
          <NavButtonWhite
            ariaLabel="back"
            keyName = "back"
            buttonRight = { false }
            icon = "chevron-left"
            text = {t("entryDetails.back")}
            onClick = {onBack}
            aboveImage={hasImage}
          />
          <NavButtonWhite
            ariaLabel="edit"
            keyName = "edit"
            buttonRight = { true }
            icon = "pencil-alt"
            text = ""
            onClick = {onEdit}
            aboveImage={hasImage}
          />
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

const mapDispatchToProps = (dispatch) => {
  return {
    backupSearchText: () => dispatch(Actions.backupSearchText())
  }
}

export default connect(null, mapDispatchToProps)(translate('translation')(EntryDetails))
