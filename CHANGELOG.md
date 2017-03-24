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
