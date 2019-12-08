use crate::{i18n::t, Actions, Mdl, Msg};
use seed::prelude::*;

// TODO: import { MAIN_IDS, CSS_CLASS_SIZE, NAMES } from "../constants/Categories";
// TODO: import { FontAwesomeIcon }                 from '@fortawesome/react-fontawesome'
// TODO: import STYLE                               from "./styling/Variables"
// TODO: import { SpinLoader }                      from 'react-loaders-spinners';

// TODO: const CategoryButtons = ({ disabled, active, onToggle, t }) => {
// TODO:
// TODO:   const buttons = MAIN_IDS.map((c) => {
// TODO:     const act = [].indexOf.call(active || [], c) >= 0;
// TODO:     return (
// TODO:       <button
// TODO:         key       = { c }
// TODO:         disabled  = { disabled }
// TODO:         onClick   = { () => { onToggle(c) }}
// TODO:         className = { NAMES[c] + " " + CSS_CLASS_SIZE[c] + (act ? " active" : "")}>
// TODO:         { t("category." + NAMES[c]) + " " }
// TODO:       </button>);
// TODO:   });
// TODO:
// TODO:   return (<div>{ buttons }</div>);
// TODO: }
// TODO:
// TODO: CategoryButtons.propTypes = {
// TODO:   active     : T.array,
// TODO:   disabled   : T.bool,
// TODO:   onToggle   : T.func
// TODO: };

pub fn view(mdl: &Mdl) -> Node<Msg> {
    // TODO:   onFocus = (ev) => {
    // TODO:     ev.target.select();
    // TODO:   }
    // TODO:
    // TODO: const { categories, disabled, toggleCat, searchText, t, loading } = this.props;
    // TODO:
    // TODO: SearchBar.propTypes = {
    // TODO:   type        : T.oneOf(["standalone","integrated",""]),
    // TODO:   searchText  : T.string,
    // TODO:   categories  : T.array,
    // TODO:   disabled    : T.bool,
    // TODO:   toggleCat   : T.func,
    // TODO:   onChange    : T.func,
    // TODO:   onEnter     : T.func,
    // TODO:   onEscape    : T.func,
    // TODO:   t           : T.func
    // TODO: }

    // TODO:  searchText={search.text}
    // TODO:  categories={search.categories}
    // TODO:  type="integrated"
    // TODO:  disabled={view.left === V.EDIT || view.left === V.NEW}
    // TODO:  toggleCat={ c => {
    // TODO:    if(search.categories.includes(c)){
    // TODO:      dispatch(Actions.disableSearchCategory(c));
    // TODO:    } else {
    // TODO:      dispatch(Actions.enableSearchCategory(c));
    // TODO:    }
    // TODO:    return dispatch(Actions.search());
    // TODO:  }}
    // TODO:  onEscape={ () => {
    // TODO:    return dispatch(Actions.setSearchText(''));
    // TODO:  }}
    // TODO:  onEnter={ () => {}}      // currently not used, TODO
    // TODO:  loading={ server.loadingSearch }

    div![
        id! {"header"},
        style! {
        // TODO: ${props => props.integrated && `
        // TODO:   border-bottom: 1px solid ${STYLE.lightGray};
        // TODO: `}
        // TODO:
        // TODO: ${props => props.standalone && `
        // TODO:   box-shadow: 2px 2px 8px 4px rgba(0,0,0,0.6);
        // TODO:   border-radius: ${borderRadius};
        // TODO:
        // TODO:   input{
        // TODO:     border-radius: 0 0 ${borderRadius} ${borderRadius};
        // TODO:   }
        // TODO: `}
        // TODO:
        // TODO: width:         100%;
        // TODO: box-sizing:    border-box;
        // TODO: background:    #fff;
        // TODO:
        // TODO: input, button{
        // TODO:   box-sizing:  border-box;
        // TODO:   border:      none;
        // TODO:   outline: none;
        // TODO: }
        // TODO:
        // TODO: input, span.search-icon {
        // TODO:   font-size: 1.2em;
        // TODO: }
        // TODO:
        // TODO: input {
        // TODO:   padding: 0.4em;
        // TODO:   padding-left:  2em;
        // TODO: }
        // TODO:
        // TODO: .search-icon{
        // TODO:   position: absolute;
        // TODO:   margin: 0.5em 0 0 0.9em;
        // TODO:   display: inline-block;
        // TODO:   color: ${STYLE.darkGray};
        // TODO:   z-index: 5;
        // TODO:   font-size: 1.2rem;
        // TODO: }
        },
        // TODO: className = "SearchBar pure-g" integrated={this.props.type==="integrated"} standalone= {this.props.type==="standalone"}

        // TODO: <MainCategories className = "main-categories pure-u-1 pure-g" standalone= {this.props.type==="standalone"}>
        // TODO:   <CategoryButtons
        // TODO:     active    = { categories }
        // TODO:     disabled  = { disabled   }
        // TODO:     onToggle  = { toggleCat  }
        // TODO:     t         = { t }
        // TODO:   />
        // TODO: </MainCategories>

        // TODO:  <div onClick = { this.props.onLenseClick } className = "search-icon">
        // TODO:    { loading ?
        // TODO:        <SpinLoader
        // TODO:          height={17}
        // TODO:          width={17}
        // TODO:          thickness={3}
        // TODO:          pColor={STYLE.darkGray}
        // TODO:          sColor="white"/>
        // TODO:      : <MagnifyingGlassIcon icon="search" />
        // TODO:    }
        // TODO:  </div>
        input![
            style! {
            // TODO: ::placeholder{
            // TODO:   color: #aaa;
            // TODO: }
            // TODO: border: 1px solid rgba(0,0,0,0.1) !important;
            // TODO: border-radius: 0px !important;
            // TODO: font-size: 1.1em !important;
            // TODO: line-height: 1.7em !important;
            // TODO: font-weight: 300;
            // TODO: padding-left: 3.1em !important;
            },
            attrs! {
                // TODO: disabled    = { disabled }
                // TODO: onFocus     = { this.onFocus }
                // TODO: className   = "pure-u-1"
                At::Placeholder => t(&mdl, "searchbar.placeholder");
            },
            if let Some(t) = &mdl.search.text {
                attrs! { At::Value => t; }
            } else {
                attrs! {}
            },
            input_ev(Ev::Input, |txt| {
                // TODO:  onChange = (ev) => {
                // TODO:    var ref, v;
                // TODO:    if ((v = (ref = ev.target) != null ? ref.value : void 0) == null) {
                // TODO:      return;
                // TODO:    }
                // TODO:    this.props.onChange(v);
                // TODO:  onChange={txt => {
                // TODO:    if (txt == null) {
                // TODO:      txt = "";
                // TODO:    }
                Actions::Msg::Client(Actions::client::Msg::setSearchText(txt))
                // TODO: return dispatch(Actions.search());
            }),
            //keyboard_ev(Ev::KeyUp, move |ev|{
            //    ev.prevent_default();
            //    // TODO: switch (ev.key) {
            //    // TODO:   case "Escape":
            //    // TODO:     this.props.onEscape();
            //    // TODO:     break;
            //    // TODO:   case "Enter":
            //    // TODO:     this.props.onEnter();
            //    // TODO: }
            //})
        ]
    ]
}

