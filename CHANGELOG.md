## v0.1.25 (2018-08-27)
- new(EntryDetails): add optional image to entry pages
- refactor(*): transfer part of App.js into Sidebar.js
- refactor(*): turn App.coffee into JavaScript
- new(i18n): make English the default fallback language (if browser language is not German)
- fix(styling): fix appearance of locate-button
- new(notification): replace redux-flash-notification with reapop as the former is not maintained anymore
- new(LandingPage): add 'Stadt Mannheim' as partner


## v0.1.24 (2018-03-22)
- fix(IE-bug): fix bug with IE10 and lower which can't access window.location.origin
- fix(ConfirmEmail): send u_id to confirm-email API call
- fix(i18n): fix some i18n-keys
- refactor(sidebar): move all navigation buttons from App.coffee to the corresponding components
- styling(EntryDetails): move back- and edit-button up to make them more visible
- new(EntryForm): replace whitespace by comma when entering tags (instead of hyphen)
- new(Map): shade out unselected pins
- new(ResultList): only show up to 5 city results in order to make search results below more visible
- fix(*): fix bugs in SubscribeToBbox, EntryDetails, ResultList some of which have to do with values that could be null
- fix(Login): don't use user_id anywhere, only username (adapt to OFDB API change)

## v0.1.23 (2018-02-21)
- fix(rating): correct rating labels
- fix(widgets): fix bugs in widgets introduced by i18n v0.1.22
- fix(modal): fix bug that prevented modal to show
- fix(locate-button): put locate-button behind left sidebar on mobile, use leaflets css class for locate-button, don't show locate button in map-widget
- fix(i18n): some small fixes where i18n has been forgotten, use 'von übermorgen' again instead of 'visionär'
- new(LandingPage): add Linus to Team

## v0.1.22 (2018-02-14)
- i18n: internationalize the app and provide translations for german and english
- OSM: prepare for openfairdb with entries from OpenStreetMap:
    - changed search API to include location of each entry in the results
    - show entries that don't have a category yet (don't filter these out on default, only when clicking on filters)
