import { types } from 'mobx-state-tree';
import ViewStore from './ViewStore';
import AreaStore from './AreaStore';
import NeedStore from './NeedStore';
import EntryStore from './EntryStore';

const AppStore = types.model('AppStore', {
  ViewStore,
  AreaStore,
  NeedStore,
  EntryStore,
});

export default AppStore;
