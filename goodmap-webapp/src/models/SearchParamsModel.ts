import {
  cast, SnapshotOrInstance, types, getParent,
} from 'mobx-state-tree';

const SearchParamsModel = types
  .model('SearchParamsModel', {
    text: types.optional(types.string, ''),
    tags: types.array(types.string),
    bbox: types.array(types.array(types.number)),
  }).actions(self => {
    const setSearchParams = (inputValue: string, params: SnapshotOrInstance<typeof self>) => {
      if (inputValue) getParent(self).search.setInputValue(inputValue);
      if (params!.tags) self.tags = cast(params!.tags);
      // if (searchParams!.bbox) self.searchParams.tags = cast(searchParams!.bbox);
      getParent(self).search.clearSuggestionValue();
    };

    const clearTags = () => {
      self.tags = cast([]);
    };

    return {
      setSearchParams,
      clearTags,
    };
  });

export default SearchParamsModel;
