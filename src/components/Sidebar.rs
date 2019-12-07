// TODO: import React, { Component } from "react"
// TODO: import { translate }        from "react-i18next";
// TODO: import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
// TODO: import PropTypes            from "prop-types"
// TODO: import styled               from "styled-components";
// TODO: import { initialize }       from "redux-form";
// TODO:
// TODO: import V                    from "../constants/PanelView"
// TODO: import ResultList           from "./pure/ResultList"
// TODO: import SubscribeToBbox      from "./pure/SubscribeToBbox"
// TODO: import Ratings              from "./pure/Ratings"
// TODO: import EntryDetails         from "./pure/EntryDetails"
// TODO: import EntryForm            from "./EntryForm"
// TODO: import RatingForm           from "./pure/RatingForm"
// TODO: import Message              from "./pure/Message"
// TODO: import SidebarFooter        from "./pure/SidebarFooter"
// TODO: import CityList             from "./pure/CityList"
// TODO: import { EDIT, RATING }     from "../constants/Form"
// TODO: import Actions              from "../Actions"
// TODO: import STYLE                from "./styling/Variables"
// TODO: import { IDS }              from "../constants/Categories"
// TODO: import NavButton            from "./pure/NavButton";
// TODO: import SearchBar            from "./SearchBar"
// TODO: import ScrollableDiv        from "./pure/ScrollableDiv";
// TODO:
// TODO: class Sidebar extends Component {
// TODO:
// TODO:   entryContent = null;
// TODO:
// TODO:   shouldComponentUpdate(nextProps) {
// TODO:     if( !nextProps.view.showLeftPanel ) return false
// TODO:     if( !this.props.view.showLeftPanel && nextProps.view.showLeftPanel ) return true
// TODO:     if( nextProps.view.left !== this.props.view.left ) return true
// TODO:     if( nextProps.view.left === this.props.view.left === V.ENTRY && nextProps.search.highlight === this.props.search.highlight ) return false
// TODO:     // if( nextProps.view.left === V.RESULT
// TODO:     //     && Object.keys(nextProps.search.entryResults).join() === Object.keys(this.props.search.entryResults).join()
// TODO:     //     && Object.keys(nextProps.search.invisible).join() === Object.keys(this.props.search.invisible).join()
// TODO:     //     && Object.keys(nextProps.search.eventResults).join() === Object.keys(this.props.search.eventResults).join()
// TODO:     //     && Object.keys(nextProps.search.eventsWithoutPlace).join() === Object.keys(this.props.search.eventsWithoutPlace).join()
// TODO:     // ) return false
// TODO:     return true
// TODO:   }
// TODO:
// TODO:   render(){
// TODO:     const { view, search, user, server, resultEntries, entries,
// TODO:       ratings, dispatch, map, form, t, showAddEntryButton,
// TODO:       showSearchBar, onTagClick, tagsClickable } = this.props;
// TODO:     const { waiting_for_search_results } = view;
// TODO:     const { explainRatingContext, selectedContext } = view;
// TODO:     const invisibleEntries = search.invisible
// TODO:       .filter(e => entries[e.id])
// TODO:       .map(e => entries[e.id])
// TODO:       .concat(search.eventsWithoutPlace);
// TODO:
// TODO:     const entry = entries[search.current] || null;
// TODO:
// TODO:     var content;
// TODO:     switch (view.left) {
// TODO:       case V.RESULT:
// TODO:         content = (
// TODO:           <ResultWrapper className="result">
// TODO:             <ResultList
// TODO:               waiting={ waiting_for_search_results }
// TODO:               entries={ resultEntries }
// TODO:               ratings={ ratings }
// TODO:               highlight={ search.highlight}
// TODO:               moreEntriesAvailable={ search.moreEntriesAvailable }
// TODO:               onMoreEntriesClick={ () => { return dispatch(Actions.showAllEntries()); }}
// TODO:               dispatch={dispatch}
// TODO:             />
// TODO:             {
// TODO:               (search.cities.length > 0) ?
// TODO:                 <div>
// TODO:                   <GroupHeader>
// TODO:                     { t("search-results.cities") }
// TODO:                   </GroupHeader>
// TODO:                   <CityList
// TODO:                     cities={ search.cities.slice(0, 5) }
// TODO:                     onClick={ city => {
// TODO:                       dispatch(Actions.setCenter({
// TODO:                         lat: city.lat,
// TODO:                         lng: city.lon
// TODO:                       }));
// TODO:                       return dispatch(Actions.setSearchText(''));
// TODO:                     }}
// TODO:                     selectedColor="rgba(0,0,0,0)"
// TODO:                   />
// TODO:                 </div>
// TODO:                 : ""
// TODO:             }
// TODO:             {
// TODO:               (invisibleEntries && invisibleEntries.length) ?
// TODO:                 <div>
// TODO:                   <GroupHeader>
// TODO:                     { t("search-results.results-out-of-bbox") }
// TODO:                   </GroupHeader>
// TODO:                   <ResultList
// TODO:                     entries={ invisibleEntries }
// TODO:                     ratings={ ratings }
// TODO:                     highlight={ search.highlight }
// TODO:                     onClick={ (id,center) => { return dispatch(Actions.setCurrentEntry(id, center)); }}
// TODO:                     onMouseEnter={ id => { return dispatch(Actions.highlight(id)); }}
// TODO:                     onMouseLeave={ id => { return dispatch(Actions.highlight()); }}
// TODO:                     dispatch={ dispatch }
// TODO:                     waiting={ waiting_for_search_results }
// TODO:                     moreEntriesAvailable={ search.moreEntriesAvailable }
// TODO:                     onMoreEntriesClick={ () => { return dispatch(Actions.showAllEntries()); }}
// TODO:                   />
// TODO:                 </div>
// TODO:                 : ""
// TODO:             }
// TODO:           </ResultWrapper>
// TODO:         );
// TODO:         break;
// TODO:
// TODO:       case V.ENTRY:
// TODO:         if (!entry) {
// TODO:           content = (<Message iconClass={ "spinner" } message={ t("loading-message") } />)
// TODO:         } else {
// TODO:
// TODO:           const onBack = () => {
// TODO:             dispatch(Actions.setCurrentEntry(null, null));
// TODO:             dispatch(Actions.showSearchResults());
// TODO:             dispatch(Actions.setCenterInUrl(map.center));
// TODO:           };
// TODO:
// TODO:           const onEdit = () => {
// TODO:             dispatch(Actions.editCurrentEntry());
// TODO:           };
// TODO:
// TODO:           const isEvent = entry.categories && entry.categories.length > 0 && entry.categories[0] === IDS.EVENT;
// TODO:           content = (
// TODO:             <ScrollableEntryDetailsWrapper>
// TODO:               <EntryDetails
// TODO:                 entry={ entry }
// TODO:                 isEvent={ isEvent }
// TODO:                 onTag={ onTagClick }
// TODO:                 tagsClickable={ tagsClickable }
// TODO:                 onEdit={ onEdit }
// TODO:                 onBack={ onBack }
// TODO:               />
// TODO:               { !isEvent ?
// TODO:                 <Ratings
// TODO:                   entry={ entry }
// TODO:                   ratings={ (entry ? entry.ratings || [] : []).map(id => {
// TODO:                     return ratings[id];
// TODO:                   })}
// TODO:                   onRate={ id => { return dispatch(Actions.showNewRating(id)); }}
// TODO:                 />
// TODO:               : ''}
// TODO:               { !isEvent ?
// TODO:                 <SidebarFooter
// TODO:                     changed = {entry.created}
// TODO:                     version = {entry.version}
// TODO:                     title = {entry.title}
// TODO:                 />
// TODO:               : ''}
// TODO:             </ScrollableEntryDetailsWrapper>
// TODO:           );
// TODO:         }
// TODO:         break;
// TODO:
// TODO:       case V.EDIT:
// TODO:       case V.NEW:
// TODO:         content = (
// TODO:           <EntryForm
// TODO:             isEdit={ form[EDIT.id] ? form[EDIT.id].kvm_flag_id : null}
// TODO:             license={ entries[search.current] ? entries[search.current].license : null}
// TODO:             dispatch={ dispatch }
// TODO:             onSubmit={ data => {
// TODO:               return dispatch(Actions.saveEntry(
// TODO:                 {
// TODO:                   id: form[EDIT.id] ? form[EDIT.id].kvm_flag_id : null,
// TODO:                   title: data.title,
// TODO:                   description: data.description,
// TODO:                   tags: data.tags ? data.tags.split(',') : null,
// TODO:                   homepage: data.homepage,
// TODO:                   telephone: data.telephone,
// TODO:                   lat: Number(data.lat),
// TODO:                   lng: Number(data.lng),
// TODO:                   street: data.street,
// TODO:                   city: data.city,
// TODO:                   email: data.email,
// TODO:                   zip: data.zip,
// TODO:                   version: ((form[EDIT.id] ? form[EDIT.id].values ? form[EDIT.id].values.version : null : null) || 0) + 1,
// TODO:                   categories: [data.category],
// TODO:                   image_url: data.image_url,
// TODO:                   image_link_url: data.image_link_url
// TODO:                 }
// TODO:               ));
// TODO:             }}
// TODO:           />
// TODO:         );
// TODO:         break;
// TODO:
// TODO:       case V.NEW_RATING:
// TODO:         const kvm_flag_id = form[RATING.id] ? form[RATING.id].kvm_flag_id : null;
// TODO:         var ref;
// TODO:         content = (
// TODO:           <RatingForm
// TODO:             ref={ 'rating' }
// TODO:             entryid={ kvm_flag_id }
// TODO:             entryTitle={
// TODO:               form[RATING.id]
// TODO:                 ? entries[form[RATING.id].kvm_flag_id]
// TODO:                   ? entries[form[RATING.id].kvm_flag_id].title
// TODO:                   : null
// TODO:                 : null
// TODO:             }
// TODO:             onSubmit={ data => {
// TODO:               return dispatch(Actions.createRating({
// TODO:                 entry: form[RATING.id] ? form[RATING.id].kvm_flag_id : null,
// TODO:                 title: data.title,
// TODO:                 context: data.context,
// TODO:                 value: data.value,
// TODO:                 comment: data.comment,
// TODO:                 source: data.source
// TODO:               }));
// TODO:             }}
// TODO:             onCancel={ () => {
// TODO:               dispatch(initialize(RATING.id, {}, RATING.fields));
// TODO:               dispatch(Actions.cancelRating());
// TODO:             }}
// TODO:             contextToExplain={ explainRatingContext }
// TODO:             selectedContext={ selectedContext }
// TODO:             changeContext={ ratingContext => { return dispatch(Actions.explainRatingContext(ratingContext)); }}
// TODO:           />
// TODO:         );
// TODO:         break;
// TODO:
// TODO:       case V.WAIT:
// TODO:         content = (
// TODO:           <Message
// TODO:             iconClass={ "spinner" }
// TODO:             message={ t("loading-message") }
// TODO:             onCancel={ () => { return dispatch(Actions.cancelWait()); }}
// TODO:           />
// TODO:         );
// TODO:         break;
// TODO:
// TODO:       case V.IO_ERROR:
// TODO:         content = (
// TODO:           <Message
// TODO:             iconClass={ "exclamation-triangle" }
// TODO:             message={ t("io-error.message") }
// TODO:           />
// TODO:         );
// TODO:         break;
// TODO:
// TODO:       case V.SUBSCRIBE_TO_BBOX:
// TODO:         content = (
// TODO:           <SubscribeToBbox
// TODO:             subscriptionExists={ user.subscriptionExists }
// TODO:             dispatch={ dispatch }
// TODO:             bbox={ map.bbox }
// TODO:             email={ user.email }
// TODO:             mapCenter={ map.center }
// TODO:           />
// TODO:         );
// TODO:         break;
// TODO:
// TODO:       default:
// TODO:         content = <div></div>
// TODO:     }
// TODO:
// TODO:     return(
// TODO:       <SidebarComponent>
// TODO:         {
// TODO:           showSearchBar
// TODO:           ? <div className={"search " + ((view.left === V.RESULT) ? 'open' : 'closed')}>
// TODO:             <SearchBar
// TODO:                 searchText={search.text}
// TODO:                 categories={search.categories}
// TODO:                 type="integrated"
// TODO:                 disabled={view.left === V.EDIT || view.left === V.NEW}
// TODO:                 toggleCat={ c => {
// TODO:                   if(search.categories.includes(c)){
// TODO:                     dispatch(Actions.disableSearchCategory(c));
// TODO:                   } else {
// TODO:                     dispatch(Actions.enableSearchCategory(c));
// TODO:                   }
// TODO:                   return dispatch(Actions.search());
// TODO:                 }}
// TODO:                 onChange={txt => {
// TODO:                   if (txt == null) {
// TODO:                     txt = "";
// TODO:                   }
// TODO:                   dispatch(Actions.setSearchText(txt));
// TODO:                   return dispatch(Actions.search());
// TODO:                 }}
// TODO:                 onEscape={ () => {
// TODO:                   return dispatch(Actions.setSearchText(''));
// TODO:                 }}
// TODO:                 onEnter={ () => {}}      // currently not used, TODO
// TODO:                 loading={ server.loadingSearch }
// TODO:               />
// TODO:           </div>
// TODO:           : ""
// TODO:         }
// TODO:         {
// TODO:           content
// TODO:         }
// TODO:         {
// TODO:           (view.left === V.RESULT) && showAddEntryButton
// TODO:           ? <AddEntryButton>
// TODO:               <NavButton
// TODO:                 key = "back"
// TODO:                 classname = "pure-u-1"
// TODO:                 icon = "plus"
// TODO:                 text = {t("resultlist.addEntry")}
// TODO:                 onClick = {() => {
// TODO:                   dispatch(Actions.showNewEntry());
// TODO:                 }}
// TODO:               />
// TODO:             </AddEntryButton>
// TODO:           : ""
// TODO:         }
// TODO:       </SidebarComponent>
// TODO:     );
// TODO:   }
// TODO: }
// TODO:
// TODO: const ScrollableEntryDetailsWrapper = styled(ScrollableDiv)`
// TODO:   height: 100%;
// TODO:   display: flex;
// TODO:   flex-direction: column;
// TODO: `
// TODO:
// TODO: const SidebarComponent = styled.div`
// TODO:   display: flex;
// TODO:   flex-direction: column;
// TODO:   height: 100%;
// TODO: `
// TODO:
// TODO: Sidebar.propTypes = {
// TODO:   view:           PropTypes.object.isRequired,
// TODO:   search:         PropTypes.object.isRequired,
// TODO:   map:            PropTypes.object.isRequired,
// TODO:   user:           PropTypes.object,
// TODO:   form:           PropTypes.object,
// TODO:   resultEntries:  PropTypes.array,
// TODO:   entries:        PropTypes.object.isRequired,
// TODO:   ratings:        PropTypes.object,
// TODO:   dispatch:       PropTypes.func,
// TODO:   t:              PropTypes.func.isRequired
// TODO: }
// TODO:
// TODO: export default Sidebar
// TODO:
// TODO:
// TODO: const GroupHeader = styled.div `
// TODO:   border-top: 3px solid ${STYLE.lightGray};
// TODO:   padding: 0.5em 1em 0.5em 1em;
// TODO:   margin: 0;
// TODO:   background: #eaeaea;
// TODO:   color: #666;
// TODO: `
// TODO:
// TODO: const AddEntryButton = styled.nav`
// TODO:   z-index: 10;
// TODO:   padding: 0;
// TODO:   margin: 0;
// TODO:   background: ${STYLE.coal};
// TODO:   text-align: center;
// TODO:   bottom: 0;
// TODO:   li {
// TODO:     cursor: pointer;
// TODO:     box-sizing: border-box;
// TODO:     font-weight: normal;
// TODO:     padding: 0.3em;
// TODO:     font-size: 1.2em;
// TODO:     border: none;
// TODO:     color: ${STYLE.lightGray};
// TODO:     background: transparent;
// TODO:     border-top: 4px solid transparent;
// TODO:     border-bottom: 4px solid transparent;
// TODO:     &:hover {
// TODO:       color: #fff;
// TODO:       border-bottom: 4px solid #fff;
// TODO:     }
// TODO:     i {
// TODO:       margin-right: 0.5em;
// TODO:     }
// TODO:   }
// TODO: `;
// TODO:
// TODO: const ResultWrapper = styled(ScrollableDiv)`
// TODO:   background: #f7f7f7;
// TODO:
// TODO:    /* city list only for sidebar, not landing page TODO: where to put this? */
// TODO:   .city-list ul {
// TODO:     background: #f7f7f7;
// TODO:     li {
// TODO:       padding: 0.2em;
// TODO:       padding-left: 0.7em;
// TODO:       padding-right: 0.7em;
// TODO:       line-height: 0.9;
// TODO:       border-left: 5px solid transparent;
// TODO:       &:hover {
// TODO:         background: #fff;
// TODO:         border-left: 5px solid ${STYLE.darkGray};
// TODO:         div.chevron {
// TODO:           color: ${STYLE.darkGray};
// TODO:         }
// TODO:       }
// TODO:       span {
// TODO:         &.state {
// TODO:           color: #555;
// TODO:         }
// TODO:         &.country {
// TODO:           color: #888;
// TODO:         }
// TODO:         &.prefix {
// TODO:           color: #888;
// TODO:         }
// TODO:       }
// TODO:     }
// TODO:   }
// TODO: `
