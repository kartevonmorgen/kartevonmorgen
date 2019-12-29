use crate::{
    i18n::{self, Translator},
    components::pure::{CityList, LandingExplain as Explain},
    Actions, Mdl, Msg, constants::{URLs,PanelView::PanelView as V}
};
use seed::prelude::*;

// TODO: import logo                 from "../img/logo.png";
// TODO: import Info                 from "./pure/Info";
// TODO: import Contact              from "./pure/Contact";
// TODO: import Imprint              from "./pure/Imprint";
// TODO: import PrivacyStatement     from "./pure/PrivacyStatement";
// TODO: import Register             from "./pure/Register";
// TODO: import Login                from "./pure/Login";
// TODO: import STYLE                from "./styling/Variables"
// TODO: import pincloud             from "../img/pincloud.png";

pub fn view<F>(mdl: &Mdl, onClick: F) -> Node<Msg>
    where F: Fn(&str) -> Msg
{

            let content : Option<String> = None;
            let loggedIn = false;
            let searchText = &mdl.search.city;
            let selectedCityIdx = mdl.search.selectedCity.unwrap_or(0);
            let currentCity = mdl.search.cities.get(selectedCityIdx).cloned();
            let searchError = false;
            let loadingSearch = false;
            let user = &mdl.user;

            // TODO: const { content, searchError,
            // TODO:   onChange, onRegister, onLogin, loggedIn, onDeleteAccount, loadingSearch } = this.props;

            let t = |key| {
                mdl.t(&format!("landingPage.{}", key))
            };

            let onKeyUp = move |ev:web_sys::KeyboardEvent|{
               ev.prevent_default();
               match &*ev.key() {
                "Escape" => {
                    Msg::Client(Actions::client::Msg::setCitySearchText("".to_string()))
                }
                "Enter" => {
                    if let Some(city) = currentCity {
                        Msg::Client(Actions::client::Msg::onLandingPageCitySelection(city))
                    } else {
                        Msg::Client(Actions::client::Msg::Nop)
                    }
                }
                "ArrowDown" => {
                    Msg::Client(Actions::client::Msg::ChangeSelectedCity(1))
                }
                "ArrowUp" => {
                    Msg::Client(Actions::client::Msg::ChangeSelectedCity(-1))
                }
                _=> {
                    Msg::Client(Actions::client::Msg::Nop)
                }
               }
            };

             let subscriptionLink = if user.subscriptionExists {
                t("subscribeToBbox.edit-link")
             } else {
                t("subscribeToBbox.new-link")
             };
             let loginInfo = div![ class!["login-info"],
               p![
                 t("subscribeToBbox.message"),
                 br![],
                 a![
                    simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::showInfo(Some(V::SUBSCRIBE_TO_BBOX)))),
                    attrs!{ At::Href =>"#"; },
                    subscriptionLink
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
                           simple_ev(Ev::Click, onClick("landing")),
                           attrs!{ At::Href => "#"; },
                           img![class!["logo","pure-img"], attrs!{ /* TODO: At::Src =>{logo}; */ } ]
                         ]
                       ]
                     ],
                     div![ class!["menu-wrapper", "pure-u-1", "pure-u-md-2-3"],
                       div![ class!["language-wrapper"],
                         a![
                           simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::SetLocale(i18n::Lang::De))),
                           attrs!{ At::Href => "#"; },
                           class![
                               "language-link",
                               if mdl.view.current_lang == i18n::Lang::De { "selected" } else { "unselected" }
                           ],
                           "de"
                         ],
                         " ",
                         a![
                           simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::SetLocale(i18n::Lang::En))),
                           attrs!{ At::Href => "#"; },
                           class![
                               "language-link",
                               if mdl.view.current_lang == i18n::Lang::En { "selected" } else { "unselected" }
                           ],
                           "en"
                         ],
                         " ",
                         a![
                           simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::SetLocale(i18n::Lang::Es))),
                           attrs!{ At::Href => "#"; },
                           class![
                               "language-link",
                               if mdl.view.current_lang == i18n::Lang::Es { "selected" } else { "unselected" }
                           ],
                           "es"
                         ]
                       ],
                       div![ class!["menu","pure-menu", "pure-menu-horizontal"],
                         ul![ class!["pure-g", "menu-items-wrapper"],
                           li![ class!["pure-u-1-3", "pure-u-md-1-5", "menu-item"],
                             a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                               simple_ev(Ev::Click, onClick("map")),
                               t("menu.map")
                             ]
                           ],
                           li![ class!["pure-u-1-3", "pure-u-md-1-5", "menu-item"],
                             a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                                simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::showInfo(Some(V::INFO)))),
                                t("menu.infos")
                             ]
                           ],
                           li![ class!["pure-u-1-3", "pure-u-md-1-5", "menu-item"],
                             a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                                simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::showInfo(Some(V::CONTACT)))),
                               t("menu.contact")
                             ]
                           ],
                           li![ class!["pure-u-1-3", "pure-u-md-1-5", "menu-item"],
                             a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                                simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::showInfo(Some(V::DONATE)))),
                                t("menu.donate")
                             ]
                           ],
                           li![ class!["pure-u-1-3", "pure-u-md-1-5", "menu-item"],
                           if loggedIn {
                               a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                                 simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::showInfo(Some(V::LOGOUT)))),
                                 t("menu.logout")
                               ]
                           } else {
                               a![ class!["pure-menu-link"], attrs!{ At::Href => "#"; },
                                 simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::showInfo(Some(V::LOGIN)))),
                                 t("menu.login")
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
                     h1![ t("slogan") ],
                     div![ class!["place-search"],
                       div![ class!["pure-g pure-form"],
                         input![
                           class!["pure-u-1"],
                           input_ev(Ev::Input,|txt|Msg::Client(Actions::client::Msg::setCitySearchText(txt))),
                           keyboard_ev(Ev::KeyUp, onKeyUp),
                           attrs!{
                             At::Value => if let Some(txt) = searchText { txt } else { "" };
                             At::Type => "text";
                             At::Placeholder => t("city-search.placeholder");
                           }
                         ],
                         div![ class!["pure-u-1"],
                            if searchText.is_some() && !loadingSearch {
                                if searchError {
                                    div![ class!["error"],
                                        span![
                                            class!["errorText"],
                                            t("city-search.error")
                                        ],
                                        //TODO: "&nbsp;&nbsp;",
                                        a![
                                            attrs!{ At::Href =>"#"; },
                                            class!["link"],
                                            simple_ev(Ev::Click, onClick("map")),
                                            t("city-search.show-map")
                                        ]
                                    ]
                                } else {
                                    if !mdl.search.cities.is_empty() {
                                        CityList::view(
                                            &mdl.search.cities,
                                            &mdl.search.selectedCity,
                                            Actions::client::Msg::onLandingPageCitySelection
                                        )
                                        .map_message(Msg::Client)
                                    }  else {
                                        div![ class!["error"],
                                            t("city-search.no-results"),
                                            // TODO: "&nbsp;&nbsp;",
                                            a![
                                                attrs!{ At::Href =>"#"; },
                                                class!["link"],
                                                simple_ev(Ev::Click, onClick("map")),
                                                t("city-search.show-map")
                                            ]
                                        ]
                                    }
                                }
                            } else { empty!() }
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
                   h3![ t("footer.heading") ],
                   p![
                     t("footer.contact"),
                     a![
                        attrs!{
                            At::Target => "_blank";
                            At::Href => URLs::MAIL::link;
                        },
                        URLs::MAIL::name
                     ],
                     br![],
                     t("footer.social-media"),
                     a![
                        attrs!{
                            At::Target => "_blank";
                            At::Href => URLs::FACEBOOK::link;
                        },
                        URLs::FACEBOOK::name
                     ],
                     br![],
                     t("footer.open-source"),
                     a![
                        attrs!{
                            At::Target => "_blank";
                            At::Href => URLs::REPOSITORY::link;
                        },
                        URLs::REPOSITORY::name
                     ]
                   ],
                   p![
                     a![
                        class!["smallLink"],
                        attrs!{ At::Href => "#"; },
                        simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::showInfo(Some(V::IMPRINT)))),
                        t("footer.imprint")
                     ],
                     a![
                        class!["smallLink"],
                        attrs!{ At::Href => "#"; },
                        simple_ev(Ev::Click, Msg::Client(Actions::client::Msg::showInfo(Some(V::PRIVACY_STATEMENT)))),
                        t("footer.privacyStatement")
                     ],
                   ],
                   p![
                     if user.email.is_some() {
                        a![
                          // onClick={onDeleteAccount}
                          attrs!{ At::Href => "#"; },
                          "Account löschen" // TODO: i18n
                        ]
                     } else {
                        empty!()
                     }
                   ]
                 ]
               ]
}
