import React, {useState}                  from "react";
import styled                 from "styled-components";
import T                      from "prop-types";
import { FontAwesomeIcon }    from '@fortawesome/react-fontawesome'

import STYLE                  from "../styling/Variables"
import AddressLine            from "./AddressLine";
import EventTimes             from "./EventTimes";
import EventRegistrationInfo  from "./EventRegistrationInfo";
import CustomLinks            from "./CustomLinks"
import { ROUTEPLANNERS }      from "../../constants/URLs.js"
import { NAMES }              from "../../constants/Categories"
import i18n                   from "../../i18n";
import OpeningHours from "./OpeningHours"

const Tags = (tags=[], onClick, clickable) =>
  <TagsWrapper key="tags">
    <TagList>
    { tags
        .filter(t => t != "")
        .map( (t,index) =>
          <Tag key={index}>
            <TagLink tabIndex={0} onClick={ () => onClick(t) } clickable={clickable}>#{t}</TagLink>
          </Tag>
        )}
    </TagList>
  </TagsWrapper>

const getHomepageLink = (entry, t) => {
  if(!entry.homepage) return '';
  let shortLink = entry.homepage.replace( /^http(s)*:\/\/(www\.)*|\/$/gi , "");
  if(shortLink.length>30) shortLink = shortLink.split('/')[0] + "/…";
  if(shortLink.length>30) shortLink = i18n.t("entryDetails.homepagePlaceholder");
  const label = shortLink;
  return <EntryLink href={entry.homepage} target="_blank">{ label }</EntryLink>;
};

const getMailLink = (entry) => {
  const mail = entry.email
  if (!mail) {
    return "";
  }
  const label = (mail.length > 30) ? "E-Mail" : mail;
  return <EntryLink href={ "mailto:" + entry.email}>{ label }</EntryLink>;
};

const getTelLink = (entry) => {
  if(!entry.telephone) return null
  const tel = entry.telephone
  let url = "tel:" + tel.replace(/[^0-9+]/g,'')
  return <EntryLink href={url}>{tel}</EntryLink>
};

const getRoutePlannerLink = (entry) => {
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
    <EntryLink
      title={ "Hinfinden mit "+ROUTEPLANNERS[provider].name }
      href={url} target="_blank">
      {i18n.t("entryDetails.route")}
    </EntryLink>
  )
};

const BusinessCard = ({ entry, hasImage, t, isEvent, onTag, tagsClickable }) => {
  // TODO: make the length of brief description dynamic from .env
  // TODO: be careful it should be consistent with the hard limit from EntryForm
  const briefDescriptionLength = 250
  let isDescriptionTooLong = false
  if (entry && entry.description) {
    isDescriptionTooLong = entry.description.length > briefDescriptionLength
  }

  const [showFulldescription, setShowMoreDescription] = useState(false)

  const getDescription = () => {
    const {description} = entry

    if (isDescriptionTooLong && !showFulldescription) {
      // the extra space is to separate the read-more link from the actual description
      return description.substr(0, briefDescriptionLength) + '... '
    }

    return description
  }

  if (!entry) {
    return(
      <LoadingEntryMessage>
        {i18n.t("entryDetails.loadingEntry")}
      </LoadingEntryMessage>
    );
  }
  else {
    const categoryName = NAMES[entry.categories && entry.categories[0]]
    return (
      <EntryDetailPage hasImage={hasImage}>
        <EntryCategory category={categoryName}>
          <span tabIndex={0}>
            { i18n.t("category." + categoryName) }
          </span>
        </EntryCategory>
        <EntryTitle tabIndex={0}>{entry.title}</EntryTitle>
        { isEvent ? <EventTimes start={ entry.start } end={ entry.end } showTimes={ true }/> : "" }
        <EntryDescription tabIndex={0}>
          {getDescription()}
          {
            isDescriptionTooLong && !showFulldescription &&
            <FlatButon tabIndex={0} onClick={() => setShowMoreDescription(true)}>{i18n.t("entryDetails.readMore")}</FlatButon>
          }
        </EntryDescription>

        <Hr />

        <EntryDetailsOtherData>{[
          ((entry.organizer || entry.contact_name) ?
            <div key="organizer">
              <FontAwesomeIconElement icon="user" />
              { entry.organizer || entry.contact_name }
            </div> : null),
          ((entry.telephone && entry.registration !== "telephone")
            ?
            <div key="tel">
              <FontAwesomeIconElement icon="phone" />{ getTelLink(entry) }
            </div>
            : null),
          ((entry.email && entry.registration !== "email") ?
            <div key="mail">
              <FontAwesomeIconElement icon="envelope" />
              { getMailLink(entry) }
            </div>
            : null),
          ((entry.homepage && entry.registration !== "homepage") ?
            <div key="hp">
              <FontAwesomeIconElement icon="globe-africa" />
              { getHomepageLink(entry, t) }
            </div> : null),
          ((entry.street && entry.zip && entry.city) ?
            <React.Fragment key="address">
              <div key="addr">
                <div key="addr" className="address pure-g">
                  <FontAwesomeIconElement className="pure-u-2-24" icon="map-marker-alt" />
                  <AddressWrapper className="pure-u-22-24">
                    <AddressLine
                      street={entry.street}
                      zip={entry.zip}
                      city={entry.city}
                      state={entry.state}
                      country={entry.country}
                    />
                  </AddressWrapper>
                </div>
                <div key="route">
                  <FontAwesomeIconElement icon="route" />
                  { getRoutePlannerLink(entry) }
                </div></div>
              <Hr />
            </React.Fragment>
            : null),
          (entry.custom && (
            <React.Fragment key="custom_links">
              <CustomLinks customLinks={entry.custom}/>
              <Hr/>
            </React.Fragment>
          )),
          (entry.opening_hours &&
            <React.Fragment key="openinghours">
              <OpeningHours oh={entry.opening_hours} />
              <Hr />
            </React.Fragment>
          ),
          (entry.tags && entry.tags.filter(t => t !== "").length > 0
            ? Tags(entry.tags, onTag, tagsClickable)
            : null),
          <Hr key="business_hr_2"/>,
        ]}

        </EntryDetailsOtherData>
        {
          (isEvent && entry.registration) ?
            <EventRegistrationInfo
              event={ entry }
              getMailLink={ getMailLink }
              getTelLink={ getTelLink }
              getHomepageLink={ getHomepageLink }/>
            : ""
        }
      </EntryDetailPage>)
  }
}

BusinessCard.propTypes = {
  entry: T.object
}

export default BusinessCard;

const FontAwesomeIconElement = styled(FontAwesomeIcon)`
  margin-right: 12px;
  height: 16px !important;
  width: 16px !important;
`;

const AddressWrapper = styled.div`
  margin-left: -8px;
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
  white-space: pre-line;
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
  cursor: ${props => props.clickable ? 'pointer' : 'auto'};

  &:hover {
    color: ${props => props.clickable ? '#fff' : ''};
    background-color: ${props => props.clickable ? '#333' : ''};
  }
`

const FlatButon = styled.button`
  background: none!important;
  border: none;
  padding: 0!important;
  /*optional*/
  font-family: arial, sans-serif;
  /*input has OS specific font-family*/
  color: #069;
  cursor: pointer;
`

const Hr = styled.hr`
  margin-top: 1rem;
  margin-bottom: 1rem;
  border: 0;
  border-top: 1px solid rgba(0, 0, 0, 0.1);
`