import {
  types, SnapshotOrInstance, cast,
} from 'mobx-state-tree';
import RegionModel from '../models/RegionModel';
import SearchModel from '../models/SearchModel';
import SearchParamsModel from '../models/SearchParamsModel';

const ViewStore = types
  .model('ViewStore', {
    selectedRegion: types.maybe(types.reference(RegionModel)),
    search: types.optional(SearchModel, {}),
    searchParams: types.optional(SearchParamsModel, {
      bbox: [[48.041824159411995, 11.474876403808596], [48.25005488691924, 11.691169738769533]],
    }),
  })
  .actions(self => {
    const setRegion = (regionId: SnapshotOrInstance<typeof self.selectedRegion>) => {
      self.selectedRegion = cast(regionId);
    };

    const resetSearch = () => {
      self.search.clearInputValue();
      self.search.clearSuggestionValue();

      self.searchParams.clearTags();
    };

    return {
      setRegion,
      resetSearch,
    };
  });

export default ViewStore;
