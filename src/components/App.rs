use crate::{
    components::{pure::Modal, LandingPage, Map, SearchBar, Sidebar},
    reducers, Mdl, Msg,
};
use seed::prelude::*;

// TODO: import "./styling/Stylesheets"
// TODO: import "./styling/Icons"

// TODO: import { translate }        from "react-i18next"
// TODO: import NotificationsSystem  from "reapop";
// TODO: import theme                from "reapop-theme-wybo";
// TODO: import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'

// TODO: import V                    from "../constants/PanelView"
// TODO: import Actions              from "../Actions"
// TODO: import { EDIT }             from "../constants/Form"
// TODO: import STYLE                from "./styling/Variables"
// TODO: import { NUM_ENTRIES_TO_SHOW } from "../constants/Search"
// TODO: import mapConst             from "../constants/Map"

pub fn view(mdl: &Mdl) -> impl View<Msg> {
    let Mdl {
        search,
        view,
        server,
        map,
        form,
        url,
        user,
        ..
    } = &mdl;
    let reducers::server::Mdl {
        entries, ratings, ..
    } = server;

    // TODO: this.changeUrlAccordingToState(url);
    // TODO: const visibleEntries = this.filterVisibleEntries(entries, search);

    let loggedIn = user.email.is_some();

    div![
        main![
            id! {"main"},
            SearchBar::view(&mdl),
            Map::view(&mdl),
            div![id! {"results"}],
            Sidebar::view(&mdl)
        ],
        LandingPage::view(&mdl),
        Modal::view(&mdl),
        // TODO: <NotificationsSystem theme={theme}/>
        // TODO: <RightPanel>
        // TODO:   <div className="menu-toggle">
        // TODO:     <button onClick={()=>{ return dispatch(Actions.toggleMenu()); }} >
        // TODO:       <span className="pincloud">
        // TODO:         <MenuFontAwesomeIcon icon={'bars'} />
        // TODO:       </span>
        // TODO:     </button>
        // TODO:   </div>
        // TODO: </RightPanel>
        // TODO:
    ]
}

// TODO:   filterVisibleEntries(entries, search){
// TODO:     return search.entryResults.filter(e => entries[e.id])
// TODO:       .map(e => entries[e.id])
// TODO:       .filter(this.categoryIsEnabled(search.categories))
// TODO:       .concat(search.eventResults)
// TODO:       .slice(0, NUM_ENTRIES_TO_SHOW);
// TODO:   }

// TODO:   categoryIsEnabled(enabledCategories){
// TODO:     return (entry) => {
// TODO:       return entry.categories.some(cat => enabledCategories.includes(cat));
// TODO:     }
// TODO:   }

// TODO:   onLandingPageCitySelection(city){
// TODO:     const { dispatch } = this.props;
// TODO:     if (city) {
// TODO:       dispatch(Actions.setCenter({
// TODO:         lat: Number(city.lat),
// TODO:         lng: Number(city.lon)
// TODO:       }));
// TODO:       dispatch(Actions.setZoom(mapConst.CITY_DEFAULT_ZOOM));
// TODO:       dispatch(Actions.toggleLandingPage());
// TODO:       dispatch(Actions.showSearchResults());
// TODO:       dispatch(Actions.setSearchText(''));
// TODO:       return dispatch(Actions.finishCitySearch());
// TODO:     }
// TODO:   }

// TODO:   changeUrlAccordingToState(urlState){
// TODO:     if (urlState.hash !== window.location.hash) {
// TODO:       console.log("URL CHANGE FROM APP: " + window.location.hash + " --> " + urlState.hash);
// TODO:       window.history.pushState(null, null, window.location.pathname + urlState.hash);
// TODO:     }
// TODO:   }

// TODO:   escFunction(event){
// TODO:     if(event.keyCode === 27) { //ESC
// TODO:       const { view, dispatch}  = this.props
// TODO:       if(view.menu) return dispatch(Actions.toggleLandingPage())
// TODO:       if(!view.showLeftPanel) return dispatch(Actions.showLeftPanel());
// TODO:       if(view.left === V.ENTRY) {
// TODO:         dispatch(Actions.setCurrentEntry(null, null));
// TODO:         dispatch(Actions.showSearchResults());
// TODO:         return dispatch(Actions.setCenterInUrl(this.props.map.center));
// TODO:       }
// TODO:       if(view.left === V.RESULT){
// TODO:         dispatch(Actions.setSearchText(''))
// TODO:         return dispatch(Actions.search())
// TODO:       }
// TODO:     }
// TODO:   }

// TODO:   componentDidMount(){
// TODO:     document.addEventListener("keydown", (e) => this.escFunction(e), false);
// TODO:   }

// TODO:   componentWillUnmount(){
// TODO:     document.removeEventListener("keydown");
// TODO:   }

// TODO:   swipedLeftOnPanel() {
// TODO:     this.props.dispatch(Actions.hideLeftPanel())
// TODO:   }

// TODO:   swipedRightOnMap(e, deltaX) {
// TODO:     if( e.nativeEvent === undefined || e.nativeEvent.changedTouches === undefined) return true
// TODO:     if(e.nativeEvent.changedTouches[0].pageX + deltaX < 26 ) this.props.dispatch(Actions.showLeftPanel())
// TODO:   }

// TODO:   onTagClick = (t) => {
// TODO:     this.props.dispatch(Actions.showSearchResults());
// TODO:     this.props.dispatch(Actions.setSearchText('#'+t));
// TODO:     this.props.dispatch(Actions.search());
// TODO:   };
// TODO:
// TODO: }

// TODO: // Create the keyframes
// TODO: const fadein = keyframes`
// TODO:   from { opacity: 0; }
// TODO:   to { opacity: 1; }
// TODO: `

// TODO: import pincloud from "../img/pincloud.png";
// TODO:
// TODO: const MenuFontAwesomeIcon = styled(FontAwesomeIcon)`
// TODO:   padding-right: .45rem;
// TODO: `;

// TODO: const RightPanel = styled.div `
// TODO:   position: absolute;
// TODO:   top: 15px;
// TODO:   right: 0;
// TODO:   background: #fff;
// TODO:   color: ${STYLE.coal};
// TODO:
// TODO:   .menu-toggle button {
// TODO:     outline: none;
// TODO:     position: relative;
// TODO:     z-index: 1;
// TODO:     top: 0;
// TODO:     right: 0;
// TODO:     font-size: 15pt;
// TODO:     text-transform: uppercase;
// TODO:     text-align: right;
// TODO:     color: ${STYLE.darkGray};
// TODO:     background: #fff;
// TODO:     border-radius: 0.2em 0 0 0.2em;
// TODO:     border: none;
// TODO:     padding: 0.2em;
// TODO:     box-shadow: 0 1px 3px 0.2px rgba(0,0,0,0.5);
// TODO:     &:hover {
// TODO:       color: ${STYLE.coal};
// TODO:       box-shadow: 0 1px 3px 0.2px #000;
// TODO:     }
// TODO:     .pincloud {
// TODO:       display: inline-block;
// TODO:       width: 3.5em;
// TODO:       height: 1.2em;
// TODO:       background-position: left;
// TODO:       background-image: url(${pincloud});
// TODO:       background-repeat: no-repeat;
// TODO:       background-size: 50%;
// TODO:     }
// TODO:     i {
// TODO:       margin-right: 0.3em;
// TODO:     }
// TODO:   }
// TODO: `
