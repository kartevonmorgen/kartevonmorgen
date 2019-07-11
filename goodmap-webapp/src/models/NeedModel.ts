import { types } from 'mobx-state-tree';

const NeedModel = types.model('NeedModel', {
  id: types.identifierNumber,
  title: types.frozen(types.string),
  tags: types.frozen(types.array(types.string)),
});

export default NeedModel;
