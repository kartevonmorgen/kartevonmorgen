import React, { Component } from "react"
import { translate }        from "react-i18next";
import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
import PropTypes            from "prop-types"
import styled               from "styled-components";
import { initialize }       from "redux-form";

import V                    from "../constants/PanelView"
import ResultList           from "./pure/ResultList"
import SubscribeToBbox      from "./pure/SubscribeToBbox"
import Ratings              from "./pure/Ratings"
import EntryDetails         from "./pure/EntryDetails"
import EntryForm            from "./EntryForm"
import RatingForm           from "./pure/RatingForm"
import Message              from "./pure/Message"
import SidebarFooter        from "./pure/SidebarFooter"
import CityList             from "./pure/CityList"
import { EDIT, RATING }     from "../constants/Form"
import Actions              from "../Actions"
import STYLE                from "./styling/Variables"
import { IDS }              from "../constants/Categories"
import NavButton            from "./pure/NavButton";
import SearchBar            from "./SearchBar"
import ScrollableDiv        from "./pure/ScrollableDiv";

class Sidebar extends Component {

  entryContent = null;

  shouldComponentUpdate(nextProps) {
    if( !nextProps.view.showLeftPanel ) return false
    if( !this.props.view.showLeftPanel && nextProps.view.showLeftPanel ) return true
    if( nextProps.view.left !== this.props.view.left ) return true
    if( nextProps.view.left === this.props.view.left === V.ENTRY && nextProps.search.highlight === this.props.search.highlight ) return false
    // if( nextProps.view.left === V.RESULT
    //     && Object.keys(nextProps.search.entryResults).join() === Object.keys(this.props.search.entryResults).join()
    //     && Object.keys(nextProps.search.invisible).join() === Object.keys(this.props.search.invisible).join()
    //     && Object.keys(nextProps.search.eventResults).join() === Object.keys(this.props.search.eventResults).join()
    //     && Object.keys(nextProps.search.eventsWithoutPlace).join() === Object.keys(this.props.search.eventsWithoutPlace).join()
    // ) return false
    return true
  }

