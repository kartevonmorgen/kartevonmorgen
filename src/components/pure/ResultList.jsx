import React                from "react"
import { translate }        from "react-i18next";
import PropTypes            from "prop-types";
import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
import styled               from "styled-components";
import Actions              from "../../Actions"
import Flower               from "../Flower";
import EventTimes           from "./EventTimes";
import { NAMES, IDS }       from "../../constants/Categories"
import STYLE                from "../styling/Variables"

const ResultListElement = ({highlight, entry, ratings, onClick, onPressEnter, onMouseEnter, onMouseLeave, onFocus, onBlur, tabIndex, t}) => {
  var css_class = highlight ? 'highlight-entry ' : '';
  css_class = css_class + NAMES[entry.categories && entry.categories[0]];
  const isEvent = (entry.categories && entry.categories[0] === IDS.EVENT);
  const title = getTruncatedTitle(entry.title, 60); // maximally two lines
  const description = getTruncatedDescription(entry.description, 110); // maximally two lines

  return (
    <ListElement
      key           = { entry.id }
      className     = { css_class }
      tabIndex = {tabIndex}
      onClick = {() => {onClick(entry.id, {lat: entry.lat, lng: entry.lng})}}
      onKeyPress       = { (ev) => {
        ev.preventDefault()
        if (ev.key === "Enter") {
          onPressEnter(entry.id, {lat: entry.lat, lng: entry.lng})
        }
      }}
      onMouseEnter  = { (ev) => { ev.preventDefault(); onMouseEnter(entry.id) }}
      onMouseLeave  = { (ev) => { ev.preventDefault(); onMouseLeave(entry.id) }}
      onFocus = {(ev) => {ev.preventDefault(); onFocus(entry.id)}}
      onBlur = {(ev) => {ev.preventDefault(); onBlur(entry.id)}}
    >
      <OuterWrapper>
        <TitleCategoryDescriptionsAndFlower>
          <TitleCategoryAndDescription>
            <span role="search result category" className="category">
              { t("category." + NAMES[entry.categories && entry.categories[0]]) }
            </span>
            <div role="entry title">
              <EntryTitle role="entry header" id={entry.id} className="title">{title}</EntryTitle>
            </div>
            { getBody(isEvent, description, entry.city, entry.organizer) }
          </TitleCategoryAndDescription>
          { !isEvent ?
            <FlowerWrapper>
              <Flower ratings={ratings} radius={30} showTooltip={false}/>
            </FlowerWrapper>
          : <EventTimeLabel start={ entry.start }/> }
        </TitleCategoryDescriptionsAndFlower>
        {
          entry.tags && !isEvent && (entry.tags.length > 0)
            ? <TagsWrapper>
              <ul role="list of tags" aria-label="tags">
                {
                  entry.tags.slice(0, 5).map((t, index) =>
                    (t !== '') ? <Tag role="tag" aria-label={`tag ${t}`} key={index}>#{t}</Tag> : null
                  )
                }
              </ul>
            </TagsWrapper>
            : null
        }
      </OuterWrapper>
    </ListElement>)
}

const getBody = (isEvent, description, city, organizer) => {
  if (isEvent) {
    return (
      <EventBody>
        <div>{city}</div>
        <div>{organizer}</div>
      </EventBody>
    );
  } else {
    return (<Description>{description}</Description>);
  }
}

