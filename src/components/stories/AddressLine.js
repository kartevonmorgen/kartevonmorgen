import React from 'react'
import { storiesOf, action } from '@kadira/storybook'
var AddressLine = require('../AddressLine.coffee');

storiesOf('AddressLine', module)
  .add('Full address', () => (
    <AddressLine
      street="Musterstr. 12"
      zip="12345"
      city="Musterstadt"
     />
  ))
  .add('street only', () => (
    <AddressLine street="Musterstr. 12" />
  ));
