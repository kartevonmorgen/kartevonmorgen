import React, { Component } from 'react';
import { getEntriesByIds, getCompactEntriesForBbox } from 'goodmap-core';
import './App.css';
import { inject, observer } from 'mobx-react';
import { Instance } from 'mobx-state-tree';
import AppStore from '../stores/AppStore';

interface Props {
  store?: Instance<typeof AppStore>;
}

@inject('store')
@observer
class App extends Component<Props> {
  async componentDidMount() {
    // Test GoodmapCore
    const searchResults = await getCompactEntriesForBbox([
      [48.041824159411995, 11.474876403808596], [48.25005488691924, 11.691169738769533],
    ]);
    console.log(searchResults);
    const ids = searchResults.data.visible.slice(0, 50).map((entry: any) => entry.id);
    console.log(ids);
    const entries = await getEntriesByIds(ids);
    console.log(entries);

    // Test MST
    const { store } = this.props;
    const { applyEntries } = store!.EntryStore;
    applyEntries(entries.data);
  }

  render() {
    const { store } = this.props;
    const { entries } = store!.EntryStore;

    return (
      <div className="App">
        <header className="App-header">
          GoodMap App
          {' '}
          {entries.length}
        </header>
      </div>
    );
  }
}

export default App;
