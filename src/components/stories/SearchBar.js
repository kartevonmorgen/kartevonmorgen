import React from 'react'
import { storiesOf, action } from '@kadira/storybook'
var SearchBar = require('../SearchBar.coffee');

storiesOf('SearchBar', module)
  .add('default', () => (
    <SearchBar />
  ));
