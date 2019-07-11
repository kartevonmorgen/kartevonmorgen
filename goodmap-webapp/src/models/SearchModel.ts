import { types } from 'mobx-state-tree';

const SearchModel = types
  .model('SearchModel', {
    inputValue: types.optional(types.string, ''),
    suggestionValue: types.optional(types.string, ''),
  }).actions(self => {
    const setInputValue = (value: string) => {
      self.inputValue = value;
    };

    const setSuggestionValue = () => {
      self.suggestionValue = self.inputValue;
    };

    const clearInputValue = () => {
      self.inputValue = '';
    };

    const clearSuggestionValue = () => {
      self.suggestionValue = '';
    };

    return {
      setInputValue,
      setSuggestionValue,
      clearInputValue,
      clearSuggestionValue,
    };
  });

export default SearchModel;
