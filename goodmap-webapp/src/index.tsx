import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'mobx-react';
import makeInspectable from 'mobx-devtools-mst';
import * as serviceWorker from './serviceWorker';

import AppStore from './stores/AppStore';
import App from './components/App';

// create AppStore with default snapshot
const store = AppStore.create({});

// connect mobx-devtools-mst
if (process.env.NODE_ENV === 'development') {
  // eslint-disable-next-line no-console
  console.log('ENV: DEV');
  makeInspectable(store);
}

ReactDOM.render((
  <Provider store={store}>
    <App />
  </Provider>
), document.getElementById('root'));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
