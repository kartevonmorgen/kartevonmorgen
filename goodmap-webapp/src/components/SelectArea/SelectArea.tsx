import React from 'react';
import styled from 'styled-components';
import { inject, observer } from 'mobx-react';
import { Instance } from 'mobx-state-tree';
import AppStore from '../../stores/AppStore';

interface Props {
  store?: Instance<typeof AppStore>;
}

const SelectArea = ({ store }: Props) => {
  const { areas } = store!.AreaStore;
  const { setArea } = store!.ViewStore;

  const handleClick = (areaId: number) => {
    setArea(areaId);
  };

  return (
    <Container>
      {areas.map(item => (
        <button
          type="button"
          key={`area-${item.id}`}
          onClick={() => handleClick(item.id)}
        >
          {item.title}
        </button>
      ))}
    </Container>
  );
};

const Container = styled.div``;

export default inject('store')(observer(SelectArea));
