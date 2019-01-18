import React, { Component } from "react";
import styled from "styled-components";
import STYLE from "./styling/Variables"
import { translate } from "react-i18next";
import AddressLine from "./pure/AddressLine";
import EventTimes from "./EventTimes";
import EventRegistrationInfo  from "./EventRegistrationInfo";
import T from "prop-types";
import Actions from "../Actions";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { ROUTEPLANNERS } from "../constants/URLs.js"
import { NAMES } from "../constants/Categories"

const Tags = (tags=[], dispatch) =>
  <TagsWrapper key="tags">
    <TagList>
    { tags
        .filter(t => t != "")
        .map( (t,index) =>
          <Tag key={"Tag"+t}><TagLink
            onClick={ () => {
              dispatch(Actions.showSearchResults());
              dispatch(Actions.setSearchText('#'+t));
              return dispatch(Actions.search());
            }}
          >#{t}</TagLink></Tag>
        )}
    </TagList>
  </TagsWrapper>

class BusinessCard extends Component {

  getHomepageLink (entry, t){
    if(!entry.homepage) return '';
    let shortLink = entry.homepage.replace( /^http(s)*:\/\/(www\.)*|\/$/gi , "");
    if(shortLink.length>30) shortLink = shortLink.split('/')[0] + "/…";
    if(shortLink.length>30) shortLink = t("entryDetails.homepagePlaceholder");
    const label = shortLink;
    return <EntryLink href={entry.homepage} target="_blank">{ label }</EntryLink>;
  }

  getMailLink (entry){
    const mail = entry.email
    if (!mail) {
      return "";
    }
    const label = (mail.length > 30) ? "E-Mail" : mail;
    return <EntryLink href={ "mailto:" + entry.email}>{ label }</EntryLink>;
  }

  getTelLink (entry){
    if(!entry.telephone) return null
    const tel = entry.telephone
    let url = "tel:" + tel.replace(/[^0-9+]/g,'')
    return <EntryLink href={url}>{tel}</EntryLink>
  }

  getRoutePlannerLink(entry) {
    let url = '';
    let provider = '';
    if( /iPhone|iPad|iPod/i.test(navigator.userAgent) ) provider = "apple"
    else if( navigator.userAgent.toLowerCase().indexOf("android") !== -1 ) provider = "android"
    else provider = 'default'

    if( provider === "apple" || provider === "default") {
      url = ROUTEPLANNERS[provider].link.replace("{addr}",entry.street + "+" + entry.zip + "+" + entry.city)
    }
    else url = ROUTEPLANNERS[provider].link.replace('{lat}',entry.lat).replace('{lng}',entry.lng)

    return(
      <EntryLink title={ "Hinfinden mit "+ROUTEPLANNERS[provider].name } href={url} target="_blank">Routenplaner</EntryLink>
    )
  }

  render () {
    const { entry, hasImage, dispatch, t, isEvent } = this.props;
    if (!entry) {
      return(
        <LoadingEntryMessage>
          {t("entryDetails.loadingEntry")}
        </LoadingEntryMessage>
      );
    }
    else {
      const categoryName = NAMES[entry.categories && entry.categories[0]]

      return (
        <EntryDetailPage hasImage={hasImage}>
          <EntryCategory category={categoryName}>
            <span>
              { t("category." + categoryName) }
            </span>
          </EntryCategory>
          <EntryTitle>{entry.title}</EntryTitle>
          { isEvent ? <EventTimes start={ entry.start } end={ entry.end } showTimes={ true }/> : "" }
          <EntryDescription>{entry.description}</EntryDescription>
          <EntryDetailsOtherData>{[
            ((entry.homepage && entry.registration !== "homepage") ?
              <div key="hp">
                <FontAwesomeIconElement icon="globe-africa" />
                { this.getHomepageLink(entry, t) }
              </div> : null),
            ((entry.email && entry.registration !== "email") ?
              <div key="mail">
                <FontAwesomeIconElement icon="envelope" />
                { this.getMailLink(entry) }
              </div>
              : null),
            ((entry.telephone && entry.registration !== "telephone")
              ?
              <div key="tel">
                <FontAwesomeIconElement icon="phone" />{ this.getTelLink(entry) }
              </div>
              : null),
            ((entry.street && entry.zip && entry.city) ?
              <div key="addr">
                <div key="addr" className="address pure-g">
                  <FontAwesomeIconElement className="pure-u-2-24" icon="map-marker-alt" />
                  <AddressWrapper className="pure-u-22-24">
                    <AddressLine { ...entry } />
                  </AddressWrapper>
                </div>
                <div key="route">
                  <FontAwesomeIconElement icon="route" />
                  { this.getRoutePlannerLink(entry) }
              </div></div>
              : null),
            (entry.tags && entry.tags.filter(t => t !="").length > 0
              ? Tags(entry.tags, dispatch)
              : null)
          ]}</EntryDetailsOtherData>
          { 
            (isEvent && entry.registration) ? 
              <EventRegistrationInfo 
                event={ entry } 
                getMailLink={ this.getMailLink }
                getTelLink={ this.getTelLink }
                getHomepageLink={ this.getHomepageLink }/>
              : "" 
          }
        </EntryDetailPage>)
    }
  }
}

BusinessCard.propTypes = {
  entry: T.object
}

module.exports = translate('translation')(BusinessCard)


const FontAwesomeIconElement = styled(FontAwesomeIcon)`
  margin-right: 12px;
`;

const AddressWrapper = styled.div`
  margin-left: -4px;
`;

const EntryDetailPage = styled.div`
  z-index: 2;
  position: relative;
  max-width: 500px;
  background-color: #fff;
  margin: ${props => props.hasImage ? "270px" : "0px"} 1.8em 0 1.8em;
`;

const LoadingEntryMessage = styled.div`
  padding: 1.5em;
`;

const EntryLink = styled.a`
  color: ${STYLE.darkGray};
  text-decoration: none;
  &:hover {
    text-decoration: underline;
    color: #000;
  }
`;

const EntryTitle = styled.h3`
  color:       ${STYLE.anthracite};
  font-size: 1.3rem;
  margin-bottom: -6px;
  margin-top: .4rem;
`;

const EntryCategory = styled.div`
  font-size: 0.8em;
  color: ${props => STYLE[props.category]};
  text-transform: uppercase;
  margin-top: .9rem;
`

const EntryDescription = styled.p`
  color: ${STYLE.darkGray};
`;

const EntryDetailsOtherData = styled.div`
  font-family: ${STYLE.headerFont};
`;

const TagsWrapper = styled.div `
  margin-top: 1.5em;
`;

const TagList = styled.ul `
  list-style: none;
  padding: 0;
  margin: 0;
`;

const Tag = styled.li `
  display: inline;
`;

const TagLink = styled.a `
  color: #333;
  text-decoration: none;
  display: inline-block;
  background: #eaeaea;
  border-radius: 0.3em;
  padding: .2em .4em;
  font-size: 0.75em;
  margin-bottom: 0.2rem;
  margin-right: 0.4em;
  letter-spacing: 0.06em;
  cursor: pointer;

  &:hover {
    color: #fff;
    background-color: #333;
  }
`
