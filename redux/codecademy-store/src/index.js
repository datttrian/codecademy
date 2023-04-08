import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import { App } from './app/App.js';
// Import the store here.
import { store } from './app/store.js';
// Pass state and dispatch props to the <App /> component.
const render = () => {
  ReactDOM.render(
    <App 
      state={store.getState()}
      dispatch={store.dispatch}
    />,
    document.getElementById('root')
  )
};
render();

// Subscribe render to the store.
store.subscribe(render);