import {
  SnapshotOrInstance, types, applySnapshot, flow, getParent, getSnapshot,
} from 'mobx-state-tree';
import { getCompactEntriesForBbox, IEntry } from 'goodmap-core';
import { reaction } from 'mobx';
import EntryModel from '../models/EntryModel';

const EntryStore = types
  .model('EntryStore', {
    entries: types.array(EntryModel),
  })
  .views(self => ({
    get store() {
      return getParent(self);
    },
  }))
  .actions(self => {
    const applyEntries = (entries: IEntry[]) => {
      applySnapshot(self.entries, entries);
    };

    const fetchData = flow(function* fetchData() {
      const searchResults = yield getCompactEntriesForBbox(
        self.store.ViewStore.searchParams.bbox,
        self.store.ViewStore.searchParams.tags,
      );
      // const ids = searchResults.data.visible.slice(0, 10).map((entry: any) => entry.id);
      applyEntries(searchResults.data.visible.slice(0, 10));
    });

    const afterCreate = () => {
      fetchData();

      reaction(
        () => getSnapshot(self.store.ViewStore.searchParams),
        () => {
          fetchData();
        },
      );
    };

    return {
      applyEntries,
      afterCreate,
    };
  });

export default EntryStore;
