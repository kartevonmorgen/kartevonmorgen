import { types } from 'mobx-state-tree';
import RegionModel from '../models/RegionModel';

const RegionStore = types
  .model('RegionStore', {
    regions: types.array(RegionModel),
  });

export default RegionStore;
