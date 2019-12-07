// TODO: import React                  from "react";
// TODO: import styled                 from "styled-components";
// TODO: import T                      from "prop-types";
// TODO: import { FontAwesomeIcon }    from '@fortawesome/react-fontawesome'
// TODO: 
// TODO: import STYLE                  from "../styling/Variables"
// TODO: import AddressLine            from "./AddressLine";
// TODO: import EventTimes             from "./EventTimes";
// TODO: import EventRegistrationInfo  from "./EventRegistrationInfo";
// TODO: import { ROUTEPLANNERS }      from "../../constants/URLs.js"
// TODO: import { NAMES }              from "../../constants/Categories"
// TODO: import i18n                   from "../../i18n";
// TODO: 
// TODO: const Tags = (tags=[], onClick, clickable) =>
// TODO:   <TagsWrapper key="tags">
// TODO:     <TagList>
// TODO:     { tags
// TODO:         .filter(t => t != "")
// TODO:         .map( (t,index) =>
// TODO:           <Tag key={index}>
// TODO:             <TagLink onClick={ () => onClick(t) } clickable={clickable}>#{t}</TagLink>
// TODO:           </Tag>
// TODO:         )}
// TODO:     </TagList>
// TODO:   </TagsWrapper>
// TODO: 
// TODO: const getHomepageLink = (entry, t) => {
// TODO:   if(!entry.homepage) return '';
// TODO:   let shortLink = entry.homepage.replace( /^http(s)*:\/\/(www\.)*|\/$/gi , "");
// TODO:   if(shortLink.length>30) shortLink = shortLink.split('/')[0] + "/…";
// TODO:   if(shortLink.length>30) shortLink = i18n.t("entryDetails.homepagePlaceholder");
// TODO:   const label = shortLink;
// TODO:   return <EntryLink href={entry.homepage} target="_blank">{ label }</EntryLink>;
// TODO: };
// TODO: 
// TODO: const getMailLink = (entry) => {
// TODO:   const mail = entry.email
// TODO:   if (!mail) {
// TODO:     return "";
// TODO:   }
// TODO:   const label = (mail.length > 30) ? "E-Mail" : mail;
// TODO:   return <EntryLink href={ "mailto:" + entry.email}>{ label }</EntryLink>;
// TODO: };
// TODO: 
// TODO: const getTelLink = (entry) => {
// TODO:   if(!entry.telephone) return null
// TODO:   const tel = entry.telephone
// TODO:   let url = "tel:" + tel.replace(/[^0-9+]/g,'')
// TODO:   return <EntryLink href={url}>{tel}</EntryLink>
// TODO: };
// TODO: 
// TODO: const getRoutePlannerLink = (entry) => {
// TODO:   let url = '';
// TODO:   let provider = '';
// TODO:   if( /iPhone|iPad|iPod/i.test(navigator.userAgent) ) provider = "apple"
// TODO:   else if( navigator.userAgent.toLowerCase().indexOf("android") !== -1 ) provider = "android"
// TODO:   else provider = 'default'
// TODO: 
// TODO:   if( provider === "apple" || provider === "default") {
// TODO:     url = ROUTEPLANNERS[provider].link.replace("{addr}",entry.street + "+" + entry.zip + "+" + entry.city)
// TODO:   }
// TODO:   else url = ROUTEPLANNERS[provider].link.replace('{lat}',entry.lat).replace('{lng}',entry.lng)
// TODO: 
// TODO:   return(
// TODO:     <EntryLink
// TODO:       title={ "Hinfinden mit "+ROUTEPLANNERS[provider].name }
// TODO:       href={url} target="_blank">
// TODO:       {i18n.t("entryDetails.route")}
// TODO:     </EntryLink>
// TODO:   )
// TODO: };
// TODO: 
// TODO: const BusinessCard = ({ entry, hasImage, t, isEvent, onTag, tagsClickable }) => {
// TODO:   if (!entry) {
// TODO:     return(
// TODO:       <LoadingEntryMessage>
// TODO:         {i18n.t("entryDetails.loadingEntry")}
// TODO:       </LoadingEntryMessage>
// TODO:     );
// TODO:   }
// TODO:   else {
// TODO:     const categoryName = NAMES[entry.categories && entry.categories[0]]
// TODO:     return (
// TODO:       <EntryDetailPage hasImage={hasImage}>
// TODO:         <EntryCategory category={categoryName}>
// TODO:           <span>
// TODO:             { i18n.t("category." + categoryName) }
// TODO:           </span>
// TODO:         </EntryCategory>
// TODO:         <EntryTitle>{entry.title}</EntryTitle>
// TODO:         { isEvent ? <EventTimes start={ entry.start } end={ entry.end } showTimes={ true }/> : "" }
// TODO:         <EntryDescription>{entry.description}</EntryDescription>
// TODO:         <EntryDetailsOtherData>{[
// TODO:           ((entry.organizer) ?
// TODO:           <div key="organizer">
// TODO:             <FontAwesomeIconElement icon="user" />
// TODO:             { entry.organizer }
// TODO:           </div> : null),
// TODO:           ((entry.homepage && entry.registration !== "homepage") ?
// TODO:             <div key="hp">
// TODO:               <FontAwesomeIconElement icon="globe-africa" />
// TODO:               { getHomepageLink(entry, t) }
// TODO:             </div> : null),
// TODO:           ((entry.email && entry.registration !== "email") ?
// TODO:             <div key="mail">
// TODO:               <FontAwesomeIconElement icon="envelope" />
// TODO:               { getMailLink(entry) }
// TODO:             </div>
// TODO:             : null),
// TODO:           ((entry.telephone && entry.registration !== "telephone")
// TODO:             ?
// TODO:             <div key="tel">
// TODO:               <FontAwesomeIconElement icon="phone" />{ getTelLink(entry) }
// TODO:             </div>
// TODO:             : null),
// TODO:           ((entry.street && entry.zip && entry.city) ?
// TODO:             <div key="addr">
// TODO:               <div key="addr" className="address pure-g">
// TODO:                 <FontAwesomeIconElement className="pure-u-2-24" icon="map-marker-alt" />
// TODO:                 <AddressWrapper className="pure-u-22-24">
// TODO:                   <AddressLine { ...entry } />
// TODO:                 </AddressWrapper>
// TODO:               </div>
// TODO:               <div key="route">
// TODO:                 <FontAwesomeIconElement icon="route" />
// TODO:                 { getRoutePlannerLink(entry) }
// TODO:             </div></div>
// TODO:             : null),
// TODO:           (entry.tags && entry.tags.filter(t => t !="").length > 0
// TODO:             ? Tags(entry.tags, onTag, tagsClickable)
// TODO:             : null)
// TODO:         ]}</EntryDetailsOtherData>
// TODO:         {
// TODO:           (isEvent && entry.registration) ?
// TODO:             <EventRegistrationInfo
// TODO:               event={ entry }
// TODO:               getMailLink={ getMailLink }
// TODO:               getTelLink={ getTelLink }
// TODO:               getHomepageLink={ getHomepageLink }/>
// TODO:             : ""
// TODO:         }
// TODO:       </EntryDetailPage>)
// TODO:   }
// TODO: }
// TODO: 
// TODO: BusinessCard.propTypes = {
// TODO:   entry: T.object
// TODO: }
// TODO: 
// TODO: module.exports = BusinessCard;
// TODO: 
// TODO: const FontAwesomeIconElement = styled(FontAwesomeIcon)`
// TODO:   margin-right: 12px;
// TODO:   height: 16px !important;
// TODO:   width: 16px !important;
// TODO: `;
// TODO: 
// TODO: const AddressWrapper = styled.div`
// TODO:   margin-left: -8px;
// TODO: `;
// TODO: 
// TODO: const EntryDetailPage = styled.div`
// TODO:   z-index: 2;
// TODO:   position: relative;
// TODO:   max-width: 500px;
// TODO:   background-color: #fff;
// TODO:   margin: ${props => props.hasImage ? "270px" : "0px"} 1.8em 0 1.8em;
// TODO: `;
// TODO: 
// TODO: const LoadingEntryMessage = styled.div`
// TODO:   padding: 1.5em;
// TODO: `;
// TODO: 
// TODO: const EntryLink = styled.a`
// TODO:   color: ${STYLE.darkGray};
// TODO:   text-decoration: none;
// TODO:   &:hover {
// TODO:     text-decoration: underline;
// TODO:     color: #000;
// TODO:   }
// TODO: `;
// TODO: 
// TODO: const EntryTitle = styled.h3`
// TODO:   color:       ${STYLE.anthracite};
// TODO:   font-size: 1.3rem;
// TODO:   margin-bottom: -6px;
// TODO:   margin-top: .4rem;
// TODO: `;
// TODO: 
// TODO: const EntryCategory = styled.div`
// TODO:   font-size: 0.8em;
// TODO:   color: ${props => STYLE[props.category]};
// TODO:   text-transform: uppercase;
// TODO:   margin-top: .9rem;
// TODO: `
// TODO: 
// TODO: const EntryDescription = styled.p`
// TODO:   color: ${STYLE.darkGray};
// TODO: `;
// TODO: 
// TODO: const EntryDetailsOtherData = styled.div`
// TODO:   font-family: ${STYLE.headerFont};
// TODO: `;
// TODO: 
// TODO: const TagsWrapper = styled.div `
// TODO:   margin-top: 1.5em;
// TODO: `;
// TODO: 
// TODO: const TagList = styled.ul `
// TODO:   list-style: none;
// TODO:   padding: 0;
// TODO:   margin: 0;
// TODO: `;
// TODO: 
// TODO: const Tag = styled.li `
// TODO:   display: inline;
// TODO: `;
// TODO: 
// TODO: const TagLink = styled.a `
// TODO:   color: #333;
// TODO:   text-decoration: none;
// TODO:   display: inline-block;
// TODO:   background: #eaeaea;
// TODO:   border-radius: 0.3em;
// TODO:   padding: .2em .4em;
// TODO:   font-size: 0.75em;
// TODO:   margin-bottom: 0.2rem;
// TODO:   margin-right: 0.4em;
// TODO:   letter-spacing: 0.06em;
// TODO:   cursor: ${props => props.clickable ? 'pointer' : 'auto'};
// TODO: 
// TODO:   &:hover {
// TODO:     color: ${props => props.clickable ? '#fff' : ''};
// TODO:     background-color: ${props => props.clickable ? '#333' : ''};
// TODO:   }
// TODO: `
