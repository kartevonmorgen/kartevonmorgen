import V                from "../constants/PanelView"
import ResultList       from "./ResultList"
import { EDIT, RATING } from "../constants/Form"
import SubscribeToBbox  from "./SubscribeToBbox"

module.exports = ({view, dispatch, search, resultEntries, invisibleEntries, entries, ratings}) => {

  const { highlight, cities } = search;
  const { waiting_for_search_results, explainRatingContext, selectedContext } = view;

  switch (view.left) {

    case V.RESULT:
      return
        <div className = "result">
          <ResultList
            waiting       = { waiting_for_search_results }
            entries       = { resultEntries }
            ratings       = { ratings }
            highlight     = { highlight }
            onClick       = { (id, center) => { dispatch(Actions.setCurrentEntry(id, center)); }}
            onMouseEnter  = { (id) => { dispatch(Actions.highlight(id)); }}
            onMouseLeave  = { (id) => { dispatch(Actions.highlight()); }}
            moreEntriesAvailable  = { search.moreEntriesAvailable }
            onMoreEntriesClick    = { () => { dispatch(Actions.showAllEntries()); }}
          />

          { cities.length > 0 ?
            <div>
              <div className = 'group-header'>
                "Städte:"
                <CityList
                  cities  = {cities}
                  onClick = {(city) => {
                    dispatch(Actions.setCenter({
                      lat: city.lat,
                      lng: city.lon
                    }));
                    dispatch(Actions.setSearchText(''));
                  }}
                />
              </div>
            </div> : null
          }
          { invisibleEntries && invisibleEntries.length ?
            <div>
              <div className = 'group-header'>
                Weitere Ergebnisse außerhalb
                des sichtbaren Bereichs der Karte:
              </div>
              <ResultList
                entries       = { invisibleEntries }
                ratings       = { ratings }
                highlight     = { highlight }
                onClick       = { (id, center)  => { dispatch(Actions.setCurrentEntry(id, center)); }}
                onMouseEnter  = { (id)          => { dispatch(Actions.highlight(id)); }}
                onMouseLeave  = { (id)          => { dispatch(Actions.highlight()); }}
              />
            </div> : null
          }
        </div>
    case V.ENTRY:
      return
      <div className = "content">
        <EntryDetails
          entry = { entries[search.current] || null }
        />
        <Ratings
          entry   = { entries[search.current] || null }
          ratings = {
            (entries[search.current] ? (entries[search.current].ratings || []) : [])
            .map((id) => ratings[id])
          }
          onRate  = {(id) => { dispatch(Actions.showNewRating(id)) }}
        />
      </div>
    case V.EDIT:
    case V.NEW:
      return
      <div className = "content">
        <EntryForm
          ref = 'form'
          isEdit = { form[EDIT.id] && form[EDIT.id].kvm_flag_id != null }
          onSubmit = { (data) => {
            dispatch(Actions.saveEntry({
              id          : (form[EDIT.id] && form[EDIT.id].kvm_flag_id),
              title       : data.title,
              description : data.description,
              tags        : (data.tags && data.tags.split(',')),
              homepage    : data.homepage,
              telephone   : data.telephone,
              lat         : Number(data.lat),
              lng         : Number(data.lng),
              street      : data.street,
              city        : data.city,
              email       : data.email,
              zip         : data.zip,
              version     : (
                form[EDIT.id] &&
                form[EDIT.id].values &&
                ((form[EDIT.id].values.version || 0) + 1)
              ),
              categories  : [data.category]
            }));
          }}
        />
      </div>
    case V.NEW_RATING:
      return
      <div className = "content">
        <RatingForm
          ref         = 'rating'
          entryid     = {form[RATING.id] && form[RATING.id].kvm_flag_id }
          entryTitle  = {
            form[RATING.id] &&
            form[RATING.id].kvm_flag_id &&
            entries[form[RATING.id].kvm_flag_id].title
          }
          onSubmit = { (data) => {
            dispatch(Actions.createRating({
              entry   : (form[RATING.id] && form[RATING.id].kvm_flag_id),
              title   : data.title,
              context : data.context,
              value   : data.value,
              comment : data.comment,
              source  : data.source
            }));
          }}
          contextToExplain = { explainRatingContext }
          selectedContext = { selectedContext }
          changeContext = {(ratingContext) => {
            dispatch(Actions.explainRatingContext(ratingContext));
          }}
        />
      </div>
    case V.WAIT:
      return
      <div className = "content">
        <Message
          iconClass = "fa fa-spinner fa-pulse"
          message = " lade Daten vom Server ..."
          buttonLabel = "abbrechen"
          onCancel = {() => {
            dispatch(Actions.cancelWait());
          }}
        />
      </div>
    case V.IO_ERROR:
      return
      <div className = "content">
        <Message
          iconClass = "fa fa-exclamation-triangle"
          message = { " Server nicht erreichbar. " +
            "Bitte prüfe Deine Internetverbindung " +
            "oder versuche es später nochmal. "
          }
          buttonLabel = "schließen"
          onCancel = { () => {
            dispatch(Actions.closeIoErrorMessage());
          }}
        />
      </div>
    case V.SUBSCRIBE_TO_BBOX:
      return
      <div className = "content subscribe-to-bbox">
        <SubscribeToBbox subscriptionExists = { user.subscriptionExists } />
      </div>
    default:
      return null;
  }
}
