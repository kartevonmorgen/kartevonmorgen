import React from 'react';
import {APP_STAGES} from './constants/App'


if (__STAGE__ === APP_STAGES.LOCAL) {
  const whyDidYouRender = require('@welldone-software/why-did-you-render');
  whyDidYouRender(React, {
    trackAllPureComponents: false,
  });
}