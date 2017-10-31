require("babel-core/register");
var webpackCfg = require("./webpack.config.babel.js");

webpackCfg.entry = null;

module.exports = (config) => {

  config.set({

    basePath: './',

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
