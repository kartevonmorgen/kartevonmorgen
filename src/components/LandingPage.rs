use crate::{Mdl,Msg, components::pure::LandingExplain as Explain};
use seed::prelude::*;

// TODO: import { translate }        from "react-i18next";

// TODO: import logo                 from "../img/logo.png";
// TODO: import CityList             from "./pure/CityList";
// TODO: import Info                 from "./pure/Info";
// TODO: import Contact              from "./pure/Contact";
// TODO: import Imprint              from "./pure/Imprint";
// TODO: import PrivacyStatement     from "./pure/PrivacyStatement";
// TODO: import Register             from "./pure/Register";
// TODO: import Login                from "./pure/Login";
// TODO: import URLs                 from "../constants/URLs";
// TODO: import V                    from "../constants/PanelView";
// TODO: import i18n                 from "../i18n";
// TODO: import STYLE                from "./styling/Variables"
// TODO: import pincloud             from "../img/pincloud.png";

pub fn view(mdl: &Mdl) -> Node<Msg> {

// TODO:   state = {
// TODO:     selectedCity : 0,
// TODO:   }
// TODO:
            let content : Option<String> = None;
            let loggedIn = false;
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
             let loginInfo = div![ class!["login-info"],
               p![ /* TODO: {t("subscribeToBbox.message")} */ br![],
                 a![
                    // TODO: onClick={() => onClick(V.SUBSCRIBE_TO_BBOX)}
                    attrs!{ At::Href =>"#"; },
                    // TODO: {subscriptionLink}
                 ], "."
               ]
             ];

             let contentComp =
             match content {
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
                 _ => empty!()
             };

               div![ class!["landing"],
                 div![ class!["banner"],
                   div![ class!["content","pure-g"],
                     div![ class!["logo-wrapper", "pure-u-11-24", "pure-u-md-1-3"],
                       div![ class!["logo"],
                         a![
                           // TODO: onClick={() => onClick('landing')}
                           attrs!{ At::Href => "#"; },
                           img![class!["logo","pure-img"], attrs!{ /* TODO: At::Src =>{logo}; */ } ]
                         ]
                       ]
                     ],
                     div![ class!["menu-wrapper", "pure-u-1", "pure-u-md-2-3"],
                       div![ class!["language-wrapper"],
// TODO:                 <a onClick={() => {i18n.changeLanguage('de');}} href="#"
// TODO:                   className={"language-link" + ((i18n.language.includes("de")) ? " selected" : " unselected")}>de</a>
// TODO:                 {" "}
// TODO:                 <a onClick={() => {i18n.changeLanguage('en');}} href="#"
// TODO:                   className={"language-link" + ((i18n.language.includes("en")) ? " selected" : " unselected")}>en</a>
// TODO:                 {" "}
// TODO:                 <a onClick={() => {i18n.changeLanguage('es');}} href="#"
// TODO:                   className={"language-link" + ((i18n.language.includes("es")) ? " selected" : " unselected")}>es</a>
                       ],
                       div![ class!["menu","pure-menu", "pure-menu-horizontal"],
                         ul![ class!["pure-g", "menu-items-wrapper"],
                           li![ class!["pure-u-1-3", "pure-u-md-1-5", "menu-item"],
                             a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                               // TODO: onClick={() => onClick('map')}
                               // TODO: {t("menu.map")}
                               "Map"
                             ]
                           ],
                           li![ class!["pure-u-1-3", "pure-u-md-1-5", "menu-item"],
                             a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                                // TODO: onClick= {() => onClick(V.INFO)}
                                // TODO: {t("menu.infos")}
                                "About us"
                             ]
                           ],
                           li![ class!["pure-u-1-3", "pure-u-md-1-5", "menu-item"],
                             a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                               // TODO: onClick = {() => onClick(V.CONTACT)}
                               // TODO: {t("menu.contact")}
                               "Contact"
                             ]
                           ],
                           li![ class!["pure-u-1-3", "pure-u-md-1-5", "menu-item"],
                             a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                               // TODO: onClick={() => onClick(V.DONATE)}
                               // TODO: {t("menu.donate")}
                                "Donate"
                             ]
                           ],
                           li![ class!["pure-u-1-3", "pure-u-md-1-5", "menu-item"],
                           if loggedIn {
                               a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                                 // TODO: onClick = {() => onClick(V.LOGOUT)}
                                 // TODO: {t("menu.logout")}
                                 "Logout"
                               ]
                           } else {
                               a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                                 // TODO: onClick = {() => onClick(V.LOGIN)}
                                 // TODO: {t("menu.login")}
                                 "Login"
                               ]
                             }
                           ]
                         ]
                       ]
                     ]
                   ]
                 ],
                 div![ class!["search", if content.is_some() { "" } else { "start" }],
                   div![ class!["landing-content"],
                     h1![ "Mapping for Good" /* TODO: t("slogan") */ ],
                     div![ class!["place-search"],
                       div![ class!["pure-g pure-form"],
                         input![
                           class!["pure-u-1"],
                           // TODO: onChange    = {onPlaceSearch}
                           // TODO: onKeyUp     = {onKeyUp}
                           attrs!{
                             // TODO: value = {searchText || ''}
                             At::Type => "text";
                             At::Placeholder => "Which place would you like to discover?"; //TODO: {t("city-search.placeholder")}
                           }
                         ],
                         div![ class!["pure-u-1"],
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
                         ]
                       ]
                     ]
                   ]
                 ],
                 div![ class!["explain"],
                   if content.is_none() {
                     a![ attrs!{ At::Href => "#tutorial"; }, class!["circleTutorial"],
                       strong![
                         "Tutorial",
                         div![ style!{ St::PaddingTop => px(10); St::FontSize => px(12); },
                           i![ class!["fa", "fa-chevron-down"] ]
                         ]
                       ]
                     ]
                    } else { empty!() },
                    div![ class!["content"],
                      if content.is_none() {
                        div![
                            if loggedIn { loginInfo } else { empty!() },
                            Explain::view(&mdl), // TODO: onClick = { onClick }
                         ]
                      } else {
                        contentComp
                      }
                    ]
                 ],
                 div![ class!["footer"],
                   h3![ "Tomorrow starts today" /* TODO: t("footer.heading")} */ ],
                   p![
// TODO:             {t("footer.contact")}<a target="_blank" href={URLs.MAIL.link}>{URLs.MAIL.name}</a>
// TODO:             <br />
// TODO:             {t("footer.social-media")}<a target="_blank" href={URLs.FACEBOOK.link}>{URLs.FACEBOOK.name}</a>
// TODO:             <br />
// TODO:             {t("footer.open-source")}<a target="_blank" href={URLs.REPOSITORY.link}>{URLs.REPOSITORY.name}</a>
                   ],
                   p![
// TODO:             <a className="smallLink" href="#" onClick={() => onClick(V.IMPRINT)}>{t("footer.imprint")}</a>
// TODO:             <a className="smallLink" href="#" onClick={() => onClick(V.PRIVACY_STATEMENT)}>{t("footer.privacyStatement")}</a>
                   ],
                   p![
// TODO:             {user.email != null ? <a onClick={onDeleteAccount} href="#">
// TODO:               Account löschen
// TODO:             </a> : ""}
                   ]
                 ]
               ]
}
