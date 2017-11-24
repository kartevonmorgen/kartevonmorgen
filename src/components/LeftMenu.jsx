import V                from "../constants/PanelView"
import Actions          from "../Actions"
import { EDIT, RATING } from "../constants/Form"

module.exports = ({view, dispatch, map, user}) => {

  switch(view) {
    case V.RESULT:
      return <li
        onClick = {() => { dispatch(Actions.showNewEntry()); }}
        className = "pure-u-1" >
          <i className = "fa fa-plus" />
          "Eintrag hinzufügen"
      </li>;
    case V.ENTRY:
      return
      <div>
        <li
          onClick = {() => {
            dispatch(Actions.setCurrentEntry(null, null));
            dispatch(Actions.showSearchResults());
            dispatch(Actions.setCenterInUrl(map.center));
          }}
          key = "back"
          className = "pure-u-1-2">
            <i className = "fa fa-chevron-left" />
            "zurück"
        </li>,
        <li
          onClick = { () => { dispatch(Actions.editCurrentEntry()) }}
          key = "edit"
          className = "pure-u-1-2">
            <i className= "fa fa-pencil" />
            "bearbeiten"
        </li>
      </div>;

    case V.EDIT:
    case V.NEW:
      return
      <div>
        <li
          key = "cancel"
          className = "pure-u-1-2"
          onClick = { () => {
            dispatch(initialize(EDIT.id, {}, EDIT.fields));
            dispatch((() => {
              switch(view) {
                case V.NEW:
                  return Actions.cancelNew();
                case V.EDIT:
                  return Actions.cancelEdit();
              }})()
            );
          }} >
            <i className = "fa fa-ban" />
            "abbrechen"
        </li>,
        <li
          key = "save"
          className ="pure-u-1-2"
          onClick = { function(){
              this.refs.form.submit()
          }}>
            <i className = "fa fa-floppy-o" />
            "speichern"
        </li>
      </div>;

    case V.NEW_RATING:
      return
        <div>
          <li
            key = "cancel"
            className = "pure-u-1-2"
            onClick = {() => {
              dispatch(initialize(RATING.id, {}, RATING.fields));
              dispatch(Actions.cancelRating());
            }}>
              <i className = "fa fa-ban" />
              "abbrechen"
          </li>,
          <li
            key = "save"
            className = "pure-u-1-2"
            onClick = { function(){
              this.refs.rating.submit()
            }}>
              <i className = "fa fa-floppy-o" />
              "bewerten"
          </li>
        </div>;
    case V.SUBSCRIBE_TO_BBOX:
       if(user.subscriptionExists) {
         return
         <div>
           <li
             key = "back"
             className = "pure-u-1-2"
             onClick = {() => {
               dispatch(Actions.showMap());
             }}>
               <i className = "fa fa-chevron-left" />
               "abbrechen"
           </li>,
           <li
             key = "save"
             className = "pure-u-1-2"
             onClick = {() => {
               dispatch(Actions.subscribeToBbox(map.bbox, true));
             }}>
               <i className = "fa fa-envelope" />
               "ändern"
           </li>,
           <li
             key = "delete"
             className = "pure-u-1-1"
             onClick = {() => {
               dispatch(Actions.unsubscribeFromBboxes(user.id));
             }}>
               <i className = "fa fa-trash" />
               "Abonnement abbestellen"
           </li>
         </div>
       }
       break;
    default:
      return
      <div>
        <li
          key = "back"
          className = "pure-u-1-2"
          onClick = { () => {
            dispatch(Actions.showSearchResults());
            dispatch(Actions.setCenterInUrl(map.center));
          }}>
            <i className = "fa fa-chevron-left" />
            "zurück"
        </li>,
        <li
          key = "save"
          className = "pure-u-1-2"
          onClick = {() => {
            dispatch(Actions.subscribeToBbox(map.bbox, false));
          }}>
            <i className = "fa fa-envelope" />
            "abonnieren"
        </li>
      </div>
  }
}
