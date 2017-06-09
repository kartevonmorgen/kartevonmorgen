import Message    from "./Message";
import Actions    from "../Actions";
import { DONATE } from "../constants/URLs";
import V          from "../constants/PanelView";

module.exports = ({view, dispatch}) => {

  switch (view.modal) {

    case V.LOCATE:
      return (
        <div className= 'modal'>
          <Message
            iconClass = "fa fa-spinner fa-pulse"
            message = " Dein aktueller Standort wird gesucht ..."
            cancelButtonLabel = "abbrechen"
            onCancel = { () => dispatch(Actions.cancelOwnPosition()) }
            />
        </div>
      );

    case V.LOCATE_DISABLED:
      return (
        <div className = 'modal'>
          <Message
            iconClass = "fa fa-exclamation-triangle"
            message = { " " +
              `Der Standort kann nicht ermittelt werden.
              Die Standortbestimmung ist in den Browser-
              oder System-Einstellungen deaktiviert, oder
              das GPS hat keinen Empfang.` }
            cancelButtonLabel = "schließen"
            onCancel = { () => dispatch(Actions.cancelOwnPosition()) }
            actionButtonLabel = "nochmal versuchen"
            actionButtonIcon = "fa fa-repeat"
            onAction = { () => dispatch(Actions.showOwnPosition15minutes()) }
            />
        </div>
      );

    case V.DONATE_FOR_EVENTS:
      return (
        <div className = 'modal'>
          <Message
            iconClass = "fa fa-info-circle"
            message = { " " +
              `Events werden zur Zeit noch nicht unterstützt.

              Ob Tagung, Konferenz oder Festival - auf der Karte von morgen
              sollen auch bald Events eingetragen werden.
              Wir planen außerdem einen Veranstaltungskalender,
              der die Ergebnisse anzeigt und exportiert.

              Helfe mit, damit diese Funktion schon bald verfügbar ist
              und beteilige Dich an der Spendenaktion auf betterplace.org!` }
            cancelButtonLabel = "schließen"
            onCancel = { () => dispatch(Actions.showFeatureToDonate(null)) }
            actionButtonLabel = "Spenden"
            actionButtonIcon = "fa fa-external-link"
            onAction = { () => window.open(DONATE.link, '_blank').focus() }
            />
        </div>
      );
    default:
      return <div></div>;
  }
}