  render(){
    const { view, search, user, server, resultEntries, entries,
      ratings, dispatch, map, form, t, showAddEntryButton,
      showSearchBar, onTagClick, tagsClickable } = this.props;
    const { waiting_for_search_results } = view;
    const { explainRatingContext, selectedContext } = view;
    const invisibleEntries = search.invisible
      .filter(e => entries[e.id])
      .map(e => entries[e.id])
      .concat(search.eventsWithoutPlace);

    const entry = entries[search.current] || null;

    var content;
    switch (view.left) {
      case V.RESULT:
        content = (
          <ResultWrapper className="result">
            <ResultList
              waiting={ waiting_for_search_results }
              entries={ resultEntries }
              ratings={ ratings }
              highlight={ search.highlight}
              moreEntriesAvailable={ search.moreEntriesAvailable }
              onMoreEntriesClick={ () => { return dispatch(Actions.showAllEntries()); }}
              dispatch={dispatch}
            />
            {
              (search.cities.length > 0) ?
                <div>
                  <GroupHeader>
                    { t("search-results.cities") }
                  </GroupHeader>
                  <CityList
                    cities={ search.cities.slice(0, 5) }
                    onClick={ city => {
                      dispatch(Actions.setCenter({
                        lat: city.lat,
                        lng: city.lon
                      }));
                      return dispatch(Actions.setSearchText(''));
                    }}
                    selectedColor="rgba(0,0,0,0)"
                  />
                </div>
                : ""
            }
            {
              (invisibleEntries && invisibleEntries.length) ?
                <div>
                  <GroupHeader>
                    { t("search-results.results-out-of-bbox") }
                  </GroupHeader>
                  <ResultList
                    entries={ invisibleEntries }
                    ratings={ ratings }
                    highlight={ search.highlight }
                    onClick={ (id,center) => { return dispatch(Actions.setCurrentEntry(id, center)); }}
                    onMouseEnter={ id => { return dispatch(Actions.highlight(id)); }}
                    onMouseLeave={ id => { return dispatch(Actions.highlight()); }}
                    dispatch={ dispatch }
                    waiting={ waiting_for_search_results }
                    moreEntriesAvailable={ search.moreEntriesAvailable }
                    onMoreEntriesClick={ () => { return dispatch(Actions.showAllEntries()); }}
                  />
                </div>
                : ""
            }
          </ResultWrapper>
        );
        break;

      case V.ENTRY:
        if (!entry) {
          content = (<Message iconClass={ "spinner" } message={ t("loading-message") } />)
        } else {

          const onBack = () => {
            dispatch(Actions.setCurrentEntry(null, null));
            dispatch(Actions.showSearchResults());
            dispatch(Actions.setCenterInUrl(map.center));
          };

          const onEdit = () => {
            dispatch(Actions.editCurrentEntry());
          };

          const isEvent = entry.categories && entry.categories.length > 0 && entry.categories[0] === IDS.EVENT;
          content = (
            <ScrollableEntryDetailsWrapper>
              <EntryDetails
                entry={ entry }
                isEvent={ isEvent }
                onTag={ onTagClick }
                tagsClickable={ tagsClickable }
                onEdit={ onEdit }
                onBack={ onBack }
              />
              { !isEvent ?
                <Ratings
                  entry={ entry }
                  ratings={ (entry ? entry.ratings || [] : []).map(id => {
                    return ratings[id];
                  })}
                  onRate={ id => { return dispatch(Actions.showNewRating(id)); }}
                />
              : ''}
              { !isEvent ?
                <SidebarFooter
                    changed = {entry.created}
                    version = {entry.version}
                    title = {entry.title}
                />
              : ''}
            </ScrollableEntryDetailsWrapper>
          );
        }
        break;

      case V.EDIT:
      case V.NEW:
        content = (
          <EntryForm
            isEdit={ form[EDIT.id] ? form[EDIT.id].kvm_flag_id : null}
            license={ entries[search.current] ? entries[search.current].license : null}
            dispatch={ dispatch }
            onSubmit={ data => {
              return dispatch(Actions.saveEntry(
                {
                  id: form[EDIT.id] ? form[EDIT.id].kvm_flag_id : null,
                  title: data.title,
                  description: data.description,
                  tags: data.tags ? data.tags.split(',') : null,
                  homepage: data.homepage,
                  telephone: data.telephone,
                  lat: Number(data.lat),
                  lng: Number(data.lng),
                  street: data.street,
                  city: data.city,
                  email: data.email,
                  zip: data.zip,
                  version: ((form[EDIT.id] ? form[EDIT.id].values ? form[EDIT.id].values.version : null : null) || 0) + 1,
                  categories: [data.category],
                  image_url: data.image_url,
                  image_link_url: data.image_link_url
                }
              ));
            }}
          />
        );
        break;

      case V.NEW_RATING:
        const kvm_flag_id = form[RATING.id] ? form[RATING.id].kvm_flag_id : null;
        var ref;
        content = (
          <RatingForm
            ref={ 'rating' }
            entryid={ kvm_flag_id }
            entryTitle={
              form[RATING.id]
                ? entries[form[RATING.id].kvm_flag_id]
                  ? entries[form[RATING.id].kvm_flag_id].title
                  : null
                : null
            }
            onSubmit={ data => {
              return dispatch(Actions.createRating({
                entry: form[RATING.id] ? form[RATING.id].kvm_flag_id : null,
                title: data.title,
                context: data.context,
                value: data.value,
                comment: data.comment,
                source: data.source
              }));
            }}
            onCancel={ () => {
              dispatch(initialize(RATING.id, {}, RATING.fields));
              dispatch(Actions.cancelRating());
            }}
            contextToExplain={ explainRatingContext }
            selectedContext={ selectedContext }
            changeContext={ ratingContext => { return dispatch(Actions.explainRatingContext(ratingContext)); }}
          />
        );
        break;

      case V.WAIT:
        content = (
          <Message
            iconClass={ "spinner" }
            message={ t("loading-message") }
            onCancel={ () => { return dispatch(Actions.cancelWait()); }}
          />
        );
        break;

      case V.IO_ERROR:
        content = (
          <Message
            iconClass={ "exclamation-triangle" }
            message={ t("io-error.message") }
          />
        );
        break;

      case V.SUBSCRIBE_TO_BBOX:
        content = (
          <SubscribeToBbox
            subscriptionExists={ user.subscriptionExists }
            dispatch={ dispatch }
            bbox={ map.bbox }
            email={ user.email }
            mapCenter={ map.center }
          />
        );
        break;

      default:
        content = <div></div>
    }

    return(
      <SidebarComponent>
        {
          showSearchBar
          ? <div className={"search " + ((view.left === V.RESULT) ? 'open' : 'closed')}>
            <SearchBar
                searchText={search.text}
                categories={search.categories}
                type="integrated"
                disabled={view.left === V.EDIT || view.left === V.NEW}
                toggleCat={ c => {
                  if(search.categories.includes(c)){
                    dispatch(Actions.disableSearchCategory(c));
                  } else {
                    dispatch(Actions.enableSearchCategory(c));
                  }
                  return dispatch(Actions.search());
                }}
                onChange={txt => {
                  if (txt == null) {
                    txt = "";
                  }
                  dispatch(Actions.setSearchText(txt));
                  return dispatch(Actions.search());
                }}
                onEscape={ () => {
                  return dispatch(Actions.setSearchText(''));
                }}
                onEnter={ () => {}}      // currently not used, TODO
                loading={ server.loadingSearch }
              />
          </div>
          : ""
        }
        {
          content
        }
        {
          (view.left === V.RESULT) && showAddEntryButton
          ? <AddEntryButton>
              <NavButton
                key = "back"
                classname = "pure-u-1"
                icon = "plus"
                text = {t("resultlist.addEntry")}
                onClick = {() => {
                  dispatch(Actions.showNewEntry());
                }}
              />
            </AddEntryButton>
          : ""
        }
      </SidebarComponent>
    );
  }
}

