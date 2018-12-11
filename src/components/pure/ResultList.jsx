import React                from "react"
import ReactDOM             from "react-dom"
import { translate }        from "react-i18next";
import PropTypes            from "prop-types";
import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
import styled               from "styled-components";
import Actions              from "../../Actions" //TODO: remove dependency
import Flower               from "../Flower";
import NavButton            from "./NavButton";
import EventTimes           from "./EventTimes";
import i18n                 from "../../i18n";
import { NAMES, IDS }       from "../../constants/Categories"
import STYLE                from "../styling/Variables"

const ResultListElement = ({highlight, entry, ratings, onClick, onMouseEnter, onMouseLeave, t}) => {
  var css_class = highlight ? 'highlight-entry ' : '';
  css_class = css_class + NAMES[entry.categories && entry.categories[0]];
  const isEvent = (entry.categories && entry.categories[0] === IDS.EVENT);

  entry.description = getTruncatedDescription(entry);
  return (
    <ListElement
      key           = { entry.id }
      className     = { css_class }
      onClick       = { (ev) => { onClick(entry.id, {lat: entry.lat, lng: entry.lng}) }}
      onMouseEnter  = { (ev) => { ev.preventDefault(); onMouseEnter(entry.id) }}
      onMouseLeave  = { (ev) => { ev.preventDefault(); onMouseLeave(entry.id) }} >
      <OuterWrapper>
        <TitleCategoryDescriptionsAndFlower>
          <TitleCategoryAndDescription>
            <span className="category">
              { t("category." + NAMES[entry.categories && entry.categories[0]]) }
            </span>
            <div>
              <EntryTitle id={entry.id} className="title">{entry.title}</EntryTitle>
            </div>
            <Description maxHeight={entry.descriptionMaxHeight}>{description}</Description>
          </TitleCategoryAndDescription>
          { !isEvent ?
            <FlowerWrapper>
              <Flower ratings={ratings} radius={30} showTooltip={false}/>
            </FlowerWrapper>
          : <EventTimeLabel start={ entry.start }/> }
        </TitleCategoryDescriptionsAndFlower>
        {
          entry.tags ? (entry.tags.length > 0)
            ? <TagsWrapper>
              <ul >
                { entry.tags.slice(0, 5).map((t, index) => (t !== '') ? <Tag key={index}>#{t}</Tag> : null) }
              </ul>
            </TagsWrapper>
            : null
            : null
        }
      </OuterWrapper>
    </ListElement>)
}

const ResultList = props => {

  const { dispatch, waiting, entries, ratings, highlight, onClick, moreEntriesAvailable, onMoreEntriesClick, t} = props

  const entriesNew = addDescriptionMaxHeightToEntries(entries);

  let results = entriesNew.map( e =>
    <ResultListElement
      entry        = { e            }
      ratings      = { (e.ratings || []).map(id => ratings[id])}
      key          = { e.id         }
      highlight    = { highlight.indexOf(e.id) >= 0 }
      onClick      = { (id, center) => {
        if (center) {
          dispatch(Actions.setCurrentEntry(id, center))
        }
      }}
      onMouseEnter = { (id) => { dispatch(Actions.highlight(e.id)) }}
      onMouseLeave = { (id) => { dispatch(Actions.highlight()) }}
      t            = { t } />);

  if(moreEntriesAvailable && !waiting){
    results.push(
      <ListElement key="show-more-entries">
        <div>
          <a onClick = { onMoreEntriesClick } href="#">
            {t("resultlist.showMoreEntries")}
          </a>
        </div>
      </ListElement>
    );
  }
    
  return (
  <Wrapper>
    <div className= "result-list">
    {
      (results.length > 0)
        ? <ul>{results}</ul>
        : (waiting ?
        <p className= "loading">
          <span>{t("resultlist.entriesLoading")}</span>
        </p>
        : <p className= "no-results">
            <FontAwesomeIcon icon={['far', 'frown']} /> <span>{t("resultlist.noEntriesFound")}</span>
          </p>)
    }
    </div>
  </Wrapper>)
}

const addDescriptionMaxHeightToEntries = (entries) => {
  // In order to find out how much vertical space is left for the description
  // we render the title to a hidden div and count the lines that the title takes
  // (we can't simply look at the number of characters since the font is not mono spaced)
  let entriesNew = [];
  let div = document.getElementById('hidden-div');
  div.innerHTML = "";
  let numLinesUntilCurrent = div.offsetHeight / 22;
  for (let i=0; i<entries.length; i++) {
    let entry = entries[i];
    
    numLinesUntilCurrent = div.offsetHeight / 22;

    let h3 = document.createElement("h3");
    h3.style = 'margin:0; font-size:1.2em; font-weight:500; font-family: "Rubik",sans-serif;'
    h3.appendChild(document.createTextNode(entry.title));
    div.style = 'width: 256.06px;'
    if (div) {
      div.appendChild(h3)
      const totalNumLines = div.offsetHeight / 22; // line-height of title is 22px;
      const linesOfTitle = totalNumLines - numLinesUntilCurrent;
      numLinesUntilCurrent += linesOfTitle;
      switch (linesOfTitle) {
        case 1:
          entry.descriptionMaxHeight = 42; // line-height of description is 14px, so height of div should be multiples of 14
          entry.maxCharacters = 140;
          break;

        case 2:
          entry.descriptionMaxHeight = 28;
          entry.maxCharacters = 100;
          break;

        default:
          entry.descriptionMaxHeight = 0;
          entry.maxCharacters = 0;
      }
    }
    entriesNew.push(entry);
  }
  div.setAttribute('style', 'display: none;');
  return entriesNew;
}

const getTruncatedDescription = (entry) => {
  let description = entry.description;
  if(description && description.length > entry.maxCharacters - 10) {
    description = description.substring(0,entry.maxCharacters - 29 + description.substring(entry.maxCharacters - 30).indexOf(". ")) + '...';
  }
  if(description && description.length > entry.maxCharacters) {
    description = description.substring(0,entry.maxCharacters - 29 + description.substring(entry.maxCharacters - 30).indexOf(" ") - 1) + '...';
  }
  return description;
}

ResultList.propTypes = {
  dispatch:             PropTypes.func.isRequired,
  waiting:              PropTypes.bool.isRequired,
  entries:              PropTypes.array.isRequired,
  ratings:              PropTypes.object.isRequired,
  highlight:            PropTypes.array.isRequired,
  moreEntriesAvailable: PropTypes.bool.isRequired,
  onMoreEntriesClick:   PropTypes.func.isRequired,
  t:                    PropTypes.func.isRequired,
  onClick:              PropTypes.func
}

module.exports = translate("translation")(ResultList)

const FakeTitleToFindOutHeight = styled.h3`
  
  width: 256.06px;
  position: absolute; 
  top: 0; 
  left: 0; 
  z-index: 2000; 
  background: tomato;
  font-size: 1.2em;
  font-weight: 500;
  font-family: "Rubik", sans-serif;
`

const OuterWrapper = styled.div`
  display: flex;
  flex-direction: column;
  height: 100%;
`

const TitleCategoryDescriptionsAndFlower = styled.div`
  flex-grow: 1;
  display: flex;
  flex-direction: row;
  overflow-y: hidden;
`

const TitleCategoryAndDescription = styled.div`
  flex-grow: 1;
  display: flex;
  flex-direction: column;
`

const EventTimeLabel = (props) => {
  const { start } = props;
  return (<EventTimeWrapper><EventTimes start={ start } showTimes={ false }/></EventTimeWrapper>)
}

const EventTimeWrapper = styled.div`
  margin: 10px 7px 10px 10px;
`

const EntryTitle = styled.h3`
  font-size: 1.2em;
  margin: .2rem .3em .2rem 0;
  font-weight: 500;
  position: relative;
  z-index: 3;
`;

const ListElement = styled.li `
  position: relative;
  height: 115px;
  overflow-y: hidden;
  cursor: pointer;
  margin: 0;
  padding-left: 0.7em;
  padding-top: 0.7em;
  padding-right: 0.5em;
  padding-bottom: 0.7em;
  border-bottom: 1px solid #ddd;
  border-left: 5px solid transparent;
  div {
    &.category {
      height: 1.2em;
    }
  }
  &.current-entry {
    background: #fff;
  }
  &:hover {
    background: #fff;
  }
  &.event {
    &.current-entry {
      border-left: 5px solid ${STYLE.event};
    }
    &:hover {
      border-left: 5px solid ${STYLE.event};
    }
    span.category {
      color: ${STYLE.event};
    }
  }
  &.company {
    &.current-entry {
      border-left: 5px solid ${STYLE.company};
    }
    &:hover {
      border-left: 5px solid ${STYLE.company};
    }
    span.category {
      color: ${STYLE.company};
    }
  }
  &.initiative {
    &.current-entry {
      border-left: 5px solid ${STYLE.initiative};
    }
    &:hover {
      border-left: 5px solid ${STYLE.initiative};
    }
    span.category {
      color: ${STYLE.initiative};
    }
  }
  span {
    &.category {
      font-size: 0.8em;
      color: #aaa;
      text-transform: uppercase;
    }
    &.title {
      font-weight: bold;
      font-size: 1.2em;
      margin-right: 0.3em;
    }
    &.subtitle {
      font-size: 0.8em;
      color: #555;
    }
  }
  .highlight-entry {
    div.chevron {
      color: $darkGray;
    }
    &.initiative div.chevron {
      color: $initiative;
    }
    &.company div.chevron {
      color: $company;
    }
    &.event div.chevron {
      color: $event;
    }
  }
`

const Description = styled.div`
  max-height: ${props => props.maxHeight}px;
  overflow: hidden;
  hyphens: auto;
  position: relative;
  z-index: 3;
  font-size: 0.8em;
  color: #555;
`;

const TagsWrapper = styled.div`
  height: 21px;
  overflow-y: hidden;
  margin-top: 2px;
  float: left;
  ul {
    list-style: none;
    padding: 0;
    margin: 0;
  }
`

const Tag = styled.div `
  font-size: 0.75em;
  display: inline-block;
  background: #eaeaea;
  color: #333;
  border-radius: 0.3em;
  padding: 0.2em 0.4em;
  margin-right: 0.4em;
  margin-bottom: 0.2em;
  border: 0;
  letter-spacing: 0.06em;
`

const FlowerWrapper = styled.div `
  margin: 22px 10px 0 10px;
`

const Wrapper = styled.div `
  box-sizing: border-box;

  .result-list {
    p {
      &.no-results {
        margin: 0;
        padding: 1em;
        font-size: 0.9em;
        span {
          margin-left: 0.5em;
        }
      }
      &.loading {
        margin: 0;
        padding: 1em;
        font-size: 0.9em;
        span {
          margin-left: 0.5em;
        }
      }
    }
    ul {
      list-style: none;
      margin: 0;
      padding: 0;

    }
  }
`
