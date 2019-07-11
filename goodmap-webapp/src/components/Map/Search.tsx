import React from 'react';
import styled from 'styled-components';
import { inject, observer } from 'mobx-react';
import { Instance } from 'mobx-state-tree';
import AppStore from '../../stores/AppStore';

interface Props {
  store?: Instance<typeof AppStore>;
}

const Search = ({ store }: Props) => {
  const { selectedRegion, resetSearch } = store!.ViewStore;
  const {
    inputValue, suggestionValue, setInputValue, setSuggestionValue,
  } = store!.ViewStore.search;
  const { setSearchParams } = store!.ViewStore.searchParams;

  let debounce: any;
  const handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    setInputValue(event.target.value);

    clearTimeout(debounce);
    debounce = setTimeout(() => {
      setSuggestionValue();
    }, 500);
  };

  const handleClickNeed = (value: string, tags: string[] | undefined) => {
    setSearchParams(value, { tags });
  };

  return (
    <Container>
      <input type="search" value={inputValue} onChange={handleChange} />
      <button type="button" onClick={resetSearch}>reset search</button>
      <br />
      {selectedRegion && selectedRegion.needs.map(item => {
        if (suggestionValue && item.title.toLowerCase().indexOf(suggestionValue.toLowerCase()) > -1) {
          return (
            <button
              type="button"
              key={`need-${item.id}`}
              onClick={() => handleClickNeed(item.title, item.tags)}
            >
              {item.title}
            </button>
          );
        }
        return null;
      })}
    </Container>
  );
};

const Container = styled.div``;

export default inject('store')(observer(Search));
