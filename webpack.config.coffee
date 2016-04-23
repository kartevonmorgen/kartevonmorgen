path        = require "path"
webpack     = require "webpack"
yargs       = require 'yargs'
HTMLPlugin  = require 'html-webpack-plugin'
plugins     = []
production  = yargs.argv.production

config =
  entry: path.join __dirname, "src/index.coffee"
  output:
    path: 'dist/'
    filename: "app.js"
  devServer:
    hot: true
    inline: true
  target: "web"
  cache: yes
  watch: false
  module:
    loaders: [
      {
        test:   /\.coffee$/,
        loader: "react-hot!coffee"
      }
      {
        test:   /\.css$/,
        loader: "style!css"
      }
      {
        test: /\.scss$/,
        loader: "style!css!sass"
      }
      {
        test:   /\.styl$/,
        loader: "style!css!stylus#{if production then '?compress=true' else ''}"
      }
      {
        test:   /\.less$/,
        loader: "style!css!less"
      }
      {
        test:   /\.jpe?g$|\.gif$|\.png$/,
        loader: "url?limit=10000"
      }
      {
        test: /\.woff(2)?(\?v=\d+\.\d+\.\d+)?$/,
        loader: "url?limit=10000&mimetype=application/font-woff"
      }
      {
        test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/,
        loader: "url?limit=10000&mimetype=application/octet-stream"
      }
      {
        test: /\.eot(\?v=\d+\.\d+\.\d+)?$/,
        loader: "file"
      }
      {
        test: /\.otf$/,
        loader: 'url-loader?limit=10000&mimetype=application/font-otf'
      }
      {
        test: /\.svg(\?v=\d+\.\d+\.\d+)?$/,
        loader: "url?limit=10000&mimetype=image/svg+xml"
      }
    ]
    noParse:[
      /\.min\.js/
      path.join __dirname, 'bower_components'
    ]
  resolve:
    extensions: ["", ".js", ".coffee"]
    modulesDirectories: ['node_modules']
    fallback: process.env.NODE_PATH
  resolveLoader:
    fallback: process.env.NODE_PATH
  stylus:
    use: [(require "nib")()]

htmlPluginOptions =
  template : "./src/index.html"
  title    : "Karte von morgen"
  favicon  : "./src/img/favicon.ico"
  inject   : 'body'

if production
  plugins.push new webpack.optimize.UglifyJsPlugin()
  plugins.push new webpack.optimize.DedupePlugin()
  htmlPluginOptions.minify =
    removeComments        : yes
    collapseWhitespace    : yes
    conservativeCollapse  : no
    minifyJS              : yes
    minifyCSS             : yes

  # Enable React optimizations.
  plugins.push new webpack.DefinePlugin
    'process.env.NODE_ENV'  : JSON.stringify 'production'
    __DEVTOOLS__            : no
    __DEVELOPMENT__         : no
else
  plugins.push new webpack.DefinePlugin
    __DEVTOOLS__            : no
    __DEVELOPMENT__         : yes
  plugins.push new webpack.HotModuleReplacementPlugin()

plugins.push new HTMLPlugin htmlPluginOptions

config.plugins = plugins
module.exports = config
