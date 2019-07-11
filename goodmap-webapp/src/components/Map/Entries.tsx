import React from 'react';
import styled from 'styled-components';
import { inject, observer } from 'mobx-react';
import { Instance } from 'mobx-state-tree';
import AppStore from '../../stores/AppStore';

interface Props {
  store?: Instance<typeof AppStore>;
}

const Entries = ({ store }: Props) => {
  const { entries } = store!.EntryStore;

  return (
    <Container>
      <h2>Erkunde unsere Orte</h2>
      {entries.length ? entries.map(item => (<p key={`entry-${item.id}`}>{item.title}</p>)) : (<p>Leider nichts gefunden!</p>)}
    </Container>
  );
};

const Container = styled.div``;

export default inject('store')(observer(Entries));
