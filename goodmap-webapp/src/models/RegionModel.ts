import { types } from 'mobx-state-tree';
import NeedModel from './NeedModel';

const RegionModel = types.model('RegionModel', {
  id: types.identifierNumber,
  title: types.frozen(types.string),
  needs: types.array(types.reference(NeedModel)),
});

export default RegionModel;
