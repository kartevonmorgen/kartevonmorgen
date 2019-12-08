// TODO: import React          from "react";
// TODO: import styled         from "styled-components";
// TODO: import { translate }  from "react-i18next";
// TODO:
// TODO: import BusinessCard   from "./BusinessCard";
// TODO: import NavButtonWhite from "./NavButtonWhite";
// TODO: import EntryImage     from "./EntryImage";
// TODO:
// TODO: const LoadingEntryMessage = styled.div`
// TODO:   margin: 3em 2em !important;
// TODO: `;
// TODO:
// TODO: const Navbar = styled.nav`
// TODO:   position: relative;
// TODO:   z-index: 1;
// TODO:   display: flex;
// TODO:   flex-direction: row;
// TODO:   padding: 9pt 6pt 8pt 7pt;
// TODO: `;
// TODO:
// TODO: const Entry = styled.div`
// TODO:   position: relative;
// TODO:   margin-bottom: 20px;
// TODO: `
// TODO:
// TODO: const EntryDetails = props => {
// TODO:
// TODO:   const { entry, t, isEvent, onBack, onEdit, onTag, tagsClickable } = props;
// TODO:   const hasImage = entry ? (entry.image_url ? true : false) : false;
// TODO:   if (!entry) {
// TODO:     return(
// TODO:       <LoadingEntryMessage>
// TODO:         {t("entryDetails.loadingEntry")}
// TODO:       </LoadingEntryMessage>
// TODO:     );
// TODO:   }
// TODO:   else {
// TODO:     return (
// TODO:       <Entry>
// TODO:         <Navbar className="menu-top">
// TODO:           <NavButtonWhite
// TODO:             keyName = "back"
// TODO:             buttonRight = { false }
// TODO:             icon = "chevron-left"
// TODO:             text = {t("entryDetails.back")}
// TODO:             onClick = {onBack}
// TODO:             aboveImage={hasImage}
// TODO:           />
// TODO:           { !isEvent ?
// TODO:             <NavButtonWhite
// TODO:               keyName = "edit"
// TODO:               buttonRight = { true }
// TODO:               icon = "pencil-alt"
// TODO:               text = ""
// TODO:               onClick = {onEdit}
// TODO:               aboveImage={hasImage}
// TODO:             />
// TODO:           : "" }
// TODO:         </Navbar>
// TODO:         {
// TODO:           hasImage ?
// TODO:             <EntryImage
// TODO:               image_url={entry.image_url}
// TODO:               image_link_url={entry.image_link_url}
// TODO:             />
// TODO:             : null
// TODO:         }
// TODO:         <BusinessCard
// TODO:           entry={entry}
// TODO:           hasImage={hasImage}
// TODO:           isEvent={isEvent}
// TODO:           onTag={onTag}
// TODO:           tagsClickable={tagsClickable}
// TODO:         />
// TODO:       </Entry>)
// TODO:   }
// TODO: }
// TODO:
// TODO: module.exports = translate('translation')(EntryDetails)
