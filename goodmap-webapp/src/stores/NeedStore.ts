import { types } from 'mobx-state-tree';
import NeedModel from '../models/NeedModel';

const NeedStore = types
  .model('NeedStore', {
    needs: types.array(NeedModel),
  });

export default NeedStore;
