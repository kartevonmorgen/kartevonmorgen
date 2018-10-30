import React, { Component }   from "react";
import styled                 from "styled-components";
import Colors                 from "./styling/Colors"
import { translate }          from "react-i18next";
import { pure }               from "recompose";
import Address                from "./AddressLine";
import T                      from "prop-types";
import Actions                from "../Actions";

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
  background: #ddd;
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

const Tags = (tags=[], dispatch) =>
  <TagsWrapper key="tags" className = "pure-g">
    <i className = "pure-u-2-24 fa fa-tags" />
    <span className = "pure-u-22-24">
      <TagList>
      { tags
          .filter(t => t != "")
          .map(t => 
            <Tag key={t}><TagLink 
              onClick={ () => {
                dispatch(Actions.setSearchText('#'+t));
                dispatch(Actions.showSearchResults());
                return dispatch(Actions.search());
              }}
            >#{t}</TagLink></Tag>
          )}
      </TagList>
    </span>
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
    const { entry, hasImage, dispatch, t } = this.props;

    if (!entry) {
      return(
        <LoadingEntryMessage>
          {t("entryDetails.loadingEntry")}
        </LoadingEntryMessage>
      );
    }
    else {
      const shortHomepage = this.homepageLink(t)

      return (
        <EntryDetailPage hasImage={hasImage}>
          <EntryTitle>{entry.title}</EntryTitle>
          <EntryDescription>{entry.description}</EntryDescription>
          <EntryDetailsOtherData>{[
            (entry.homepage ?
              <div key="hp" className="pure-g">
                <i className = "pure-u-2-24 fa fa-globe" />
                <EntryLink className="pure-u-22-24" href={entry.homepage} target="_blank">
                  { shortHomepage }
                </EntryLink>
              </div> : null),
            (entry.email ?
              <div key="mail" className="pure-g">
                <i className= "pure-u-2-24 fa fa-envelope" />
                <EntryLink className="pure-u-22-24" href={ "mailto:" + entry.email}>
                  {entry.email}
                </EntryLink>
              </div>
              : null),
            (entry.telephone
              ?
              <div key="tel" className="pure-g">
                <i className="pure-u-2-24 fa fa-phone" />
                <span className="pure-u-22-24">
                  { entry.telephone }
                </span>
              </div>
              : null),
            ((entry.street || entry.zip || entry.city) ?
              <div key="addr" className = "address pure-g">
                <i className = "pure-u-2-24 fa fa-map-marker" />
                <div>
                  <Address { ...entry } />
                </div>
              </div>
              : null),
            (entry.tags && entry.tags.filter(t => t !="").length > 0
              ? Tags(entry.tags, dispatch)
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