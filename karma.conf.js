var webpackCfg = require("./webpack.config.coffee");

webpackCfg.debug = true;
webpackCfg.entry = null;

module.exports = (config) => {

  config.set({

    frameworks: ['mocha', 'chai'],

    files: [ 'spec/**/*.spec.js' ],

    preprocessors: {
      '**/*.spec.js': ['webpack']
    },

    reporters: ['mocha'],

    colors: true,

    logLevel: config.LOG_INFO,

    autoWatch: false,

    browsers: ['PhantomJS'],

    singleRun: true,

    webpack: webpackCfg
  })
}
