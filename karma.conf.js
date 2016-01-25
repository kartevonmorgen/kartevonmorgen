module.exports = function(config) {

  config.set({

    frameworks: ['mocha', 'chai'],

    files: [
      'node_modules/es5-shim/es5-shim.min.js',
      'spec/**/*.spec.coffee'
      ],

    preprocessors: { '**/*.spec.coffee': ['webpack'] },

    reporters: ['mocha'],

    colors: true,

    logLevel: config.LOG_INFO,

    autoWatch: false,

    browsers: ['PhantomJS'],

    singleRun: true,

    webpack: {
      debug: true,
      module: {
        loaders: [
          { test: /\.coffee$/, loader: 'coffee' },
          { test: /\.styl$/,   loader: 'null'   }
        ]
      },
      resolve: {
        extensions: ['', '.json', '.js', '.coffee']
      }
    },
    webpackServer: {
      noInfo: true
    }
  })
}
