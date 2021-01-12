module.exports = {
  "env": {
    "browser": true,
    "es6": true
  },
  "extends": [
    "eslint:recommended",
  ],
  "globals": {
    "require": true,
    "__DEVELOPMENT__": true,
    "module": true
  },
  "parser": "babel-eslint",
  "parserOptions": {
    "ecmaFeatures": {
      "experimentalObjectRestSpread": true,
      "jsx": true,
      "modules": true
    },
    "sourceType": "module"
  },
  "plugins": [
    "react",
  ],
  "rules": {
    "no-unreachable": [
      "warn"
    ],
    "no-unused-vars": [
      "warn"
    ],
    "no-case-declarations": [
      "warn"
    ],
    "no-console": [
      "warn"
    ],
    "no-undef": [
      "warn"
    ],
    "no-redeclare": [
      "warn"
    ],
    "indent": [
      "warn",
      2,
      {"SwitchCase": 1}
    ],
  }
}
