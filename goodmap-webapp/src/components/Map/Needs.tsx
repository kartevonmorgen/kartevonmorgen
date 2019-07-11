import React from 'react';
import styled from 'styled-components';
import { inject, observer } from 'mobx-react';
import { getSnapshot, Instance, SnapshotOrInstance } from 'mobx-state-tree';
import AppStore from '../../stores/AppStore';
import EntryModel from '../../models/EntryModel';

interface Props {
  store?: Instance<typeof AppStore>;
}

const Needs = ({ store }: Props) => {
  const { selectedRegion } = store!.ViewStore;
  const { setSearchParams } = store!.ViewStore.searchParams;

  const handleClick = (value: string, tags: string[] | undefined) => {
    setSearchParams(value, { tags });
  };

  return (
    <Container>
      <h2>Erkunde unsere Themen</h2>
      {selectedRegion && selectedRegion.needs.map(item => (<button type="button" key={`need-${item.id}`} onClick={() => handleClick(item.title, item.tags)}>{item.title}</button>))}
    </Container>
  );
};

const Container = styled.div``;

export default inject('store')(observer(Needs));
