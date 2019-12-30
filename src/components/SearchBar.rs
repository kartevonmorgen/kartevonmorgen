use crate::{
    Mdl, Msg, i18n::Translator,
    constants::{
        PanelView::PanelView as V,
        Categories::{ MAIN_IDS, IDS }
    },
    components::styling::Variables as STYLE                               
};
use seed::prelude::*;

// TODO: import { SpinLoader }                      from 'react-loaders-spinners';

const borderRadius : &str = "0.4em";

fn CategoryButtons(/* disabled, */ active: &[IDS], /* onToggle */ translator: &dyn Translator) -> Node<Msg>
{
    let base_style = style!{
        St::BoxSizing => "border-box";
        St::Border => "none";
        St::Outline => "none";
        St::Padding => em(0.5);
        St::TextTransform => "uppercase";
        St::BackgroundColor => "#f7f7f7";
    };

    let buttons = MAIN_IDS.iter().map(|c| {
        let act = active.contains(c);
        button![
            &base_style,
            // TODO: disabled  = { disabled }
            // TODO: onClick   = { () => { onToggle(c) }}
            // TODO: button > i.toggle {
            // TODO:   text-align: left;
            // TODO:   display: block;
            // TODO:   width: 1.8em;
            // TODO:   height: 0.9em;
            // TODO:   border: 1px solid #fff;
            // TODO:   border-radius: 0.5em;
            // TODO:   float: right;
            // TODO:
            // TODO:   > i {
            // TODO:     display: inline-block;
            // TODO:     height: 0.9em;
            // TODO:     width: 0.9em;
            // TODO:     border-radius: 0.5em;
            // TODO:     background-color: #FFF;
            // TODO:     vertical-align: top;
            // TODO:     border: 1px solid #FFF;
            // TODO:     margin: -1px;
            // TODO:   }
            // TODO: }
            // TODO:
            // TODO: button.active > i.toggle {
            // TODO:   text-align: right !important;
            // TODO: }
            // TODO:
            // TODO: ${props => props.standalone && `
            // TODO:   button:first-child {
            // TODO:     border-radius: ${borderRadius} 0 0 0;
            // TODO:   }
            // TODO:   button:last-child {
            // TODO:     border-radius: 0 ${borderRadius} 0 0;
            // TODO:   }
            // TODO: `}
            if act {
                style!{
                    St::Color => "#fff";
                    St::BoxShadow => "inset 0.2px 0.2px 2px 1px rgba(0, 0, 0, 0.4)";
                    St::Background => match c {
                        IDS::INITIATIVE => STYLE::initiative,
                        IDS::EVENT => STYLE::event,
                        IDS::COMPANY => STYLE::company
                    };
                }
            } else {
                style!{ }
            },
            class![
                c.NAMES(),
                c.CSS_CLASS_SIZE(),
            ],
            if act {
                class![ "active" ]
            } else {
                class![ ]
            },
            translator.t(&format!("category.{}", c.NAMES()))
        ]
       })
       .collect::<Vec<_>>();

    div![ buttons ]
}

// TODO:   onChange = (ev) => {
// TODO:     var ref, v;
// TODO:     if ((v = (ref = ev.target) != null ? ref.value : void 0) == null) {
// TODO:       return;
// TODO:     }
// TODO:     this.props.onChange(v);
// TODO:   }
// TODO:
// TODO:   onFocus = (ev) => {
// TODO:     ev.target.select();
// TODO:   }
// TODO:
// TODO:   onKeyUp = (ev) => {
// TODO:     ev.preventDefault();
// TODO:     switch (ev.key) {
// TODO:       case "Escape":
// TODO:         this.props.onEscape();
// TODO:         break;
// TODO:       case "Enter":
// TODO:         this.props.onEnter();
// TODO:     }
// TODO:   }

