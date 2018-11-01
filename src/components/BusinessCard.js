import React, { Component }   from "react";
import styled                 from "styled-components";
import Colors                 from "./styling/Colors"
import { translate }          from "react-i18next";
import { pure }               from "recompose";
import AddressLine                from "./AddressLine";
import T                      from "prop-types";
import Actions                from "../Actions";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { ROUTEPLANNER }         from "../constants/URLs.js"

const EntryDetailPage = styled.div`
  z-index: 2;
  position: relative;
  padding: 1px 1em 0 1em;
  max-width: 500px;
  background-color: #fff;
  margin-top: ${props => props.hasImage ? "244px" : "0"};
`;

const LoadingEntryMessage = styled.div`
  padding: 1.5em;
`;

const EntryLink = styled.a`
  color: ${Colors.darkGray};
  text-decoration: none;
  &:hover {
    text-decoration: underline;
    color: #000;
  }
`;

const EntryTitle = styled.h3`
  color:       ${Colors.anthracite};
  margin-bottom: -6px;
  margin-top: 20px;
`;

const EntryDescription = styled.p`
  color: ${Colors.darkGray};
`;

const EntryDetailsOtherData = styled.div`
  font-family: Museo;
`;

const TagsWrapper = styled.div `
  margin-top: 0.5em;
`;

const TagList = styled.ul `
  list-style: none;
  padding: 0;
  margin: 0;
`;

const Tag = styled.li `
  display:       inline-block;
  margin-right:  0.2em;
  background:    #777;
  color:         #fff;
  border-radius: 0.3em;
  padding:       0.1em;
  padding-left:  0.4em;
  padding-right: 0.4em;
  font-size:     0.9em;
`;

const Tags = (tags=[], dispatch) =>
  <TagsWrapper key="tags">
    <TagList>
    { tags
        .filter(t => t != "")
        .map(t => 
          <Tag key={t}><TagLink 
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

  homepageLink (t){
    const { entry } = this.props;
    if(!entry.homepage) return '';
    let shortLink = entry.homepage.replace( /^http(s)*:\/\/(www\.)*|\/$/gi , "")
    if(shortLink.length>30) shortLink = shortLink.split('/')[0] + "/…"
    if(shortLink.length>30) shortLink = t("entryDetails.homepagePlaceholder")
    return shortLink
  }

  render () {
    const { entry, hasImage, t } = this.props;

    if (!entry) {
      return(
        <LoadingEntryMessage>
          {t("entryDetails.loadingEntry")}
        </LoadingEntryMessage>
      );
    }
    else {
      const shortHomepage = entry.homepage ? entry.homepage.replace("http://", "").replace("https://", "").replace("www.", "") : ""
      const routeUrl = ROUTEPLANNER.link.replace('{lat}',entry.lat).replace('{lng}',entry.lng)

      return (
        <EntryDetailPage hasImage={hasImage}>
          <EntryTitle>{entry.title}</EntryTitle>
          <EntryDescription>{entry.description}</EntryDescription>
          <EntryDetailsOtherData>{[
            (entry.homepage ?
              <div key="hp">
                <FontAwesomeIcon icon="globe-africa" />&nbsp;
                <EntryLink href={entry.homepage} target="_blank">
                  { shortHomepage }
                </EntryLink>
              </div> : null),
            (entry.email ?
              <div key="mail">
                <FontAwesomeIcon icon="envelope" />&nbsp;
                <EntryLink href={ "mailto:" + entry.email}>
                  {entry.email}
                </EntryLink>
              </div>
              : null),
            (entry.telephone
              ?
              <div key="tel">
                <FontAwesomeIcon icon="phone" />&nbsp;{ entry.telephone }
              </div>
              : null),
            ((entry.street || entry.zip || entry.city) ?
              <div>
                <div key="addr" className="address pure-g">
                  <FontAwesomeIcon className="pure-u-2-24" icon="map-marker-alt" />
                  <div className="pure-u-22-24">
                    <AddressLine { ...entry } />
                  </div>
                </div>
                <div key="route">
                  <FontAwesomeIcon icon="route" />&nbsp;
                  <EntryLink title={ "Hinfinden mit "+ROUTEPLANNER.name } href={routeUrl} target="_blank">Routenplaner</EntryLink>
              </div></div>
              : null),
            (entry.tags && entry.tags.filter(t => t !="").length > 0
              ? Tags(entry.tags)
              : null)
          ]}</EntryDetailsOtherData>
        </EntryDetailPage>)
    }
  }
}

BusinessCard.propTypes = {
  entry: T.object
}

module.exports = translate('translation')(pure(BusinessCard))