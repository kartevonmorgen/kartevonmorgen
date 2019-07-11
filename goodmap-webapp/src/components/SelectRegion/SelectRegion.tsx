import React from 'react';
import styled from 'styled-components';
import { inject, observer } from 'mobx-react';
import { Instance } from 'mobx-state-tree';
import AppStore from '../../stores/AppStore';

interface Props {
  store?: Instance<typeof AppStore>;
}

const SelectRegion = ({ store }: Props) => {
  const { regions } = store!.RegionStore;
  const { setRegion } = store!.ViewStore;

  const handleClick = (regionId: number) => {
    setRegion(regionId);
  };

  return (
    <Container>
      {regions.map(item => (
        <button
          type="button"
          key={`region-${item.id}`}
          onClick={() => handleClick(item.id)}
        >
          {item.title}
        </button>
      ))}
    </Container>
  );
};

const Container = styled.div``;

export default inject('store')(observer(SelectRegion));
