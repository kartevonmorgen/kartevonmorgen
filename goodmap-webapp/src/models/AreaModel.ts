import { types } from 'mobx-state-tree';
import NeedModel from './NeedModel';

const AreaModel = types.model('AreaModel', {
  id: types.identifierNumber,
  title: types.string,
  needs: types.array(types.reference(NeedModel)),
});

export default AreaModel;
