import { types } from 'mobx-state-tree';
// import EntryTypesModel from './EntryTypesModel';

const EntryModel = types.model('EntryModel', {
  //
  id: types.identifier,
  // created: types.number,
  // version: types.number,
  // license: types.maybeNull(types.string),
  // general
  title: types.frozen(types.string),
  // description: types.string,
  // image_link_url: types.maybeNull(types.string),
  // image_url: types.maybeNull(types.string),
  // position
  // lat: types.number,
  // lng: types.number,
  // adress
  // street: types.maybeNull(types.string),
  // zip: types.maybeNull(types.string),
  // city: types.maybeNull(types.string),
  // country: types.maybeNull(types.string),
  // contact
  // telephone: types.maybeNull(types.string),
  // email: types.maybeNull(types.string),
  // homepage: types.maybeNull(types.string),
  // other
  // ratings: types.array(types.string),
  // tags: types.array(types.string),
  // types
  // entryTypes: types.maybe(EntryTypesModel),
});

export default EntryModel;
