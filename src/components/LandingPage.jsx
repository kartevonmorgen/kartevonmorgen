import React, { Component } from "react";
import { translate }        from "react-i18next";
import T                    from "prop-types";
import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
import styled               from "styled-components";

import CityList             from "./pure/CityList";
import Info                 from "./pure/Info";
import Contact              from "./pure/Contact";
import Imprint              from "./pure/Imprint";
import PrivacyStatement     from "./pure/PrivacyStatement";
import Explain              from "./pure/LandingExplain";
import Register             from "./pure/Register";
import Login                from "./pure/Login";
import * as URLs            from "../constants/URLs";
import * as V               from "../constants/PanelView";
import i18n                 from "../i18n";
import STYLE                from "./styling/Variables"
import pincloud             from "../img/pincloud.png";
import {LazyLoadImage} from "react-lazy-load-image-component"

class LandingPage extends Component {
  state = {
    selectedCity : 0,
  }

  render() {

    const { content, searchText, searchError, cities, onSelection, onEscape,
      onChange, onRegister, onLogin, loggedIn, user, onDeleteAccount, loadingSearch, fonts } = this.props;
    const onClick = this.props.onMenuItemClick;
    var t = (key) => {
      return this.props.t("landingPage." + key);
    };

    const onChangeSelectedCity = (direction) => {
      const newSelection = (this.state.selectedCity + direction) > 0 ? (this.state.selectedCity + direction) : 0;
      if(cities.length - 1 >= newSelection){
        this.setState({ selectedCity: newSelection })
      }
    }

    const onKeyUp = ev => {
      ev.preventDefault();
      switch (ev.key) {
        case "Escape":
          onEscape();
          break;
        case "Enter":
          onSelection(cities[this.state.selectedCity]);
          break;
        case "ArrowDown":
          onChangeSelectedCity(1);
          break;
        case "ArrowUp":
          onChangeSelectedCity(-1);
          break;
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
        <a onClick={() => onClick(V.SUBSCRIBE_TO_BBOX)} href="#">{subscriptionLink}</a>.
      </p>
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
            {" "}<a href="https://blog.vonmorgen.org/genossenschaft/">{t("donate.paragraph3.form-link")}</a>)
            {t("donate.paragraph3.text2")}
          </p>
    
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
            t = { t }
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
      <LandingWrapper fonts={fonts} className="landing">
        <div className = "banner">
          <div className = "content pure-g">
            <div className = "logo-wrapper pure-u-11-24 pure-u-md-1-3">
              <div className = "logo">
                <a onClick={() => onClick('landing')} href="#">
                  <LazyLoadImage
                    className="logo pure-img"
                    alt="logo"
                    src="./img/logo.png"
                  />
                </a>
              </div>
            </div>
            <div className="menu-wrapper pure-u-1 pure-u-md-2-3">
              <div className = "language-wrapper">
                <a onClick={() => {i18n.changeLanguage('de');}} href="#"
                  className={"language-link" + ((i18n.language.includes("de")) ? " selected" : " unselected")}>de</a>
                {" "}
                <a onClick={() => {i18n.changeLanguage('en');}} href="#"
                  className={"language-link" + ((i18n.language.includes("en")) ? " selected" : " unselected")}>en</a>
                {" "}
                <a onClick={() => {i18n.changeLanguage('es');}} href="#"
                  className={"language-link" + ((i18n.language.includes("es")) ? " selected" : " unselected")}>es</a>
              </div>
              <div className="menu pure-menu pure-menu-horizontal">
                <ul className="pure-g menu-items-wrapper">
                  <li className="pure-u-1-3 pure-u-md-1-5 menu-item">
                    <a onClick={() => onClick('map')} href="#" className="pure-menu-link">
                      {t("menu.map")}
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-5 menu-item">
                    <a onClick= {() => onClick(V.INFO)} href="https://blog.vonmorgen.org" className="pure-menu-link">
                      {t("menu.infos")}
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-5 menu-item">
                    <a onClick = {() => onClick(V.CONTACT)} href="#" className="pure-menu-link">
                      {t("menu.contact")}
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-5 menu-item">
                    <a onClick={() => onClick(V.DONATE)} href="https://blog.vonmorgen.org/spenden" className="pure-menu-link">
                      {t("menu.donate")}
                    </a>
                  </li>
                  <li className="pure-u-1-3 pure-u-md-1-5 menu-item">
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
                  { searchText && !loadingSearch
                    ? (searchError
                      ? <div className="error">
                        <span className="errorText">{t("city-search.error")}</span>&nbsp;&nbsp;
                        <a onClick={() => onClick('map')} href="#" className="link">
                          {t("city-search.show-map")}

                        </a>
                      </div>
                      : cities && cities.length > 0
                        ? <CityList cities={cities} onClick={onSelection} selectedCity={this.state.selectedCity} selectedColor="#000"/>
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
                  <FontAwesomeIcon icon="chevron-down"/>
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
            {user.email != null ? <a onClick={onDeleteAccount} href="#">
              Account löschen
            </a> : ""}
          </p>
        </div>
      </LandingWrapper>);
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

export default translate('translation')(LandingPage)

const LandingWrapper = styled.div`
  position: absolute;
  z-index: 100;
  width: 100%;
  height: 100%;
  z-index: 1001;
  background-color: rgba(0,0,0,0.7);
  h1, h3 {
    font-family: ${props => props.fonts.headerFont || STYLE.headerFont};
    font-weight: 500;
  }
  h3 {
    font-size: 1.5em;
    margin: 0.3em 0;
  }
  h2 {
    font-size: 2em;
    margin-top: 1.5em;
    font-weight: 500;
  }
  input {
    font-size: 1.2em;
  }
  p {
    margin-block-start: 0.1em;
  }
  .place-search {
    max-width: 500px;
    margin: auto;
    margin-top: 2em;
    margin-bottom: 2em;
    .error {
      margin: auto;
      padding: 1.1em;
      background: rgba(0,0,0,0.5);
      border-radius: 0 0 0.3em 0.3em;
      .errorText {
        color: #f44;
      }
      .link {
        color: #08f;
      }
    }

    /* only of city list on landing page, probably use props */
    .city-list {
      padding-top: 0.3em;
      background: rgba(0,0,0,0.5);
      border-radius: 0 0 0.3em 0.3em;
      li:hover {
        background: #000;
        border-radius: 0 0 0.3em 0.3em;
        div.chevron {
          color: #fff;
        }
      }
    }
  }
  .content {
    max-width: 900px;
    margin: auto;
    z-index: 0;
    .login-info {
      margin-bottom: 10em;
    }
    .imprint-heading {
      margin-top: 2em;
      margin-bottom: 0.5em;
    }
  }
  .banner {
    background-color: #fff;
    .content {
      max-width: initial;
      padding-bottom: 20px;
      div.logo {
        padding-top: 1em;
        margin-left: 50px;
      }
      img.logo {
        max-width: 137.633px;
        max-height: 57px;
        width: 100%;
      }
    }
    .menu-wrapper {
      text-align: right;
      .language-wrapper {
        margin: -4px 20px 24px 0;
        font-size: 0.8em;
        color: #777;
        .language-link {
          margin: 3pt;
          text-decoration: none;
          &.selected {
            color: #95be0b;
            pointer-events: none;
          }
          &.unselected {
            color: #555;
            &:hover {
              color: #000;
            }
          }
        }
      }
    }
    .menu-wrapper-inner {
      bottom: 0;
      width: 100%;
      height: 20px;
      margin-bottom: 10px;
    }
    .menu {
      font-size: 0.9em;
      display: inline-block;
      position: relative;
      max-width: 655px;
      ul {
        margin: 0 30px 0 0;
      }
      li {
        &:hover {
          text-decoration: underline;
        }
        &:active {
          text-decoration: underline;
        }
        a {
          background: transparent;
        }
      }
      .menu-item {
        text-align: center;
      }
    }
  }
  .explain {
    background-color: #fff;
    text-align: center;
    padding: 50px 1em;
    position: relative;
    ul {
      text-align: left;
      max-width: 600px;
      text-align: left;
      margin: auto;
    }
    h1 {
      margin-top: 0;
    }
    p {
      font-size: 1.2em;
    }
    a {
      color: ${STYLE.darkGray};
    }
    .teamMember {
      vertical-align: top;
      display: inline-block;
      width: 200px;
      margin-top: 30px;
      .team-member-name {
        font-weight: bold;
      }
      .circle {
        display: inline-block;
        width: 100px;
        height: 100px;
        border-radius: 50px;
        margin: 10px;
        overflow: hidden;
        img {
          width: 100%;
        }
        &.pink {
          background-color: ${STYLE.pink};
        }
        &.yellow {
          background-color: ${STYLE.yellow};
        }
        &.berry {
          background-color: ${STYLE.berry};
        }
        &.green {
          background-color: ${STYLE.green};
        }
        &.blue {
          background-color: ${STYLE.blue};
        }
        &.grayBlue {
          background-color: ${STYLE.grayBlue};
        }
      }
    }
    .version {
      font-size: 0.7em;
    }
    .circleTutorial {
      display: block;
      text-decoration: none;
      position: absolute;
      width: 100px;
      border-radius: 50px;
      background-color: #000;
      color: #fff;
      left: 50%;
      margin-left: -50px;
      height: 73px;
      top: -180px;
      padding-top: 27px;
      cursor: pointer;
      z-index: 1;
    }
    .partnerLogo {
      margin: 2em;
      border: none;
      width: 25%;
      vertical-align: middle;
    }
    hr {
      margin: 100px 40px;
      &:before {
        content: ' ';
        display: block;
        position: absolute;
        margin-left: -100px;
        margin-top: -35px;
        background-color: #fff;
        background-image: url(${pincloud});
        background-repeat: no-repeat;
        background-position: center center;
        left: 50%;
        width: 200px;
        height: 70px;
      }
    }
  }
  .footer {
    background-color: ${STYLE.darkGray};
    color: #fff;
    text-align: center;
    padding: 20px 20px 50px 20px;
    line-height: 1.5em;
    h3 {
      font-size: 1.5em;
    }
    a {
      color: #fff;
    }
    .smallLink {
      margin: 0 7px;
    }
  }
  .search {
    text-align: center;
    padding: 50px 1em;
    position: relative;
    text-align: center;
    color: #fff;
    height: 150px;
    z-index: 1;
    ul {
      text-align: left;
    }
    h1 {
      margin-top: 0;
      font-size: 3em;
    }
    .landing-content {
      position: relative;
      top: 20%;
      bottom: 0;
      left: 0;
      right: 0;
      width: calc(100vw - 50px);
      height: 50%;
      margin: 0 10px;
      display: inline-block;
    }
    h2 {
      font-weight: normal;
      font-size: 1.4em;
    }
    input {
      color: ${STYLE.coal};
    }
    button {
      color: ${STYLE.coal};
    }
    &.start {
      height: calc(100% - 100px);
      .content {
        height: 30%;
      }
    }
  }
`
