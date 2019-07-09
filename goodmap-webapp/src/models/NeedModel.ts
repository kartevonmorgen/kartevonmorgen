import { types } from 'mobx-state-tree';

const NeedModel = types.model('NeedModel', {
  id: types.identifierNumber,
  title: types.string,
});

export default NeedModel;
