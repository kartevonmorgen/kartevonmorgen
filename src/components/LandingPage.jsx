import React, { Component } from "react";
import logo                 from "../img/logo.png";
import CityList             from "./CityList";
import Info                 from "./Info";
import Workshop             from "./Workshop";
import Imprint              from "./Imprint";
import Explain              from "./LandingExplain";
import Register             from "./Register";
import Login                from "./Login";
import URLs                 from "../constants/URLs";
import V                    from "../constants/PanelView";
import { pure }             from "recompose";

class LandingPage extends Component {

  render() {

    const { content, searchText, cities, onSelection, onEscape, 
      onChange, onRegister, onLogin, loggedIn, user, onDeleteAccount } = this.props;
    const onClick = this.props.onMenuItemClick;

    const onKeyUp = ev => {
      ev.preventDefault();
      switch (ev.key) {
        case "Escape":
          onEscape();
          break;
        case "Enter":
          onSelection(cities[0]);
      }
    }

    const onPlaceSearch = ev => {
      const target = ev.target;
      const v = target != null ? target.value : void 0;
      if (v == null) {
        return;
      }
      onChange(v);
    }

    let subscriptionLink = user.subscriptionExists ? "deinen abonnierten Kartenausschnitt ändern oder abbestellen" 
    : "über Änderungen in deiner Stadt auf dem Laufenden bleiben";

    let loginInfo = <div className="login-info">
      <p>Du bist eingeloggt. Wenn du magst kannst du <br/>
      <a onClick={() => onClick(V.SUBSCRIBE_TO_BBOX)} href="#">{subscriptionLink}</a>.</p>
    </div>;

    let contentComp = null;
    switch (content) {
      case V.TEAM:
      case V.SUPPORTERS:
        contentComp = <Explain onClick={onClick} />;
        break;
      case V.IMPRINT:
        contentComp = <Imprint />;
        break;
      case V.INFO:
      case V.MAP_INFO:
      case V.OPEN_SOURCE:
        contentComp = <Info />;
        break;
      case V.WORKSHOP:
        contentComp = <Workshop />;
        break;
      case V.DONATE:
        contentComp = <div>
          <h2>Etwas Gutes für morgen tun.</h2>
          <p>
            Die Plattform von morgen finanziert sich über Fördermittel
            verschiedener Programme und Wettbewerbe, als auch über Spenden.
            Wir, das Team von morgen, arbeiten ehrenamtlich.
          </p>
          <p>
            Die Beiträge möchten wir für die Weiterentwicklung
            der Plattform verwenden.
            Verschieden Features sind in Planung,
            u.a. die Themenkarte zur Einbettung in eigene
            Websites und den Positivfaktoren - dem
            gemeinwohl-orientierten Bewertungssytem der einzelnen Orte.
          </p>
          <p>
            Hier geht es zu unserer Crowdfunding-Kampagne: <a target="_blank" href = {URLs.DONATE.link}>{URLs.DONATE.name}</a>
          </p>
          <p>
            Wir freuen uns über jeden kleinen und großen Beitrag
            und hoffen auch bald in deiner Stadt verfügbar zu
            sein. Auf bald!
          </p>
          <p>Dankend, das Team von morgen</p>
        </div>;
        break;
      case V.REGISTER:
        contentComp = <div>
          <Register
            onSubmit = { onRegister }
            onLogin = {() => {
              onClick(V.LOGIN)
            }}
           />
        </div>;
        break;
      case V.REGISTER_SUCCESS:
        contentComp = <div>
          <p>
          Du hast dich erfolgreich registriert. Bitte bestätige deine Email-Adresse, dann kannst <br/>
          du dich einloggen. Dazu ging eben eine Email an {user.email} raus.
          </p>
        </div>;
        break;
      case V.CONFIRMING_EMAIL:
        contentComp = <div>
          <p>
          Deine Email-Adresse wird gerade bestätigt... <br/>
          </p>
          </div>;
          break;
      case V.CONFIRM_EMAIL_ERROR:
        contentComp = <div>
          <p>
          Oups! Es gab einen Fehler beim Bestätigen deiner Email-Adresse. Bitte probiere, dich
          mit einem neuen Benutzernamen erneut zu <a onClick={() => {onClick(V.REGISTER)}} href="#">registrieren</a>.<br/>
          </p>
          </div>;
          break;
      case V.EMAIL_CONFIRMED:
        contentComp = <div>
          <p>
          Deine Email-Adresse wurde bestätigt. <br/>
          Du kannst dich jetzt <a onClick={() => {onClick(V.LOGIN)}} href="#">anmelden.</a>
          </p>
          </div>;
          break;
      case V.LOGIN_ERROR:  // fall through
      case V.LOGIN:
        contentComp = <div>
          <Login
            onSubmit = { onLogin }
            onRegister = {() => {
              onClick(V.REGISTER)
            }}
           />
        </div>;
        break;
      case V.LOGIN_SUCCESS:
        contentComp = loginInfo;
        break;
      case V.LOGOUT:
        contentComp = <div>
          <p>Du bist ausgeloggt</p>
        </div>;
        break;
      case V.JOIN:
        contentComp = <div>
          <h3>Werde Teil unseres Teams</h3>
          <p>
            Wir sind ein deutschlandweites Team und immer auf der
            Suche nach neuen Mitgliedern!
            Unsere aktuellen Ausschreibungen findest du hier:
          </p>
          <p>
            <a target="_blank" href={URLs.JOB_ADS.link}>{URLs.JOB_ADS.name}</a>
          </p>
          <p>
            Wir suchen Regional- und Themenpiloten
            Stark lokal: als direkter Ansprechpartner vor Ort,
            sicherst du die Qualität der Karteneinträge,
            organisierst z.B. Aktionen und Workshops und zeigst
            deine Stadt von ihrer besten Seite!
          </p>
          <p>
            Du hast Fragen oder Interesse? Wir freuen uns von dir zu hören:
            <br />
            <a target="_blank" href= "mailto:netzwerk@kartevonmorgen.org">
              netzwerk@kartevonmorgen.org
            </a>
          </p>
        </div>;
        break;
        default:
    }

    return (
      <div className = "landing">
        <div className = "banner">
          <div className = "content pure-g">
            <div className = "logo-wrapper pure-u-11-24 pure-u-md-1-3">
              <div className = "logo">
                <a onClick={() => onClick('landing')} href="#">
                  <img className="logo pure-img" src={logo} />
                </a>
              </div>
            </div>
            <div className="menu-wrapper pure-u-1 pure-u-md-2-3">
              <div className="menu pure-menu pure-menu-horizontal">
                <ul className="pure-g">
                  <li className="pure-u-1-3 pure-u-md-1-6 menu-item">
                    <a onClick={() => onClick('map')} href="#" className="pure-menu-link">
                      Karte
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-6 menu-item">
                    <a onClick= {() => onClick(V.WORKSHOP)} href="#" className="pure-menu-link">
                      Infos
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-6 menu-item">
                    <a onClick = {() => onClick(V.INFO)} href="#" className="pure-menu-link">
                      Kontakt
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-6 menu-item">
                    <a onClick={() => onClick(V.DONATE)} href="#" className="pure-menu-link">
                      Spenden
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-6 menu-item">
                    { loggedIn ?
                      <a onClick = {() => onClick(V.LOGOUT)} href="#" className="pure-menu-link">
                        Logout
                      </a>
                      : <a onClick = {() => onClick(V.LOGIN)} href="#" className="pure-menu-link">
                        Login
                      </a>
                    }
                  </li>        
                </ul>
              </div>
            </div>
          </div>
        </div>
      <div className ={ "search" + (content ? '' : ' start')}>
        <div className = "landing-content">
          <h1>Alles Gute auf einer Karte</h1>
          <div className="place-search">
            <div className= "pure-g pure-form">
              <input
                className   = "pure-u-1"
                onChange    = {onPlaceSearch}
                onKeyUp     = {onKeyUp}
                value       = {searchText || ''}
                type        = 'text'
                placeholder = "Welchen Ort möchtest du entdecken?"
                />
              { cities && cities.length > 0
                  ? <div className = "pure-u-1">
                      <CityList cities={cities} onClick={onSelection} />
                    </div>
                  : null
              }
            </div>
          </div>
        </div>
      </div>
      <div className = "explain">{
        content == null
          ? <a target="_blank" href= "#tutorial" className= "circleTutorial">
              <strong>
                Tutorial
                <div style ={{ paddingTop: "10px", fontSize: "12px"}}>
                  <i className = "fa fa-chevron-down" />
                </div>
              </strong>
            </a>
          : null }
        <div className = "content">{
          content == null
            ? <div>
              {loggedIn ? loginInfo : null} <Explain onClick = { onClick } />
              </div>
            : contentComp
        }</div>
      </div>
      <div className= "footer">
        <h3>Wir zeigen Menschen, die Gutes tun wollen, wo es Gutes gibt.</h3>
        <p>
          Kontakt: <a target="_blank" href={URLs.MAIL.link}>{URLs.MAIL.name}</a>
          <br />
          Social Media: <a target="_blank" href={URLs.FACEBOOK.link}>{URLs.FACEBOOK.name}</a>
          <br />
          Open Source: <a target="_blank" href={URLs.REPOSITORY.link}>{URLs.REPOSITORY.name}</a>
        </p>
        <p>
          <a href="#" onClick={() => onClick(V.IMPRINT)}>Impressum</a>
        </p>
        <p>
          {user.id != null ? <a onClick={onDeleteAccount} href="#">
            Account löschen
          </a> : ""}
        </p>
      </div>
    </div>);
  }
}

const T = React.PropTypes;

LandingPage.propTypes = {
  content     : T.string,
  searchText  : T.string,
  cities      : T.array,
  onChange    : T.func,
  onEscape    : T.func,
  onSelection : T.func
};

module.exports = pure(LandingPage)
