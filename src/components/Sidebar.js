import React, { Component } from "react"
import V                    from "../constants/PanelView"
import PropTypes            from "prop-types"
import ResultList           from "./ResultList"
import SubscribeToBbox      from "./SubscribeToBbox"
import Ratings              from "./Ratings"
import EntryDetails         from "./EntryDetails"
import EntryForm            from "./EntryForm"
import RatingForm           from "./RatingForm"
import Message              from "./Message"
import CityList             from "./CityList"
import { EDIT, RATING }     from "../constants/Form"
import Actions              from "../Actions"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import STYLE                from "./styling/Variables"
import styled               from "styled-components";


class Sidebar extends Component {

  entryContent = null;

  setEntryContentRef = (elem) => {
    this.entryContent = elem;
  };

  scrollToTop = () =>{
    if(this.entryContent) this.entryContent.scrollTo(0,0)
  }

  render(){
    const { view, search, user, resultEntries, entries,
      ratings, dispatch, map, form, t } = this.props;
    const { waiting_for_search_results } = view;
    const { explainRatingContext, selectedContext } = view;
    const invisibleEntries = search.invisible.filter(e => entries[e.id]).map(e => entries[e.id]);

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
                    cities={ search.cities }
                    maxEntries={ 5 }
                    onClick={ city => {
                      dispatch(Actions.setCenter({
                        lat: city.lat,
                        lng: city.lon
                      }));
                      return dispatch(Actions.setSearchText(''));
                    }}
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
        this.scrollToTop()
        content = (
          <div className="content" ref={this.setEntryContentRef}>
            <EntryDetails
              entry={ entries[search.current] || null }
              dispatch={ dispatch }
              mapCenter={ map.center }
            />
            <Ratings
              entry={ entries[search.current] || null}
              ratings={ (entries[search.current] ? entries[search.current].ratings || [] : []).map(id => {
                return ratings[id];
              })}
              onRate={ id => { return dispatch(Actions.showNewRating(id)); }}
            />
          </div>
        );
        break;

      case V.EDIT:
      case V.NEW:
        content = (
          <div className="content-above-buttons">
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
          </div>
        );
        break;

      case V.NEW_RATING:
        const kvm_flag_id = form[RATING.id] ? form[RATING.id].kvm_flag_id : null;
        var ref;
        content = (
          <div className="content-above-buttons">
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
              contextToExplain={ explainRatingContext }
              selectedContext={ selectedContext }
              changeContext={ ratingContext => { return dispatch(Actions.explainRatingContext(ratingContext)); }}
            />
          </div>
        );
        break;

      case V.WAIT:
        content = (
          <div className={ "content-above-buttons" }>
            <Message
              iconClass={ "spinner" }
              message={ t("loading-message") }
              onCancel={ () => { return dispatch(Actions.cancelWait()); }}
            />
          </div>
        );
        break;

      case V.IO_ERROR:
        content = (
          <div className={ "content-above-buttons" }>
            <Message
              iconClass={ "fa fa-exclamation-triangle" }
              message={ t("io-error.message") }
            />
          </div>
        );
        break;

      case V.SUBSCRIBE_TO_BBOX:
        content = (
          <div className={ "content-above-buttons" }>
            <SubscribeToBbox
              subscriptionExists={ user.subscriptionExists }
              dispatch={ dispatch }
              bbox={ map.bbox }
              username={ user.username }
              mapCenter={ map.center }
            />
          </div>
        );
        break;

      default:
        content = <div></div>
    }

    return(content);
  }
}

Sidebar.propTypes = {
  view:           PropTypes.object.isRequired,
  search:         PropTypes.object.isRequired,
  map:            PropTypes.object.isRequired,
  user:           PropTypes.object.isRequired,
  form:           PropTypes.object.isRequired,
  resultEntries:  PropTypes.array.isRequired,
  entries:        PropTypes.object.isRequired,
  ratings:        PropTypes.object.isRequired,
  dispatch:       PropTypes.func.isRequired,
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


const ResultWrapper = styled.div `
  padding-bottom: 1.5em;
  height: calc(100vh - 107px);
  overflow-y: scroll;
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