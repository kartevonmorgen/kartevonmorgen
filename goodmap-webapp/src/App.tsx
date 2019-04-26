import React, { Component } from "react";
import "./App.css";
import GoodmapCore from "goodmap-core";

class App extends Component {
  render() {
    // Test GoodmapCore
    const goodmapCore = new GoodmapCore();
    goodmapCore.test();

    return (
      <div className="App">
        <header className="App-header">
          Goodmap App
        </header>
      </div>
    );
  }
}

export default App;
