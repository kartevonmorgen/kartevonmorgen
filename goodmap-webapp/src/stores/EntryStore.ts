import { SnapshotOrInstance, types, applySnapshot } from 'mobx-state-tree';
import { IEntry } from 'goodmap-core';
import EntryModel from '../models/EntryModel';

const EntryStore = types
  .model('EntryStore', {
    entries: types.array(EntryModel),
  })
  .actions(self => {
    const addEntry = (entry: SnapshotOrInstance<typeof EntryModel>) => {
      self.entries.push(entry);
    };

    const applyEntries = (entries: IEntry[]) => {
      applySnapshot(self.entries, entries);
    };

    return {
      addEntry,
      applyEntries,
    };
  });

export default EntryStore;
