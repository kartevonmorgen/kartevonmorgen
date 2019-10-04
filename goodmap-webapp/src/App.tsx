import React, { Component } from 'react';

import { getEntriesByIds, getCompactEntriesForBbox } from 'goodmap-core';

import './App.css';

class App extends Component {
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
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">GoodMap App</header>
      </div>
    );
  }
}

export default App;
