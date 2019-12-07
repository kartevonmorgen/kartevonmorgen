// TODO: import React, { Component } from "react";
// TODO: import { translate }        from "react-i18next";
// TODO: import T                    from "prop-types";
// TODO: import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
// TODO: import styled               from "styled-components";
// TODO: 
// TODO: import logo                 from "../img/logo.png";
// TODO: import CityList             from "./pure/CityList";
// TODO: import Info                 from "./pure/Info";
// TODO: import Contact              from "./pure/Contact";
// TODO: import Imprint              from "./pure/Imprint";
// TODO: import PrivacyStatement     from "./pure/PrivacyStatement";
// TODO: import Explain              from "./pure/LandingExplain";
// TODO: import Register             from "./pure/Register";
// TODO: import Login                from "./pure/Login";
// TODO: import URLs                 from "../constants/URLs";
// TODO: import V                    from "../constants/PanelView";
// TODO: import i18n                 from "../i18n";
// TODO: import STYLE                from "./styling/Variables"
// TODO: import pincloud             from "../img/pincloud.png";
// TODO: 
// TODO: class LandingPage extends Component {
// TODO:   state = {
// TODO:     selectedCity : 0,
// TODO:   }
// TODO: 
// TODO:   render() {
// TODO: 
// TODO:     const { content, searchText, searchError, cities, onSelection, onEscape,
// TODO:       onChange, onRegister, onLogin, loggedIn, user, onDeleteAccount, loadingSearch } = this.props;
// TODO:     const onClick = this.props.onMenuItemClick;
// TODO:     var t = (key) => {
// TODO:       return this.props.t("landingPage." + key);
// TODO:     };
// TODO: 
// TODO:     const onChangeSelectedCity = (direction) => {
// TODO:       const newSelection = (this.state.selectedCity + direction) > 0 ? (this.state.selectedCity + direction) : 0;
// TODO:       if(cities.length - 1 >= newSelection){
// TODO:         this.setState({ selectedCity: newSelection })
// TODO:       }
// TODO:     }
// TODO: 
// TODO:     const onKeyUp = ev => {
// TODO:       ev.preventDefault();
// TODO:       switch (ev.key) {
// TODO:         case "Escape":
// TODO:           onEscape();
// TODO:           break;
// TODO:         case "Enter":
// TODO:           onSelection(cities[this.state.selectedCity]);
// TODO:           break;
// TODO:         case "ArrowDown":
// TODO:           onChangeSelectedCity(1);
// TODO:           break;
// TODO:         case "ArrowUp":
// TODO:           onChangeSelectedCity(-1);
// TODO:           break;
// TODO:       }
// TODO:     }
// TODO: 
// TODO:     const onPlaceSearch = ev => {
// TODO:       const target = ev.target;
// TODO:       const v = target != null ? target.value : void 0;
// TODO:       if (v == null) {
// TODO:         return;
// TODO:       }
// TODO:       onChange(v);
// TODO:     }
// TODO: 
// TODO:     let subscriptionLink = user.subscriptionExists ? t("subscribeToBbox.edit-link")
// TODO:       : t("subscribeToBbox.new-link");
// TODO: 
// TODO:     let loginInfo = <div className="login-info">
// TODO:       <p>{t("subscribeToBbox.message")}<br/>
// TODO:         <a onClick={() => onClick(V.SUBSCRIBE_TO_BBOX)} href="#">{subscriptionLink}</a>.
// TODO:       </p>
// TODO:     </div>;
// TODO: 
// TODO:     let contentComp = null;
// TODO:     switch (content) {
// TODO:       case V.TEAM:
// TODO:       case V.SUPPORTERS:
// TODO:         contentComp = <Explain onClick={onClick} />;
// TODO:         break;
// TODO:       case V.PRIVACY_STATEMENT:
// TODO:         contentComp = <PrivacyStatement />;
// TODO:         break;
// TODO:       case V.IMPRINT:
// TODO:         contentComp = <Imprint />;
// TODO:         break;
// TODO:       case V.MAP_INFO:
// TODO:       case V.OPEN_SOURCE:
// TODO:         contentComp = <Info />;
// TODO:         break;
// TODO:       case V.INFO:
// TODO:         contentComp = <Info />;
// TODO:         break;
// TODO:       case V.CONTACT:
// TODO:         contentComp = <Contact />;
// TODO:         break;
// TODO:       case V.DONATE:
// TODO:         contentComp = <div>
// TODO:           <h2>{t("donate.heading")}</h2>
// TODO:           <p>
// TODO:             {t("donate.paragraph1")}
// TODO:           </p>
// TODO:           <strong>
// TODO:             <a target="_blank" href="https://www.betterplace.org/de/projects/36213-von-morgen-alles-gute-auf-einer-karte/donations/new">
// TODO:               {t("donate.betterplace-link")}
// TODO:             </a>
// TODO:           </strong>
// TODO:           <p>
// TODO:             <strong>{t("donate.paragraph2.bank-details1")}</strong> <br/>
// TODO:             <br/>
// TODO:             {t("donate.paragraph2.bank-details2")}<br/>
// TODO:             {t("donate.paragraph2.bank-details3")}<br/>
// TODO:             {t("donate.paragraph2.bank-details4")}<br/><br/>
// TODO: 
// TODO:             {t("donate.paragraph2.text")}
// TODO:           </p>
// TODO:           <h1>{t("donate.paragraph3.heading")}</h1>
// TODO: 
// TODO:           <p>
// TODO:             {t("donate.paragraph3.text1")}
// TODO:             {" "}<a href="http://bildungsagenten.org/solidargemeinschaftvonmorgen">{t("donate.paragraph3.form-link")}</a>)
// TODO:             {t("donate.paragraph3.text2")}
// TODO:           </p>
// TODO:           <iframe src="https://app.box.com/embed/s/yae4jb2g0awtqkxj3cb98jyd4uld9hza"
// TODO:             width="800" height="550" frameBorder="0">
// TODO:           </iframe>
// TODO:           <p>
// TODO:             {t("donate.paragraph3.text3")}
// TODO:             {" "}<a target="_blank" href = {URLs.DONATE.link}>{URLs.DONATE.name}</a> <br/>
// TODO:             {t("donate.paragraph3.text4")}
// TODO:           </p>
// TODO:           <p>
// TODO:             {t("donate.paragraph3.text5")}
// TODO:           </p>
// TODO:           <p>{t("donate.paragraph3.text6")}</p>
// TODO:         </div>;
// TODO:         break;
// TODO:       case V.REGISTER:
// TODO:         contentComp = <div>
// TODO:           <Register
// TODO:             onSubmit = { onRegister }
// TODO:             onLogin = {() => {
// TODO:               onClick(V.LOGIN)
// TODO:             }}
// TODO:           />
// TODO:         </div>;
// TODO:         break;
// TODO:       case V.REGISTER_SUCCESS:
// TODO:         contentComp = <div>
// TODO:           <p>
// TODO:             {t("user.register-success.text1")}<br/>
// TODO:             {t("user.register-success.text2")} {user.email} {t("user.register-success.text3")}
// TODO:           </p>
// TODO:         </div>;
// TODO:         break;
// TODO:       case V.CONFIRMING_EMAIL:
// TODO:         contentComp = <div>
// TODO:           <p>
// TODO:             {t("user.confirming-email-address.text")}<br/>
// TODO:           </p>
// TODO:         </div>;
// TODO:         break;
// TODO:       case V.CONFIRM_EMAIL_ERROR:
// TODO:         contentComp = <div>
// TODO:           <p>
// TODO:             {t("user.confirm-email-error.message")}
// TODO:             <a onClick={() => {onClick(V.REGISTER)}} href="#">{t("user.confirm-email-error.link")}</a>.<br/>
// TODO:           </p>
// TODO:         </div>;
// TODO:         break;
// TODO:       case V.EMAIL_CONFIRMED:
// TODO:         contentComp = <div>
// TODO:           <p>
// TODO:             {t("user.email-confirmed.text1")}<br/>
// TODO:             {t("user.email-confirmed.text2")}
// TODO:             <a onClick={() => {onClick(V.LOGIN)}} href="#">{t("user.email-confirmed.link")}</a>.
// TODO:           </p>
// TODO:         </div>;
// TODO:         break;
// TODO:       case V.LOGIN_ERROR:  // fall through
// TODO:       case V.LOGIN:
// TODO:         contentComp = <div>
// TODO:           <Login
// TODO:             onSubmit = { onLogin }
// TODO:             onRegister = {() => {
// TODO:               onClick(V.REGISTER)
// TODO:             }}
// TODO:             t = { t }
// TODO:           />
// TODO:         </div>;
// TODO:         break;
// TODO:       case V.LOGIN_SUCCESS:
// TODO:         contentComp = loginInfo;
// TODO:         break;
// TODO:       case V.LOGOUT:
// TODO:         contentComp = <div>
// TODO:           <p>{t("user.logged-out")}</p>
// TODO:         </div>;
// TODO:         break;
// TODO:       case V.JOIN:
// TODO:         contentComp = <div>
// TODO:           <h3>{t("join.heading")}</h3>
// TODO:           <p>
// TODO:             {t("join.paragraph1")}
// TODO:           </p>
// TODO:           <p>
// TODO:             <a target="_blank" href={URLs.JOB_ADS.link}>{URLs.JOB_ADS.name}</a>
// TODO:           </p>
// TODO:           <p>
// TODO:             {t("join.paragraph2")}
// TODO:           </p>
// TODO:           <p>
// TODO:             {t("join.paragraph3")}
// TODO:             <br />
// TODO:             <a target="_blank" href= "mailto:netzwerk@kartevonmorgen.org">
// TODO:               netzwerk@kartevonmorgen.org
// TODO:             </a>
// TODO:           </p>
// TODO:         </div>;
// TODO:         break;
// TODO:       default:
// TODO:     }
// TODO: 
// TODO:     return (
// TODO:       <LandingWrapper className="landing">
// TODO:         <div className = "banner">
// TODO:           <div className = "content pure-g">
// TODO:             <div className = "logo-wrapper pure-u-11-24 pure-u-md-1-3">
// TODO:               <div className = "logo">
// TODO:                 <a onClick={() => onClick('landing')} href="#">
// TODO:                   <img className="logo pure-img" src={logo} />
// TODO:                 </a>
// TODO:               </div>
// TODO:             </div>
// TODO:             <div className="menu-wrapper pure-u-1 pure-u-md-2-3">
// TODO:               <div className = "language-wrapper">
// TODO:                 <a onClick={() => {i18n.changeLanguage('de');}} href="#"
// TODO:                   className={"language-link" + ((i18n.language.includes("de")) ? " selected" : " unselected")}>de</a>
// TODO:                 {" "}
// TODO:                 <a onClick={() => {i18n.changeLanguage('en');}} href="#"
// TODO:                   className={"language-link" + ((i18n.language.includes("en")) ? " selected" : " unselected")}>en</a>
// TODO:                 {" "}
// TODO:                 <a onClick={() => {i18n.changeLanguage('es');}} href="#"
// TODO:                   className={"language-link" + ((i18n.language.includes("es")) ? " selected" : " unselected")}>es</a>
// TODO:               </div>
// TODO:               <div className="menu pure-menu pure-menu-horizontal">
// TODO:                 <ul className="pure-g menu-items-wrapper">
// TODO:                   <li className="pure-u-1-3 pure-u-md-1-5 menu-item">
// TODO:                     <a onClick={() => onClick('map')} href="#" className="pure-menu-link">
// TODO:                       {t("menu.map")}
// TODO:                     </a>
// TODO:                   </li>
// TODO:                   <li className="pure-u-1-3 pure-u-md-1-5 menu-item">
// TODO:                     <a onClick= {() => onClick(V.INFO)} href="#" className="pure-menu-link">
// TODO:                       {t("menu.infos")}
// TODO:                     </a>
// TODO:                   </li>
// TODO:                   <li className="pure-u-1-3 pure-u-md-1-5 menu-item">
// TODO:                     <a onClick = {() => onClick(V.CONTACT)} href="#" className="pure-menu-link">
// TODO:                       {t("menu.contact")}
// TODO:                     </a>
// TODO:                   </li>
// TODO:                   <li className="pure-u-1-3 pure-u-md-1-5 menu-item">
// TODO:                     <a onClick={() => onClick(V.DONATE)} href="#" className="pure-menu-link">
// TODO:                       {t("menu.donate")}
// TODO:                     </a>
// TODO:                   </li>
// TODO:                   <li className="pure-u-1-3 pure-u-md-1-5 menu-item">
// TODO:                     { loggedIn ?
// TODO:                       <a onClick = {() => onClick(V.LOGOUT)} href="#" className="pure-menu-link">
// TODO:                         {t("menu.logout")}
// TODO:                       </a>
// TODO:                       : <a onClick = {() => onClick(V.LOGIN)} href="#" className="pure-menu-link">
// TODO:                         {t("menu.login")}
// TODO:                       </a>
// TODO:                     }
// TODO:                   </li>
// TODO:                 </ul>
// TODO:               </div>
// TODO:             </div>
// TODO:           </div>
// TODO:         </div>
// TODO:         <div className ={ "search" + (content ? '' : ' start')}>
// TODO:           <div className = "landing-content">
// TODO:             <h1>{t("slogan")}</h1>
// TODO:             <div className="place-search">
// TODO:               <div className= "pure-g pure-form">
// TODO:                 <input
// TODO:                   className   = "pure-u-1"
// TODO:                   onChange    = {onPlaceSearch}
// TODO:                   onKeyUp     = {onKeyUp}
// TODO:                   value       = {searchText || ''}
// TODO:                   type        = 'text'
// TODO:                   placeholder = {t("city-search.placeholder")}
// TODO:                 />
// TODO:                 <div className = "pure-u-1">
// TODO:                   { searchText && !loadingSearch
// TODO:                     ? (searchError
// TODO:                       ? <div className="error">
// TODO:                         <span className="errorText">{t("city-search.error")}</span>&nbsp;&nbsp;
// TODO:                         <a onClick={() => onClick('map')} href="#" className="link">
// TODO:                           {t("city-search.show-map")}
// TODO: 
// TODO:                         </a>
// TODO:                       </div>
// TODO:                       : cities && cities.length > 0
// TODO:                         ? <CityList cities={cities} onClick={onSelection} selectedCity={this.state.selectedCity} selectedColor="#000"/>
// TODO:                         : <div className="error">{t("city-search.no-results")}&nbsp;&nbsp;
// TODO:                           <a onClick={() => onClick('map')} href="#" className="link">
// TODO:                             {t("city-search.show-map")}
// TODO:                           </a></div>
// TODO:                     )
// TODO:                     : null
// TODO:                   }
// TODO:                 </div>
// TODO:               </div>
// TODO:             </div>
// TODO:           </div>
// TODO:         </div>
// TODO:         <div className = "explain">{
// TODO:           content == null
// TODO:             ? <a href= "#tutorial" className= "circleTutorial">
// TODO:               <strong>
// TODO:                 Tutorial
// TODO:                 <div style ={{ paddingTop: "10px", fontSize: "12px"}}>
// TODO:                   <FontAwesomeIcon icon="chevron-down"/>
// TODO:                 </div>
// TODO:               </strong>
// TODO:             </a>
// TODO:             : null }
// TODO:         <div className = "content">{
// TODO:           content == null
// TODO:             ? <div>
// TODO:               {loggedIn ? loginInfo : null} <Explain onClick = { onClick } />
// TODO:             </div>
// TODO:             : contentComp
// TODO:         }</div>
// TODO:         </div>
// TODO:         <div className= "footer">
// TODO:           <h3>{t("footer.heading")}</h3>
// TODO:           <p>
// TODO:             {t("footer.contact")}<a target="_blank" href={URLs.MAIL.link}>{URLs.MAIL.name}</a>
// TODO:             <br />
// TODO:             {t("footer.social-media")}<a target="_blank" href={URLs.FACEBOOK.link}>{URLs.FACEBOOK.name}</a>
// TODO:             <br />
// TODO:             {t("footer.open-source")}<a target="_blank" href={URLs.REPOSITORY.link}>{URLs.REPOSITORY.name}</a>
// TODO:           </p>
// TODO:           <p>
// TODO:             <a className="smallLink" href="#" onClick={() => onClick(V.IMPRINT)}>{t("footer.imprint")}</a>
// TODO:             <a className="smallLink" href="#" onClick={() => onClick(V.PRIVACY_STATEMENT)}>{t("footer.privacyStatement")}</a>
// TODO:           </p>
// TODO:           <p>
// TODO:             {user.email != null ? <a onClick={onDeleteAccount} href="#">
// TODO:               Account löschen
// TODO:             </a> : ""}
// TODO:           </p>
// TODO:         </div>
// TODO:       </LandingWrapper>);
// TODO:   }
// TODO: }
// TODO: 
// TODO: LandingPage.propTypes = {
// TODO:   content     : T.string,
// TODO:   searchText  : T.string,
// TODO:   searchError : T.bool,
// TODO:   cities      : T.array,
// TODO:   onChange    : T.func,
// TODO:   onEscape    : T.func,
// TODO:   onSelection : T.func
// TODO: };
// TODO: 
// TODO: module.exports = translate('translation')(LandingPage)
// TODO: 
// TODO: const LandingWrapper = styled.div`
// TODO:   position: absolute;
// TODO:   z-index: 100;
// TODO:   width: 100%;
// TODO:   height: 100%;
// TODO:   z-index: 1001;
// TODO:   background-color: rgba(0,0,0,0.7);
// TODO:   h1, h3 {
// TODO:     font-family: ${STYLE.headerFont};
// TODO:     font-weight: 500;
// TODO:   }
// TODO:   h3 {
// TODO:     font-size: 1.5em;
// TODO:     margin: 0.3em 0;
// TODO:   }
// TODO:   h2 {
// TODO:     font-size: 2em;
// TODO:     margin-top: 1.5em;
// TODO:     font-weight: 500;
// TODO:   }
// TODO:   input {
// TODO:     font-size: 1.2em;
// TODO:   }
// TODO:   p {
// TODO:     margin-block-start: 0.1em;
// TODO:   }
// TODO:   .place-search {
// TODO:     max-width: 500px;
// TODO:     margin: auto;
// TODO:     margin-top: 2em;
// TODO:     margin-bottom: 2em;
// TODO:     .error {
// TODO:       margin: auto;
// TODO:       padding: 1.1em;
// TODO:       background: rgba(0,0,0,0.5);
// TODO:       border-radius: 0 0 0.3em 0.3em;
// TODO:       .errorText {
// TODO:         color: #f44;
// TODO:       }
// TODO:       .link {
// TODO:         color: #08f;
// TODO:       }
// TODO:     }
// TODO: 
// TODO:     /* only of city list on landing page, probably use props */
// TODO:     .city-list {
// TODO:       padding-top: 0.3em;
// TODO:       background: rgba(0,0,0,0.5);
// TODO:       border-radius: 0 0 0.3em 0.3em;
// TODO:       li:hover {
// TODO:         background: #000;
// TODO:         border-radius: 0 0 0.3em 0.3em;
// TODO:         div.chevron {
// TODO:           color: #fff;
// TODO:         }
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   .content {
// TODO:     max-width: 900px;
// TODO:     margin: auto;
// TODO:     z-index: 0;
// TODO:     .login-info {
// TODO:       margin-bottom: 10em;
// TODO:     }
// TODO:     .imprint-heading {
// TODO:       margin-top: 2em;
// TODO:       margin-bottom: 0.5em;
// TODO:     }
// TODO:   }
// TODO:   .banner {
// TODO:     background-color: #fff;
// TODO:     .content {
// TODO:       max-width: initial;
// TODO:       padding-bottom: 20px;
// TODO:       div.logo {
// TODO:         padding-top: 1em;
// TODO:         margin-left: 50px;
// TODO:       }
// TODO:       img.logo {
// TODO:         max-width: 137.633px;
// TODO:         max-height: 57px;
// TODO:         width: 100%;
// TODO:       }
// TODO:     }
// TODO:     .menu-wrapper {
// TODO:       text-align: right;
// TODO:       .language-wrapper {
// TODO:         margin: -4px 20px 24px 0;
// TODO:         font-size: 0.8em;
// TODO:         color: #777;
// TODO:         .language-link {
// TODO:           margin: 3pt;
// TODO:           text-decoration: none;
// TODO:           &.selected {
// TODO:             color: #95be0b;
// TODO:             pointer-events: none;
// TODO:           }
// TODO:           &.unselected {
// TODO:             color: #555;
// TODO:             &:hover {
// TODO:               color: #000;
// TODO:             }
// TODO:           }
// TODO:         }
// TODO:       }
// TODO:     }
// TODO:     .menu-wrapper-inner {
// TODO:       bottom: 0;
// TODO:       width: 100%;
// TODO:       height: 20px;
// TODO:       margin-bottom: 10px;
// TODO:     }
// TODO:     .menu {
// TODO:       font-size: 0.9em;
// TODO:       display: inline-block;
// TODO:       position: relative;
// TODO:       max-width: 655px;
// TODO:       ul {
// TODO:         margin: 0 30px 0 0;
// TODO:       }
// TODO:       li {
// TODO:         &:hover {
// TODO:           text-decoration: underline;
// TODO:         }
// TODO:         &:active {
// TODO:           text-decoration: underline;
// TODO:         }
// TODO:         a {
// TODO:           background: transparent;
// TODO:         }
// TODO:       }
// TODO:       .menu-item {
// TODO:         text-align: center;
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   .explain {
// TODO:     background-color: #fff;
// TODO:     text-align: center;
// TODO:     padding: 50px 1em;
// TODO:     position: relative;
// TODO:     ul {
// TODO:       text-align: left;
// TODO:       max-width: 600px;
// TODO:       text-align: left;
// TODO:       margin: auto;
// TODO:     }
// TODO:     h1 {
// TODO:       margin-top: 0;
// TODO:     }
// TODO:     p {
// TODO:       font-size: 1.2em;
// TODO:     }
// TODO:     a {
// TODO:       color: ${STYLE.darkGray};
// TODO:     }
// TODO:     .teamMember {
// TODO:       vertical-align: top;
// TODO:       display: inline-block;
// TODO:       width: 200px;
// TODO:       margin-top: 30px;
// TODO:       .team-member-name {
// TODO:         font-weight: bold;
// TODO:       }
// TODO:       .circle {
// TODO:         display: inline-block;
// TODO:         width: 100px;
// TODO:         height: 100px;
// TODO:         border-radius: 50px;
// TODO:         margin: 10px;
// TODO:         overflow: hidden;
// TODO:         img {
// TODO:           width: 100%;
// TODO:         }
// TODO:         &.pink {
// TODO:           background-color: ${STYLE.pink};
// TODO:         }
// TODO:         &.yellow {
// TODO:           background-color: ${STYLE.yellow};
// TODO:         }
// TODO:         &.berry {
// TODO:           background-color: ${STYLE.berry};
// TODO:         }
// TODO:         &.green {
// TODO:           background-color: ${STYLE.green};
// TODO:         }
// TODO:         &.blue {
// TODO:           background-color: ${STYLE.blue};
// TODO:         }
// TODO:         &.grayBlue {
// TODO:           background-color: ${STYLE.grayBlue};
// TODO:         }
// TODO:       }
// TODO:     }
// TODO:     .version {
// TODO:       font-size: 0.7em;
// TODO:     }
// TODO:     .circleTutorial {
// TODO:       display: block;
// TODO:       text-decoration: none;
// TODO:       position: absolute;
// TODO:       width: 100px;
// TODO:       border-radius: 50px;
// TODO:       background-color: #000;
// TODO:       color: #fff;
// TODO:       left: 50%;
// TODO:       margin-left: -50px;
// TODO:       height: 73px;
// TODO:       top: -180px;
// TODO:       padding-top: 27px;
// TODO:       cursor: pointer;
// TODO:       z-index: 1;
// TODO:     }
// TODO:     .partnerLogo {
// TODO:       margin: 2em;
// TODO:       border: none;
// TODO:       width: 25%;
// TODO:       vertical-align: middle;
// TODO:     }
// TODO:     hr {
// TODO:       margin: 100px 40px;
// TODO:       &:before {
// TODO:         content: ' ';
// TODO:         display: block;
// TODO:         position: absolute;
// TODO:         margin-left: -100px;
// TODO:         margin-top: -35px;
// TODO:         background-color: #fff;
// TODO:         background-image: url(${pincloud});
// TODO:         background-repeat: no-repeat;
// TODO:         background-position: center center;
// TODO:         left: 50%;
// TODO:         width: 200px;
// TODO:         height: 70px;
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   .footer {
// TODO:     background-color: ${STYLE.darkGray};
// TODO:     color: #fff;
// TODO:     text-align: center;
// TODO:     padding: 20px 20px 50px 20px;
// TODO:     line-height: 1.5em;
// TODO:     h3 {
// TODO:       font-size: 1.5em;
// TODO:     }
// TODO:     a {
// TODO:       color: #fff;
// TODO:     }
// TODO:     .smallLink {
// TODO:       margin: 0 7px;
// TODO:     }
// TODO:   }
// TODO:   .search {
// TODO:     text-align: center;
// TODO:     padding: 50px 1em;
// TODO:     position: relative;
// TODO:     text-align: center;
// TODO:     color: #fff;
// TODO:     height: 150px;
// TODO:     z-index: 1;
// TODO:     ul {
// TODO:       text-align: left;
// TODO:     }
// TODO:     h1 {
// TODO:       margin-top: 0;
// TODO:       font-size: 3em;
// TODO:     }
// TODO:     .landing-content {
// TODO:       position: relative;
// TODO:       top: 20%;
// TODO:       bottom: 0;
// TODO:       left: 0;
// TODO:       right: 0;
// TODO:       width: calc(100vw - 50px);
// TODO:       height: 50%;
// TODO:       margin: 0 10px;
// TODO:       display: inline-block;
// TODO:     }
// TODO:     h2 {
// TODO:       font-weight: normal;
// TODO:       font-size: 1.4em;
// TODO:     }
// TODO:     input {
// TODO:       color: ${STYLE.coal};
// TODO:     }
// TODO:     button {
// TODO:       color: ${STYLE.coal};
// TODO:     }
// TODO:     &.start {
// TODO:       height: calc(100% - 100px);
// TODO:       .content {
// TODO:         height: 30%;
// TODO:       }
// TODO:     }
// TODO:   }
// TODO: `
