import React, { Component } from "react";
import pkg      from "../../package.json";
import team1    from "../img/team_am_tisch.jpg";
import team2    from "../img/team_in_action.jpg";
import slider   from "../img/Slider.jpg";
import URLs     from "../constants/URLs";


module.exports = ({serverVersion}) =>
    <div className="info">
        <h2>Weiterführende Infos zur Karte von morgen</h2>
        <h3>Aktuelles</h3>
        <p>
            Neuigkeiten und aktuelles auf <a target="_blank" href='https://www.facebook.com/vonmorgen'>Facebook</a><br />
            Fortschrittsberichte auf <a target="_blank" href='https://www.betterplace.org/de/projects/36213/newsroom'>unserem Blog auf Betterplace</a>
        </p>
        <br />

        <p>
          Unsere interaktive Karte zeigt dir Orte in deiner Umgebung,
          an denen man sich schon heute für eine Welt von morgen einsetzt.
        </p>
        <p>
          Du hast eine Initiative, für die du Mitstreiter suchst? <br />
          Du kennst ein Unternehmen, das nachhaltig wirtschaftet? <br />

          Auf unserer Website kannst du andere darauf aufmerksam machen – und dich so für einen von Menschen gestalteten Ort
          einsetzen, der dir persönlich am Herzen liegt.
        </p>
        <p>
          Wir sind auf der Suche nach vielfältigen Ideen, Initiativen und
          Unternehmen, die den aktuellen sozialen, ökologischen und ökonomischen
          Umbrüchen alternativ entgegen wirken.
          Diese möchten wir vernetzten und ihnen möchten wir einen gemeinsamen Online-Auftritt und damit eine
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
    <img className="landing-img" src={team1}/><br /><br />
      <h3>Hintergründe und Visionen</h3>
        <ul>
            <li>Was will die <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/'>Karte von morgen?</a></li>
            <li>Was sind die <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/2/'>Positivfaktoren?</a></li>
            <li>Was sind <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/3/'>Regionalpiloten bzw.  Themenpiloten? </a></li>
            <li>Wie kann ich die Karte <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/3/#Widget_zum_Einbetten'>auf meiner Homepage einbetten? </a></li>
            <li>Wie kann ich <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/4/'>mitmachen oder die Karte von morgen unterstützen?</a></li>
        </ul>
        <p>
        <br />
        <i className = "fa fa-facebook" />
        {" "}<a target="_blank" href = { URLs.FACEBOOK.link }>{ URLs.FACEBOOK.name }</a>
        <br />
        <i className = "fa fa-envelope-o" />
        {" "}<a target="_blank" href = {URLs.MAIL.link}>{ URLs.MAIL.name }</a>
        <br />

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
          <i className = "fa fa-github" />
          {" "}<a target="_blank" href = {URLs.REPOSITORY.link}>{ URLs.REPOSITORY.name }</a>
        </p>


        <img className="landing-img" src={team2} /><br /><br />
        <h3>Bildungsarbeit, Aktionen und Kultur von morgen</h3>
            <p>
                Gemeinsam mit unserem Partner, dem gemeinnützigen Verein Ideen³ e.V. und der „Ideenwerkstatt Bildungsagenten”,
                bieten wir Workshops zu verschiedenen Themen an, um die sozial-ökologische Transformation zu unterstützen. <br />
                <a target="_blank" href="http://bildungsagenten.org">www.bildungsagenten.org</a>
            </p>

        <img className="landing-img" src={slider} />
        <p className="version">{
            "Version dieses Clients: " + pkg.version
        }
        </p>
        {serverVersion
            ?   <p className="version">
                    {"Version des Servers: " + serverVersion}
                </p>
            : ""
        }
    </div>