const ScrollableEntryDetailsWrapper = styled(ScrollableDiv)`
  height: 100%;
  display: flex;
  flex-direction: column;
`

const SidebarComponent = styled.div`
  display: flex;
  flex-direction: column;
  height: 100%;
`

Sidebar.propTypes = {
  view:           PropTypes.object.isRequired,
  search:         PropTypes.object.isRequired,
  map:            PropTypes.object.isRequired,
  user:           PropTypes.object,
  form:           PropTypes.object,
  resultEntries:  PropTypes.array,
  entries:        PropTypes.object.isRequired,
  ratings:        PropTypes.object,
  dispatch:       PropTypes.func,
  t:              PropTypes.func.isRequired
}

export default Sidebar


const GroupHeader = styled.div `
  border-top: 3px solid ${STYLE.lightGray};
  padding: 0.5em 1em 0.5em 1em;
  margin: 0;
  background: #eaeaea;
  color: #666;
`

const AddEntryButton = styled.nav`
  z-index: 10;
  padding: 0;
  margin: 0;
  background: ${STYLE.coal};
  text-align: center;
  bottom: 0;
  li {
    cursor: pointer;
    box-sizing: border-box;
    font-weight: normal;
    padding: 0.3em;
    font-size: 1.2em;
    border: none;
    color: ${STYLE.lightGray};
    background: transparent;
    border-top: 4px solid transparent;
    border-bottom: 4px solid transparent;
    &:hover {
      color: #fff;
      border-bottom: 4px solid #fff;
    }
    i {
      margin-right: 0.5em;
    }
  }
`;

const ResultWrapper = styled(ScrollableDiv)`
  background: #f7f7f7;

   /* city list only for sidebar, not landing page TODO: where to put this? */
  .city-list ul {
    background: #f7f7f7;
    li {
      padding: 0.2em;
      padding-left: 0.7em;
      padding-right: 0.7em;
      line-height: 0.9;
      border-left: 5px solid transparent;
      &:hover {
        background: #fff;
        border-left: 5px solid ${STYLE.darkGray};
        div.chevron {
          color: ${STYLE.darkGray};
        }
      }
      span {
        &.state {
          color: #555;
        }
        &.country {
          color: #888;
        }
        &.prefix {
          color: #888;
        }
      }
    }
  }
`
