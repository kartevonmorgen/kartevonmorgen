import path        from "path"
import webpack     from "webpack"
import yargs       from 'yargs'
import HTMLPlugin  from 'html-webpack-plugin'

let plugins = [];

const production = yargs.argv.production;

const config = {
  entry: path.join(__dirname, "src/index.js"),
  output: {
    path: 'dist/',
    filename: "app.js"
  },
  devServer: {
    hot: true,
    inline: true
  },
  target: "web",
  cache: true,
  watch: false,
  module: {
    loaders: [
      {
        test:   /\.coffee$/,
        loader: "react-hot!coffee"
      },
      {
        test:   /\.jsx?$/,
        loader: "babel",
        query: {
          plugins: ['transform-decorators-legacy']
        },
        include: [
          path.resolve(__dirname, "src"),
          path.resolve(__dirname, "spec"),
          path.resolve(__dirname, "node_modules/flash-notification-react-redux"),
          path.resolve(__dirname, "node_modules/vm-leaflet-icons")
        ],
      },
      {
        test:   /\.css$/,
        loader: "style!css"
      },
      {
        test:   /\.styl$/,
        loader: "style!css!stylus" + (production ? '?compress=true' : '')
      },
      {
        test:   /\.less$/,
        loader: "style!css!less"
      },
      {
        test:   /\.jpe?g$|\.gif$|\.png$/,
        loader: "url?limit=10000"
      },
      {
        test: /\.woff(2)?(\?v=\d+\.\d+\.\d+)?$/,
        loader: "url?limit=10000&mimetype=application/font-woff"
      },
      {
        test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/,
        loader: "url?limit=10000&mimetype=application/octet-stream"
      },
      {
        test: /\.eot(\?v=\d+\.\d+\.\d+)?$/,
        loader: "file"
      },
      {
        test: /\.otf$/,
        loader: 'url-loader?limit=10000&mimetype=application/font-otf'
      },
      {
        test: /\.svg(\?v=\d+\.\d+\.\d+)?$/,
        loader: "url?limit=10000&mimetype=image/svg+xml"
      },
      {
        test: [/\.scss$/],
        loader: 'css?localIdentName=[path]!postcss-loader!sass',
      }
    ],
    noParse: [
      /\.min\.js/,
      path.join(__dirname, 'bower_components')
    ]
  },
  resolve: {
    extensions: ["", ".jsx", ".js", ".coffee"],
    modulesDirectories: ['node_modules'],
    fallback: process.env.NODE_PATH
  },
  resolveLoader: {
    fallback: process.env.NODE_PATH
  },
  stylus: {
    use: [(require("nib"))()]
  }
};

let htmlPluginOptions = {
  template : "./src/index.html",
  title    : "Karte von morgen",
  favicon  : "./src/img/favicon.ico",
  inject   : 'body'
};

if (production) {
  plugins.push(new webpack.optimize.UglifyJsPlugin());
  plugins.push(new webpack.optimize.DedupePlugin());
  htmlPluginOptions.minify = {
    removeComments        : true,
    collapseWhitespace    : true,
    conservativeCollapse  : false,
    minifyJS              : true,
    minifyCSS             : true,
  };

  // Enable React optimizations.
  plugins.push(new webpack.DefinePlugin({
    'process.env.NODE_ENV'  : JSON.stringify('production'),
    __DEVTOOLS__            : false,
    __DEVELOPMENT__         : false
   }));
} else {
  plugins.push(new webpack.DefinePlugin({
    __DEVTOOLS__            : false,
    __DEVELOPMENT__         : true
  }));
  plugins.push(new webpack.HotModuleReplacementPlugin());
}

plugins.push(new HTMLPlugin(htmlPluginOptions));

config.plugins = plugins;
module.exports = config;
