import React, { Component } from "react";
import logo                 from "../img/logo.png";
import CityList             from "./CityList";
import Info                 from "./Info";
import Contact              from "./Contact";
import Imprint              from "./Imprint";
import PrivacyStatement     from "./PrivacyStatement";
import Explain              from "./LandingExplain";
import Register             from "./Register";
import Login                from "./Login";
import URLs                 from "../constants/URLs";
import V                    from "../constants/PanelView";
import { pure }             from "recompose";
import { translate }        from "react-i18next";
import i18n                 from "../i18n";
import T                    from "prop-types";

class LandingPage extends Component {

  render() {

    const { content, searchText, searchError, cities, onSelection, onEscape,
      onChange, onRegister, onLogin, loggedIn, user, onDeleteAccount } = this.props;
    const onClick = this.props.onMenuItemClick;
    var t = (key) => {
      return this.props.t("landingPage." + key);
    };

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

    let subscriptionLink = user.subscriptionExists ? t("subscribeToBbox.edit-link")
    : t("subscribeToBbox.new-link");

    let loginInfo = <div className="login-info">
      <p>{t("subscribeToBbox.message")}<br/>
      <a onClick={() => onClick(V.SUBSCRIBE_TO_BBOX)} href="#">{subscriptionLink}</a>.</p>
    </div>;

    let contentComp = null;
    switch (content) {
      case V.TEAM:
      case V.SUPPORTERS:
        contentComp = <Explain onClick={onClick} />;
        break;
      case V.PRIVACY_STATEMENT:
        contentComp = <PrivacyStatement />;
        break;
      case V.IMPRINT:
        contentComp = <Imprint />;
        break;
      case V.MAP_INFO:
      case V.OPEN_SOURCE:
        contentComp = <Info />;
        break;
      case V.INFO:
        contentComp = <Info />;
        break;
      case V.CONTACT:
        contentComp = <Contact />;
        break;
      case V.DONATE:
        contentComp = <div>
          <h2>{t("donate.heading")}</h2>
          <p>
            {t("donate.paragraph1")}
          </p>
          <strong>
            <a target="_blank" href="https://www.betterplace.org/de/projects/36213-von-morgen-alles-gute-auf-einer-karte/donations/new">
            {t("donate.betterplace-link")}
            </a>
          </strong>
          <p>
            <strong>{t("donate.paragraph2.bank-details1")}</strong> <br/>
            <br/>
            {t("donate.paragraph2.bank-details2")}<br/>
            {t("donate.paragraph2.bank-details3")}<br/>
            {t("donate.paragraph2.bank-details4")}<br/><br/>

            {t("donate.paragraph2.text")}
          </p>
          <h1>{t("donate.paragraph3.heading")}</h1>

          <p>
            {t("donate.paragraph3.text1")}
            {" "}<a href="http://bildungsagenten.org/solidargemeinschaftvonmorgen">{t("donate.paragraph3.form-link")}</a>)
            {t("donate.paragraph3.text2")}
          </p>
          <iframe src="https://app.box.com/embed/s/yae4jb2g0awtqkxj3cb98jyd4uld9hza"
              width="800" height="550" frameborder="0">
          </iframe>
          <p>
            {t("donate.paragraph3.text3")}
            {" "}<a target="_blank" href = {URLs.DONATE.link}>{URLs.DONATE.name}</a> <br/>
            {t("donate.paragraph3.text4")}
          </p>
          <p>
            {t("donate.paragraph3.text5")}
          </p>
          <p>{t("donate.paragraph3.text6")}</p>
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
            {t("user.register-success.text1")}<br/>
            {t("user.register-success.text2")} {user.email} {t("user.register-success.text3")}
          </p>
        </div>;
        break;
      case V.CONFIRMING_EMAIL:
        contentComp = <div>
          <p>
          {t("user.confirming-email-address.text")}<br/>
          </p>
          </div>;
          break;
      case V.CONFIRM_EMAIL_ERROR:
        contentComp = <div>
          <p>
          {t("user.confirm-email-error.message")}
          <a onClick={() => {onClick(V.REGISTER)}} href="#">{t("user.confirm-email-error.link")}</a>.<br/>
          </p>
          </div>;
          break;
      case V.EMAIL_CONFIRMED:
        contentComp = <div>
          <p>
          {t("user.email-confirmed.text1")}<br/>
          {t("user.email-confirmed.text2")}
          <a onClick={() => {onClick(V.LOGIN)}} href="#">{t("user.email-confirmed.link")}</a>.
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
          <p>{t("user.logged-out")}</p>
        </div>;
        break;
      case V.JOIN:
        contentComp = <div>
          <h3>{t("join.heading")}</h3>
          <p>
            {t("join.paragraph1")}
          </p>
          <p>
            <a target="_blank" href={URLs.JOB_ADS.link}>{URLs.JOB_ADS.name}</a>
          </p>
          <p>
            {t("join.paragraph2")}
          </p>
          <p>
            {t("join.paragraph3")}
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
              <div className = "language-wrapper">
                <a onClick={() => {i18n.changeLanguage('de');}} href="#"
                  className={"language-link" + ((i18n.language == "de") ? " selected" : " unselected")}>de</a>
                {" "}
                <a onClick={() => {i18n.changeLanguage('en');}} href="#"
                  className={"language-link" + ((i18n.language == "en") ? " selected" : " unselected")}>en</a>
              </div>
              <div className="menu pure-menu pure-menu-horizontal">
                <ul className="pure-g">
                  <li className="pure-u-1-3 pure-u-md-1-6 menu-item">
                    <a onClick={() => onClick('map')} href="#" className="pure-menu-link">
                      {t("menu.map")}
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-6 menu-item">
                    <a onClick= {() => onClick(V.INFO)} href="#" className="pure-menu-link">
                      {t("menu.infos")}
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-6 menu-item">
                    <a onClick = {() => onClick(V.CONTACT)} href="#" className="pure-menu-link">
                      {t("menu.contact")}
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-6 menu-item">
                    <a onClick={() => onClick(V.DONATE)} href="#" className="pure-menu-link">
                      {t("menu.donate")}
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-6 menu-item">
                    { loggedIn ?
                      <a onClick = {() => onClick(V.LOGOUT)} href="#" className="pure-menu-link">
                        {t("menu.logout")}
                      </a>
                      : <a onClick = {() => onClick(V.LOGIN)} href="#" className="pure-menu-link">
                        {t("menu.login")}
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
          <h1>{t("slogan")}</h1>
          <div className="place-search">
            <div className= "pure-g pure-form">
              <input
                className   = "pure-u-1"
                onChange    = {onPlaceSearch}
                onKeyUp     = {onKeyUp}
                value       = {searchText || ''}
                type        = 'text'
                placeholder = {t("city-search.placeholder")}
                />
                <div className = "pure-u-1">
                { searchText && searchText.length > 3
                  ? (searchError
                    ? <div className="error">
                      <span className="errorText">{t("city-search.error")}</span>&nbsp;&nbsp;
                      <a onClick={() => onClick('map')} href="#" className="link">
                        {t("city-search.show-map")}

                     </a></div>
                    : cities && cities.length > 0
                        ? <CityList cities={cities} onClick={onSelection} />
                        : <div className="error">{t("city-search.no-results")}&nbsp;&nbsp;
                        <a onClick={() => onClick('map')} href="#" className="link">
                        {t("city-search.show-map")}
                        </a></div>
                    )
                  : null
                }
                </div>
            </div>
          </div>
        </div>
      </div>
      <div className = "explain">{
        content == null
          ? <a href= "#tutorial" className= "circleTutorial">
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
        <h3>{t("footer.heading")}</h3>
        <p>
          {t("footer.contact")}<a target="_blank" href={URLs.MAIL.link}>{URLs.MAIL.name}</a>
          <br />
          {t("footer.social-media")}<a target="_blank" href={URLs.FACEBOOK.link}>{URLs.FACEBOOK.name}</a>
          <br />
          {t("footer.open-source")}<a target="_blank" href={URLs.REPOSITORY.link}>{URLs.REPOSITORY.name}</a>
        </p>
        <p>
          <a className="smallLink" href="#" onClick={() => onClick(V.IMPRINT)}>{t("footer.imprint")}</a>
          <a className="smallLink" href="#" onClick={() => onClick(V.PRIVACY_STATEMENT)}>{t("footer.privacyStatement")}</a>
        </p>
        <p>
          {user.username != null ? <a onClick={onDeleteAccount} href="#">
            Account löschen
          </a> : ""}
        </p>
      </div>
    </div>);
  }
}

LandingPage.propTypes = {
  content     : T.string,
  searchText  : T.string,
  searchError : T.bool,
  cities      : T.array,
  onChange    : T.func,
  onEscape    : T.func,
  onSelection : T.func
};

module.exports = translate('translation')(pure(LandingPage))