// TODO: const borderRadius = '0.4em'
// TODO:
// TODO: const MagnifyingGlassIcon = styled(FontAwesomeIcon)`
// TODO:   margin: 0.1em 0 0 0.1em;
// TODO:   animation-duration: 150ms;
// TODO:   animation-name: turn;
// TODO:
// TODO:   @keyframes turn {
// TODO:     from {
// TODO:       transform: rotate(330deg);
// TODO:     }
// TODO:
// TODO:     to {
// TODO:       transform: rotate(360deg);
// TODO:     }
// TODO:   }
// TODO: `
// TODO:
// TODO: const MainCategories = styled.div `
// TODO:
// TODO:   font-size: 0.8em;
// TODO:   color: ${STYLE.darkGray};
// TODO:
// TODO:   button {
// TODO:     padding: 0.5em;
// TODO:     text-transform: uppercase;
// TODO:     background-color: #f7f7f7;
// TODO:   }
// TODO:
// TODO:   button > i.toggle {
// TODO:     text-align: left;
// TODO:     display: block;
// TODO:     width: 1.8em;
// TODO:     height: 0.9em;
// TODO:     border: 1px solid #fff;
// TODO:     border-radius: 0.5em;
// TODO:     float: right;
// TODO:
// TODO:     > i {
// TODO:       display: inline-block;
// TODO:       height: 0.9em;
// TODO:       width: 0.9em;
// TODO:       border-radius: 0.5em;
// TODO:       background-color: #FFF;
// TODO:       vertical-align: top;
// TODO:       border: 1px solid #FFF;
// TODO:       margin: -1px;
// TODO:     }
// TODO:   }
// TODO:
// TODO:   button.active > i.toggle {
// TODO:     text-align: right !important;
// TODO:   }
// TODO:
// TODO:   ${props => props.standalone && `
// TODO:     button:first-child {
// TODO:       border-radius: ${borderRadius} 0 0 0;
// TODO:     }
// TODO:     button:last-child {
// TODO:       border-radius: 0 ${borderRadius} 0 0;
// TODO:     }
// TODO:   `}
// TODO:
// TODO:   .active{
// TODO:     color: #fff;
// TODO:     box-shadow: inset 0.2px 0.2px 2px 1px rgba(0, 0, 0, 0.4);
// TODO:   }
// TODO:
// TODO:   .initiative.active{
// TODO:     background: ${STYLE.initiative};
// TODO:   }
// TODO:
// TODO:   .event.active {
// TODO:     background: ${STYLE.event};
// TODO:   }
// TODO:
// TODO:   .company.active {
// TODO:     background: ${STYLE.company};
// TODO:   }
// TODO: `
