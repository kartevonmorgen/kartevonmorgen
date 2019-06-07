import { types } from 'mobx-state-tree';
import ViewStore from './ViewStore';
import EntryStore from './EntryStore';

const AppStore = types.model('AppStore', {
  ViewStore,
  EntryStore,
});

export default AppStore;