const ResultList = props => {

  const {
    dispatch,
    waiting,
    entries,
    ratings,
    highlight,
    moreEntriesAvailable,
    onMoreEntriesClick,
    t,
    zoom
  } = props

  let results = entries.map( (e, i) =>
    <ResultListElement
      tabIndex     = {i ? -1 : 2}
      entry        = { e            }
      ratings      = { (e.ratings || []).map(id => ratings[id])}
      key          = { e.id         }
      highlight    = { highlight.indexOf(e.id) >= 0 }
      onClick      = { (id, center) => {
        if (center) {
          dispatch(Actions.setCurrentEntry(id, center))
        }
      }}
      onPressEnter= { (id, center) => {
        if (center) {
          dispatch(Actions.setCurrentEntry(id, center))
        }
      }}
      onMouseEnter = { (id) => { dispatch(Actions.highlight(id)) }}
      onMouseLeave = { (id) => { dispatch(Actions.highlight()) }}
      onFocus = {(id) => {dispatch(Actions.highlight(id))}}
      onBlur={(id) => {dispatch(Actions.highlight())}}
      t            = { t } />);

  if(moreEntriesAvailable && !waiting){
    results.push(
      <ListElement>
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
      <div className="result-list">
        {
          (results.length > 0) ?
            (
              <React.Fragment>
                <ul id="result-list">{results}</ul>
                {results.length <= 20 && zoom &&
                  <div className="pure-g">
                    <ZoomButton
                      className="pure-button pure-button-primary pure-u-1-1"
                      onClick={() => dispatch(Actions.setZoom(zoom/2))}
                    >
                      Zoom out
                    </ZoomButton>
                  </div>
                }
              </React.Fragment>
            ) :
            (waiting ?
              <p className="loading">
                <span>{t("resultlist.entriesLoading")}</span>
              </p> :
              <p className="no-results">
                <FontAwesomeIcon icon={['far', 'frown']}/>
                <span>{t("resultlist.noEntriesFound")}</span>
                {zoom &&
                <div className="pure-g">
                  <ZoomButton
                    className="pure-button pure-button-primary pure-u-1-1"
                    onClick={() => dispatch(Actions.setZoom(zoom/2))}
                  >
                    Zoom out
                  </ZoomButton>
                </div>
                }
              </p>)
        }
      </div>
    </Wrapper>)
}

const getTruncatedTitle = (title, maxCharacters) => {
  if (title) {
    if (title.length > maxCharacters + 5) {
      return title.substring(0, maxCharacters) + "...";
    } else {
      return title;
    }
  } else {
    return "";
  }
}

const getTruncatedDescription = (description, maxCharacters) => {
  if(description && description.length > maxCharacters - 10) {
    description = description.substring(0, maxCharacters - 29 + description.substring(maxCharacters - 30).indexOf(". ")) + '...';
  }
  if(description && description.length >  maxCharacters) {
    description = description.substring(0, maxCharacters - 29 + description.substring(maxCharacters - 30).indexOf(" ") - 1) + '...';
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
  onClick:              PropTypes.func,
  zoom:                 PropTypes.number.isRequired,
}

export default translate("translation")(ResultList)

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
  margin: 12px 7px 10px 10px;
`

const EntryTitle = styled.h3`
  font-size: 1.1em;
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
  padding-bottom: 0.4em;
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
  &:focus {
    background: #fff;
  }
  &.event {
    &.current-entry {
      border-left: 5px solid ${STYLE.event};
    }
    &:hover {
      border-left: 5px solid ${STYLE.event};
    }
    &:focus {
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
    &:focus {
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
    &:focus {
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

const EventBody = styled.div`
  font-size: 0.8em;
  margin-top: 2px;
  max-height: ${14 * 3}px;
  overflow: hidden;
  hyphens: auto;
  color: #555;
  > div {
    margin: 1px 0;
  }
`

const Description = styled.div`
  margin-top: 2px;
  max-height: ${14 * 3}px;
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
  margin-top: 5px;
  float: left;
  ul {
    list-style: none;
    padding: 0;
    margin: 0;
  }
`

const Tag = styled.span `
  line-height: 14px;
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
  height: 12px;
  overflow: hidden;
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
        margin: 20px 0 0 0;
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

const ZoomButton = styled.button`
  display: block;
  margin-left: 8px;
  margin-top: 15px;
  margin-bottom: 15px;
  width: 100%;
  align-text: center;
`
