import React, { Component } from 'react';
// import { getEntriesByIds, getCompactEntriesForBbox } from 'goodmap-core';
import './App.css';
import { inject, observer } from 'mobx-react';
import { Instance } from 'mobx-state-tree';
import { createGlobalStyle } from 'styled-components';
import AppStore from '../stores/AppStore';
import SelectArea from './SelectArea';
import Map from './Map';

interface Props {
  // store needs to be optional
  store?: Instance<typeof AppStore>;
}

class App extends Component<Props> {
  async componentDidMount() {
    // Test GoodmapCore
    // const searchResults = await getCompactEntriesForBbox([
    //   [48.041824159411995, 11.474876403808596], [48.25005488691924, 11.691169738769533],
    // ]);
    // console.log(searchResults);
    // const ids = searchResults.data.visible.slice(0, 50).map((entry: any) => entry.id);
    // console.log(ids);
    // const entries = await getEntriesByIds(ids);
    // console.log(entries);

    // Test MST
    // const { store } = this.props;
    // const { applyEntries } = store!.EntryStore;
    // applyEntries(entries.data);
  }

  render() {
    const { store } = this.props;
    const { selectedArea } = store!.ViewStore;

    // const { entries } = store!.EntryStore;

    // return (
    //   <div className="App">
    //     <header className="App-header">
    //       GoodMap App
    //       {' '}
    //       {entries.length}
    //     </header>
    //   </div>
    // );

    return (
      <>
        <GlobalStyle />
        {selectedArea === undefined ? (
          <SelectArea />
        ) : (
          <Map />
        )}
      </>
    );
  }
}

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