- new(map): replace pins of entries with rating <= 0 by circles (necessary as we get lots of entries by OSM)
- new(map): show pins while adding or editing an entry
- new(map): move locate button on the map, away from the searchbar
- new(timedActions): use timeout for search (don't continuously search when zooming, moving the map, or typing very fast)
- new(ratingForm): add more info text in rating form
- new(landingPage): change the content of landing page pages, and rearrange them to 'about us', 'contact', 'donate'
- new(landingPage): change team descriptions and add/remove team members
- fix(IE): use use babel-polyfill to fix IE11 bug

## v0.1.21 (2017-12-08)
- edit(LandingPage): change team and partners in landing page
- new(prototype): show 'prototype'-banner when packing with 'npm run pack-prototype'
- new(EntryForm): show either CC0 or ODBL license (OSM)
- new(EntryForm): when saving entry use ODBL license for OSM entries and CC0 otherwise (OSM)

## v0.1.20 (2017-12-05)
- fix(citySearch): fix citySearch as the osmnames API changed, use tilehosting API with API key
- new(citySearch): show error when citySearch results in an error, show when citySearch doesn't return any results

## v0.1.19 (2017-11-16)
- fix(styling): fix height of sidebar (bug was introduced by e96e902)

## v0.1.18
- fix(Accounts): fix bug confirmEmail routing
- fix(Ratings): put Positivfaktoren in correct order
- fix(Actions): remove dependency of server actions to client actions
- new(SearchBar): show searchbar only when in search-result mode
- new(EntryForm): zoom in when finding address
- new(EntryForm): mark contacts-field and zip code as optional to make adding entries simpler

## v0.1.17
- new(mobile): make the app responsive
- refactor(routing): refactor routing to prevent loops; move logic to react to url changes to url reducer and other reducers via UPDATE_STATE_FROM_URL action
- refactor(Actions): split actions into client and server actions
- fix(zoom): fix a bug with zooming that came from the routing chaos
- new(zoom): make continuous zoom work (especially on mobile devices important for pinch zoom)
- new(*): open external links in new tab (especially relevant for widgets)
- new(businesscard-widget): add businesscard-widget that only shows EntryDetails
- new(map-widget): add map-widget that only shows the map
- refactor(styling): make EntryDetails, Ratings, Flower and Map styled-components (inline style instead of css) so they are modular, reusable components
- fix(search): use all tags for search
- new(navigation): remove "Eintrag hinzufügen" navigation
- new(Infos): turn the "Workshops" page into a general "Info" page
- new(mobile): add button to hide left sidebar
- new(EntryForm): don't add "-" when user adds whitespaces between tags in EntryForm
- fix(login): fix encoding of confirmation email (sometimes it showed as an empty email)
- fix(zoom): don't close form when editing entry and then zooming
- new(ratings): change order of fields in rating form, change "visionär" to "von übermorgen"
- new(*): put the cancel button always to the left and saving etc always to the right
- new(entryForm): increase max. title length to 50 chars
- fix(LandingPage): make enter key work in city search bar
- new(EntryDetails): set zoom to a certain level when showing an entry

## v0.1.16 (2017-07-28)
- new(rating): show explanation for rating contexts when hovering over them
- new(rating): replace drop downs by radio buttons
- new(subscribeToBbox): add possibility for logged in user to subscribe to changes in an area of the map -> send notification emails
- new(login): make deleting account possible (mostly for debugging)
- new(login): send email to confirm email address
- new(login): user registration, login, logout
- new(search): show only the 50 best rated entries in search and pins
- new(landingPage): make an overview of Germany the initial default view
- new(rating): added optional sources field to rating form
- new(routing): route also by search string and tags
- fix(routing): fixed several issues with routing
- refactor(routing): put routing into url reducer
- new(search): show loading message when loading entries
- fix(search): ignore search when ending with '#', wait for hashtag first
- fix(entryForm): make finding address work again
- fix(entryForm): remove 'events' category for now because it produces an error 'react is undefined'
- chore(*): support es2017

## v0.1.15 (2017-06-14)

- new(routing): routing by center, zoom and entry
- new(routing): change URL when interacting with the website; make all updates to center, zoom and entry via the URL
- new(city-search): use Overpass API instead of Nominatim API for searching cities
- chore(*): update to webpack 2

## v0.1.14 (2017-06-01)

- fix(new entry): convert latitude and longitude to float when entering a manual address

## v0.1.13 (2017-05-26)

- new(routing): add routing functionality (#107)
- new(routing): go to location by url with `map-center` key
- new(routing): go to entry page by url with `entry` key (#164)

## v0.1.12 (2017-05-19)

- new(SearchBar): add hint for tag searching
- refactor(imprint): migrate to ES6
- fix(*): add missing Flower component
- fix(rating): change "Vielfältigkeit" to "Natürlichkeit"
- fix(rating): send rating value as integer

## v0.1.11 (2017-04-12)

- new(results): show rating flower
- fix(rating): allow comments with up to 500 chars

## v0.1.10 (2017-04-12)

- new(ratings): add basic rating form
- new(entry): show ratings
- refactor(map): migrate to ES6
- refactor(map): migrate to leaflet 1.0
- refactor(*): get rid of `updeep`

## v0.1.9 (2017-03-24)

- fix(entryForm): handle tag array correctly (#193)
- fix(entryForm): do not normalize url
- refacotr(specs): migrate to ES6

## v0.1.8 (2017-03-24)

- new(resultList): show tags
- fix(entryForm): show correct placeholder (#191)

## v0.1.7 (2017-03-19)

- new(entry): basic tag support (#179)
- fix(search): toggle category filter (#190)

## v0.1.6 (2017-03-11)

- refactor(*): start migrating CoffeeScript to ES6 (#143)
- refactor(entryForm): upgrade redux-form 4.x -> 6.x (#188)

## v0.1.5 (2016-07-11)

- new(landingpage): tutorial images
- new(entryForm): normalize homepage field
  (add `http://` if no protocol was specified)
- new(entryForm): naive URL validation (full validation is done on the server)
- fix(landingpage): text & typos

## v0.1.4 (2016-06-29)

- new(gui): use museo font
- new(landigpage): content update
- new(action): add licence property
- refactor(react): use `v15.1.0`

## v0.1.3 (2016-05-01)

- new(gui): add new landing page (#101)
- new(gui): show success message
- new(entryForm): show message on failure in top of entry form additionally
- new(entry form): improve scrolling / layout
- new(landingpage): menu / subpages moved into landingpage
- refactor(resultlist): increase width (#132)
- new(SearchBar): show entries by default (#148)
- fix(css): font-awesome font (#105)
- fix(map): #106
- fix(css): replace flexbox layout with float layout

## v0.1.2 (2016-04-09)

- fix(entryForm): update redux-form to solve saving issues with IE (#12)
- refactor(validation): allow 250 characters for descriptions (#130)
- fix(html): use correct htmlWebpackPlugin template syntax

## v0.1.1 (2016-01-25)

- new(webapi): use secure connection
- new(webapi): use secure nominatim connection (#113)
- new(entryForm): set marker automatically if address is given (#87)
- new(entryForm): set address automatically if marker is given (#87)
- fix(entryForm): don't reload page on submit (#124)

## v0.1.0 (2015-12-04)

First public prototype
