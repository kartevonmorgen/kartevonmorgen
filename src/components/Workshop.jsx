import React, { Component } from "react";
import pkg      from "../../package.json"
import team1    from "../img/team_am_tisch.jpg"
import team2    from "../img/team_in_action.jpg"
import slider   from "../img/Slider.jpg"

module.exports = ({serverVersion}) => 
    <div className="info">
        <h2>Weiterführende Infos zur Karte von morgen</h2>
            <br />
        <h3>Aktuelles</h3>
        <p>
            Neuigkeiten und aktuelles auf <a target="_blank" href='https://www.facebook.com/vonmorgen'>Facebook</a><br />
            Fortschrittsberichte auf <a target="_blank" href='https://www.betterplace.org/de/projects/36213/newsroom'>unserem Blog auf Betterplace</a>
        </p>
        <br />
        <h3>Hintergründe und Visionen</h3>
            <p>
                <ul>
                    <li>Was will die <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/'>Karte von morgen?</a></li>
                    <li>Was sind die <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/2/'>Positivfaktoren?</a></li>
                    <li>Was sind <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/3/'>Regionalpiloten bzw.  Themenpiloten? Wie nutze ich Widgets?</a></li>
                    <li>Wie kann ich <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/4/'>mitmachen oder die Karte von morgen unterstützen?</a></li>
                </ul>
            </p>
        <img className="landing-img" src={team1}/><br /><br />
            
        <h3>Spenden</h3>
            <p>
                Einfach online Spenden über <a target="_blank" href='https://www.betterplace.org/de/projects/36213'>Betterplace</a>
                <br />
                Etwas Gutes für morgen tun: Die Plattform von morgen finanziert sich über Fördermittel verschiedener Programme
                und Wettbewerbe aber zum Großteil über Spenden.
            </p>
            <p>
                Wir, das Team von morgen, arbeiten ehrenamtlich.
                Wir freuen uns über jeden kleinen und großen Beitrag und hoffen auch bald in deiner Stadt verfügbar zu sein. Auf bald!
            </p>
            <p>
                Dankend, das Team von morgen
            </p>
        <img className="landing-img" src={team2} /><br /><br />
        <h3>Workshops von morgen</h3>
            <p>
                Gemeinsam mit unserem Partner, dem gemeinnützigen Verein Ideen³ e.V. und der „Ideenwerkstatt Bildungsagenten”, 
                bieten wir Workshops zu verschiedenen Themen an. <br />
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
