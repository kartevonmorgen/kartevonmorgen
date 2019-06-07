import { SnapshotOrInstance, types, applySnapshot } from 'mobx-state-tree';
import EntryModel from '../models/EntryModel';

const EntryStore = types
  .model('EntryStore', {
    entries: types.array(EntryModel),
  })
  .actions(self => {
    const addEntry = (entry: SnapshotOrInstance<typeof EntryModel>) => {
      self.entries.push(entry);
    };

    // TODO: convert IEntry to EntryModel??
    const applyEntries = (entries: any[]) => {
      applySnapshot(self.entries, entries);
    };

    return {
      addEntry,
      applyEntries,
    };
  });

export default EntryStore;
