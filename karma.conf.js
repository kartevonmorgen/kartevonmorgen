var webpackConfig = require("./webpack.config.js");

webpackConfig.entry = null;

module.exports = (config) => {

  config.set({

    basePath: './',

    frameworks: ['mocha', 'chai'],

    files: [ './spec/**/*.spec.js' ],

    preprocessors: {
      '**/*.spec.js': ['webpack']
    },

    reporters: ['mocha'],

    colors: true,

    logLevel: config.LOG_INFO,

    autoWatch: false,

    browsers: ['ChromeHeadless'],

    singleRun: true,

    webpack: webpackConfig
  })
}
