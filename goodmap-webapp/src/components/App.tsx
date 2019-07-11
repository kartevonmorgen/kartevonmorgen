import React from 'react';
import { inject, observer } from 'mobx-react';
import { Instance } from 'mobx-state-tree';
import { createGlobalStyle } from 'styled-components';
import AppStore from '../stores/AppStore';
import SelectRegion from './SelectRegion';
import Map from './Map';

interface Props {
  store?: Instance<typeof AppStore>;
}

const App = ({ store }: Props) => {
  const { selectedRegion } = store!.ViewStore;

  return (
    <>
      <GlobalStyle />
      {selectedRegion === undefined ? (
        <SelectRegion />
      ) : (
        <Map />
      )}
    </>
  );
};

const GlobalStyle = createGlobalStyle`
  body {
    margin: 0;
    padding: 0;
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
      'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
      sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }
`;

export default inject('store')(observer(App));