pub fn view(mdl: &Mdl) -> Node<Msg> {

               // TODO: toggleCat={ c => {
               // TODO:   if(search.categories.includes(c)){
               // TODO:     dispatch(Actions.disableSearchCategory(c));
               // TODO:   } else {
               // TODO:     dispatch(Actions.enableSearchCategory(c));
               // TODO:   }
               // TODO:   return dispatch(Actions.search());
               // TODO: }}
               // TODO: onChange={txt => {
               // TODO:   if (txt == null) {
               // TODO:     txt = "";
               // TODO:   }
               // TODO:   dispatch(Actions.setSearchText(txt));
               // TODO:   return dispatch(Actions.search());
               // TODO: }}
               // TODO: onEscape={ () => {
               // TODO:   return dispatch(Actions.setSearchText(''));
               // TODO: }}

               let _type = "integrated";
               let searchText = &mdl.search.text;
               let categories= &mdl.search.categories;
               let disabled = mdl.view.left == Some(V::EDIT) || mdl.view.left == Some(V::NEW);
               let loading = mdl.server.loadingSearch;

               div![
                    if _type == "integrated" {
                        style! {
                            St::BorderBottom => format!("1px solid {}",STYLE::lightGray);
                        }
                    } else {
                        style! {}
                        // TODO: ${props => props.standalone && `
                        // TODO:   box-shadow: 2px 2px 8px 4px rgba(0,0,0,0.6);
                        // TODO:   border-radius: ${borderRadius};
                        // TODO:
                        // TODO:   input{
                        // TODO:     border-radius: 0 0 ${borderRadius} ${borderRadius};
                        // TODO:   }
                        // TODO: `}
                    },
                    style!{
                      St::Width => percent(100);
                      St::BoxSizing => "border-box";
                      St::Background => "#fff";
                 },
                 class![
                    "SearchBar",
                    "pure-g",
                    _type
                 ],
                 div![
                    class![
                        "main-categories",
                        "pure-u-1",
                        "pure-g"
                        _type,
                    ],
                    style!{
                        St::FontSize => em(0.8);
                        St::Color => STYLE::darkGray;
                   },
                   CategoryButtons(
                     categories,
                     // TODO: disabled  = { disabled   }
                     // TODO: onToggle  = { toggleCat  }
                     mdl
                   )
                 ],

                 div![ class!["pure-u-1"],
                   div![
                      // TODO: input, span.search-icon {
                      // TODO:   font-size: 1.2em;
                      // TODO: }
                      // TODO:
                        class!["search-icon"],
                        style!{
                            St::Position => "absolute";
                            St::Margin => "0.5em 0 0 0.9em";
                            St::Display => "inline-block";
                            St::Color => STYLE::darkGray;
                            St::ZIndex => 5;
                            St::FontSize => rem(1.2);
                        },
                        // TODO: onClick = { this.props.onLenseClick }
                        if loading {
                            // TODO: <SpinLoader
                            // TODO:   height={17}
                            // TODO:   width={17}
                            // TODO:   thickness={3}
                            // TODO:   pColor={STYLE.darkGray}
                            // TODO:   sColor="white"/>
                            empty!()
                        } else {
                            i![
                                class!["fa","fa-search"],
                                style!{
                                    St::Margin => "0.1em 0 0 0.1em";
                                    St::AnimationDuration => "150ms";
                                    // TODO: animation-name: turn;
                                    // TODO:
                                    // TODO: @keyframes turn {
                                    // TODO:   from {
                                    // TODO:     transform: rotate(330deg);
                                    // TODO:   }
                                    // TODO:
                                    // TODO:   to {
                                    // TODO:     transform: rotate(360deg);
                                    // TODO:   }
                                    // TODO: }
                                }
                            ]
                        }
                   ],

                   input![
                    style!{
                          // TODO: ::placeholder{
                          // TODO:   color: #aaa;
                          // TODO: }

                          St::BoxSizing => "border-box";
                          St::Outline => "none";
                          St::Padding =>  em(0.4);
                          St::PaddingLeft => em(2);
                          St::Border => "1px solid rgba(0,0,0,0.1) !important";
                          St::BorderRadius => "0px !important";
                          St::FontSize => "1.1em !important";
                          St::LineHeight => "1.7em !important";
                          St::FontWeight => 300;
                          St::PaddingLeft => "3.1em !important";
                     },
                     attrs!{
                        // TODO: onChange    = { this.onChange }
                        // TODO: disabled    = { disabled }
                        // TODO: onKeyUp     = { this.onKeyUp }
                        // TODO: onFocus     = { this.onFocus }
                        // TODO: value       = { searchText || '' }
                        At::Placeholder => mdl.t("searchbar.placeholder");
                     },
                     class!["pure-u-1"],
                    ]
                 ]
               ]
}
