import { types } from 'mobx-state-tree';
import AreaModel from '../models/AreaModel';

const AreaStore = types
  .model('AreaStore', {
    areas: types.array(AreaModel),
  });

export default AreaStore;
