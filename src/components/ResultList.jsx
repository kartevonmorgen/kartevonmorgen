import React    from "react"
import Actions  from "../Actions"
import Address  from "./AddressLine"
import { pure } from "recompose"
import Flower   from "./Flower";
import NavButton from "./NavButton";
import styled   from "styled-components";
import i18n     from "../i18n";
import { NAMES } from "../constants/Categories"
import { translate          } from "react-i18next";

const AddressWrapper = styled.div`
  font-size: 0.8em;
  color: #888;
`;

const ResultListElement = ({highlight, entry, ratings, onClick, onMouseEnter, onMouseLeave, t}) => {
  var css_class = highlight ? 'highlight-entry ' : '';
  css_class = css_class + NAMES[entry.categories && entry.categories[0]];
  return (
    <li
      key           = { entry.id }
      className     = { css_class }
      onClick       = { (ev) => { onClick(entry.id, {lat: entry.lat, lng: entry.lng}) }}
      onMouseEnter  = { (ev) => { ev.preventDefault(); onMouseEnter(entry.id) }}
      onMouseLeave  = { (ev) => { ev.preventDefault(); onMouseLeave(entry.id) }} >
      <div className = "pure-g">
        <div className = "pure-u-23-24">
          <div className="category">
            <span className="category">
              { t("category." + NAMES[entry.categories && entry.categories[0]]) }
            </span>
          </div>
          <div>
            <span className="title">{entry.title}</span>
          </div>
          <div>
            <span className= "subtitle">{entry.description}</span>
          </div>
          { (entry.street || entry.zip || entry.city)
              ? <AddressWrapper><Address { ...entry } /></AddressWrapper>
              : null
          }
          <div className="flower">{ Flower(ratings,30) }</div>
          {
            (entry.tags.length > 0)
              ? <div className="tags" >
                  <ul >
                  { entry.tags.map(t => <li key={t}>{t}</li>) }
                  </ul>
                </div>
              : null
          }
        </div>
        <div className = "pure-u-1-24 chevron">
          <i className = "fa fa-chevron-right" />
        </div>
      </div>
    </li>)
}

const ResultList = ({ dispatch, waiting, entries, ratings, highlight, onClick,
  moreEntriesAvailable, onMoreEntriesClick, t}) => {

  let results = entries.map( e =>
    <ResultListElement
      entry        = { e            }
      ratings      = { (e.ratings || []).map(id => ratings[id])}
      key          = { e.id         }
      highlight    = { highlight.indexOf(e.id) >= 0 }
      onClick      = { (id, center) => { dispatch(Actions.setCurrentEntry(id, center)) }}
      onMouseEnter = { (id) => { dispatch(Actions.highlight(e.id)) }}
      onMouseLeave = { (id) => { dispatch(Actions.highlight()) }}
      t            = { t } />);
  if(moreEntriesAvailable && !waiting){
    results.push(
      <li key="show-more-entries">
      <div>
        <a onClick = { onMoreEntriesClick } href="#">
          {t("resultlist.showMoreEntries")}
        </a>
      </div>
      </li>
    );
  }

  return (
    <div>
      <div className= "result-list">
      {
        (results.length > 0)
          ? <ul>{results}</ul>
          : (waiting ?
          <p className= "loading">
            <span>{t("resultlist.entriesLoading")}</span>
          </p>
          : <p className= "no-results">
              <i className= "fa fa-frown-o" />
              <span>{t("resultlist.noEntriesFound")}</span>
            </p>)
      }
      </div>
      <nav className="menu pure-g">
        <NavButton
          key = "back"
          classname = "pure-u-1"
          icon = "fa fa-plus"
          text = {t("resultlist.addEntry")}
          onClick = {() => {
            dispatch(Actions.showNewEntry());
          }}
          />
      </nav>
    </div>)
}

module.exports = translate("translation")(pure(ResultList))
