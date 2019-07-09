import React from 'react';
import styled from 'styled-components';
import { inject, observer } from 'mobx-react';
import { Instance } from 'mobx-state-tree';
import AppStore from '../../stores/AppStore';

interface Props {
  store?: Instance<typeof AppStore>;
}

const Map = ({ store }: Props) => {
  const { selectedArea } = store!.ViewStore;

  return (
    <Container>
      <h1>hallo i bims map</h1>
      {selectedArea && selectedArea.needs.map(item => (<p key={`need-${item.id}`}>{item.title}</p>))}
    </Container>
  );
};

const Container = styled.div``;

export default inject('store')(observer(Map));
