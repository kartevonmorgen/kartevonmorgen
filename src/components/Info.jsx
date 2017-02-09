import React    from "react";
import { pure } from "recompose";
import URLs     from "../constants/URLs";
import pkg      from "json!../../package.json";

class Info extends React.Component {

  render () {

    let sv = null;

    if (this.props.server && this.props.server.version) {
      sv = <p className = "version">{
        "Version des Servers: v" + this.props.server.version
        }</p>;
    }

    return (
      <div className = "info">
        <h2>Das Projekt</h2>
        <p>
          Unsere interaktive Karte zeigt dir Orte in deiner Umgebung,
          an denen man sich schon heute für eine Welt von morgen einsetzt.
        </p>
        <p>
          Du hast eine Initiative, für die du Mitstreiter suchst?
          Du kennst ein Unternehmen, das nachhaltig wirtschaftet?
        </p>
        <p>
          Auf unserer Website kannst du andere darauf
          aufmerksam machen – und dich so für eine Sache
          einsetzen, die dir persönlich am Herzen liegt.
        </p>
        <p>
          Wir sind auf der Suche nach vielfältigen Projekten, Initiativen und
          Unternehmen, die den aktuellen sozialen, ökologischen und ökonomischen
          Umbrüchen alternativ entgegen wirken.
          Ihnen möchten wir einen gemeinsamen Online-Auftritt und damit eine
          erhöhte Aufmerksamkeit ermöglichen.
        </p>
        <p>
          Nach dem Wiki-Prinzip können alle Nutzer, Initiativen und Unternehmen
          sich und andere auf der Karte eintragen und so ihre Mitmenschen
          erreichen.
          Doch von morgen ist mehr als eine Onlineplattform: Regionalpiloten
          sichern vor Ort die Qualität der Karteneinträge und haben neben einer
          redaktionellen Funktion die Aufgabe durch Bildungsveranstaltungen und
          Aktionen den regionalen Austausch zwischen Bürgern, Initiativen und
          Unternehmen zu stärken.
        </p>
        <p>
          von morgen fragt nach Werten, die unsere Gesellschaft fundieren und
          bewegen.
          Wir zeigen Menschen, die Guten tun, wo es Gutes gibt.
        </p>
        <p>
          <i className = "fa fa-globe" />
          <a href = {URLs.PROTOTYPE.link} >{ URLs.PROTOTYPE.name }</a>
          <br />
          <i className = "fa fa-facebook" />
          <a href = { URLs.FACEBOOK.link }>{ URLs.FACEBOOK.name }</a>
          <br />
          <i className = "fa fa-envelope-o" />
          <a href = {URLs.MAIL.link}>{ URLs.MAIL.name }</a>
          <br />
          <i className = "fa fa-github" />
          <a href = {URLs.REPOSITORY.link}>{ URLs.REPOSITORY.name }</a>
        </p>
        <br />
        <br />
        <h2>Wir lieben Open Source!</h2>
        <p>
          Wir wollen mit gutem Beispiel vorangehen und entwickeln daher
          die Software transparent und offen.
          Den Quellcode des Gemeinschaftsprojekts findest du unter:
        </p>
        <p>
          <a href = {URLs.REPOSITORY.link}>{ URLs.REPOSITORY.name }</a>
        </p>
        <p className = "version">{
           "Version dieses Clients: v" + pkg.version
        }</p>
        {sv }
      </div>);
  }
}

module.exports = pure(Info);
