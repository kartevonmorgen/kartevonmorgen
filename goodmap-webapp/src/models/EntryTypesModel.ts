import { types } from 'mobx-state-tree';

const EntryExtendedModel = types.model('EntryExtendedModel', {
  extendedKey: types.string,
});

const EntryTypesModel = types.model('EntryTypesModel', {
  extended: EntryExtendedModel,
});

export default EntryTypesModel;
