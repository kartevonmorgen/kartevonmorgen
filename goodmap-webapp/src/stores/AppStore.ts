import { types } from 'mobx-state-tree';
import ViewStore from './ViewStore';
import RegionStore from './RegionStore';
import NeedStore from './NeedStore';
import EntryStore from './EntryStore';
import RegionsJSON from '../data/regions.json';
import NeedsJSON from '../data/needs.json';

const AppStore = types.model('AppStore', {
  ViewStore: types.optional(ViewStore, {}),
  RegionStore: types.optional(RegionStore, {
    regions: RegionsJSON,
  }),
  NeedStore: types.optional(NeedStore, {
    needs: NeedsJSON,
  }),
  EntryStore: types.optional(EntryStore, {}),
});

export default AppStore;
