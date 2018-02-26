import React, { Component }   from "react";
import Address                from "./AddressLine";
import { pure }               from "recompose";
import { NAMES }              from "../constants/Categories";
import styled                 from "styled-components";
import Colors                 from "./styling/Colors"
import Ratings                from "./Ratings";
import NavButton              from "./NavButton";
import { translate }          from "react-i18next";
import Actions                from "../Actions";

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

const Tags = (tags=[]) =>
  <TagsWrapper key="tags" className = "pure-g">
    <i className = "pure-u-2-24 fa fa-tags" />
    <span className = "pure-u-22-24">
      <TagList>
      { tags
          .filter(t => t != "")
          .map(t => <Tag key={t}>{t}</Tag>)
      }
      </TagList>
    </span>
  </TagsWrapper>

const EntryDetailPage = styled.div`
  padding:  1em;
  max-width: 500px;
`;

const EntryLink = styled.a`
  color: ${Colors.darkGray};
  text-decoration: none;
`;

const EntryTitle = styled.h3`
  margin-top:  0;
  color:       ${Colors.anthracite};
`;

const EntryDescription = styled.p`
  color: ${Colors.darkGray};
`;

const CategoryDescription = styled.div`
  text-align:      right;
  text-transform:  uppercase;
  color:    ${props => Colors[props.category]};
`;

const EntryDetailsOtherData = styled.div`
  font-family: Museo;
`;

class EntryDetails extends Component {

  render() {
    const { entry, t, dispatch } = this.props;

    if (!entry) {
      return(
        <EntryDetailPage>
          <span>{t("entryDetails.loadingEntry")}</span>
        </EntryDetailPage>
      );
    }
    else {
      return (
      <div>
        <EntryDetailPage>
          <CategoryDescription category={NAMES[entry.categories && entry.categories[0]]}>
            <span>{ t("category." + NAMES[[entry.categories && entry.categories[0]]])}</span>
          </CategoryDescription>
          <div>
            <EntryTitle>{entry.title}</EntryTitle>
            <EntryDescription>{entry.description}</EntryDescription>
            <EntryDetailsOtherData>{[
              (entry.homepage ?
                <div key="hp" className="pure-g">
                  <i className = "pure-u-2-24 fa fa-globe" />
                  <EntryLink className="pure-u-22-24" href={entry.homepage} target="_blank">
                    { entry.homepage }
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
                ? Tags(entry.tags)
                : null)
            ]}</EntryDetailsOtherData>
          </div>
        </EntryDetailPage>
        <nav className="menu pure-g">
          <NavButton
            keyName = "back"
            classname = "pure-u-1-2"
            icon = "fa fa-chevron-left"
            text = {t("entryDetails.back")}
            onClick = {() => {
              this.props.dispatch(Actions.setCurrentEntry(null, null));
              this.props.dispatch(Actions.showSearchResults());
              this.props.dispatch(Actions.setCenterInUrl(map.center));
            }}
          />
          <NavButton
            keyName = "edit"
            classname = "pure-u-1-2"
            icon = "fa fa-pencil"
            text = {t("entryDetails.edit")}
            onClick = {() => {
              this.props.dispatch(Actions.editCurrentEntry());
            }}
          />
        </nav>
      </div>)
    }
  }
}

module.exports = translate('translation')(pure(EntryDetails))
