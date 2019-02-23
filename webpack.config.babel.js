import path        from "path"
import webpack     from "webpack"
import HTMLPlugin  from 'html-webpack-plugin'
import { APP_STAGES } from "./src/constants/App"

let plugins = [];

const config = {
  mode: "development",
  entry: {
    app: ['babel-polyfill', path.join(__dirname, "src/index.js")],
    businesscard_widget: ['babel-polyfill', path.join(__dirname, "src/widgets/businesscard/index.js")],
    map_widget: ['babel-polyfill', path.join(__dirname, "src/widgets/map/index.js")],
    mapAndEntryList_widget: ['babel-polyfill', path.join(__dirname, "src/widgets/mapAndEntryList/index.js")]
  },
  output: {
    path: path.join(__dirname, 'dist/'),
    filename: "[name].js"
  },
  devServer: {
    hot: true,
    inline: true,
    proxy: {
      "/api": {
        target: "http://localhost:6767",
        pathRewrite: {"^/api" : ""}
      }
    }
  },
  target: "web",
  cache: true,
  watch: false,
  module: {
    rules: [
      {
        test:   /\.jsx?$/,
        loader: "babel-loader",
        query: {
          plugins: ['transform-decorators-legacy']
        },
        include: [
          path.resolve(__dirname, "src"),
          path.resolve(__dirname, "spec"),
          path.resolve(__dirname, "node_modules/vm-leaflet-icons")
        ],
      },
      {
        test:   /\.css$/,
        use: [
          "style-loader",
          {
            loader: "css-loader",
            options: {
              modules: 'global' // required because of reapop-theme-wybo@1.0.2
            }
          }
        ]
      },
      {
        test:   /\.jpe?g$|\.gif$|\.png$/,
        loader: "url-loader?limit=10000"
      },
      {
        test: /\.woff(2)?(\?v=\d+\.\d+\.\d+)?$/,
        loader: "url-loader?limit=10000&mimetype=application/font-woff"
      },
      {
        test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/,
        loader: "url-loader?limit=10000&mimetype=application/octet-stream"
      },
      {
        test: /\.eot(\?v=\d+\.\d+\.\d+)?$/,
        loader: "file-loader"
      },
      {
        test: /\.otf$/,
        loader: 'url-loader?limit=10000&mimetype=application/font-otf'
      },
      {
        test: /\.svg(\?v=\d+\.\d+\.\d+)?$/,
        loader: "url-loader?limit=10000&mimetype=image/svg+xml"
      }
    ]
  },
  resolve: {
    extensions: [".jsx", ".js"],
    alias: {
      // This is a quick fix:
      // Without pointing to the minified leaflet file
      // webpack includes 'leaflet-src.js'
      leaflet$: path.resolve(__dirname, "node_modules/leaflet/dist/leaflet.js")
    }
  }
};

let htmlPluginOptions = {
  template : "./src/index.html",
  title    : "Karte von morgen",
  favicon  : "./src/img/favicon.ico",
  inject   : 'body',
  pack_for_nightly : (process.env.NODE_ENV === APP_STAGES.NIGHTLY)
};

switch (process.env.NODE_ENV) {
  case APP_STAGES.LOCAL:
    plugins.push(new webpack.DefinePlugin({
      __DEVTOOLS__  : false,
      __STAGE__     : JSON.stringify(APP_STAGES.LOCAL)
    }));
   plugins.push(new webpack.HotModuleReplacementPlugin());
   break;

  case APP_STAGES.NIGHTLY:
    htmlPluginOptions.minify = {
      removeComments        : true,
      collapseWhitespace    : true,
      conservativeCollapse  : false,
      minifyJS              : true,
      minifyCSS             : true,
    };

    // Enable React optimizations.
    plugins.push(new webpack.DefinePlugin({
      'process.env.STAGE'     : JSON.stringify('nightly'),
      __DEVTOOLS__  : false,
      __STAGE__     : JSON.stringify(APP_STAGES.NIGHTLY)
    }));
    break;

  default:
    // production
    htmlPluginOptions.minify = {
      removeComments        : true,
      collapseWhitespace    : true,
      conservativeCollapse  : false,
      minifyJS              : true,
      minifyCSS             : true,
    };

    // Enable React optimizations.
    plugins.push(new webpack.DefinePlugin({
      'process.env.STAGE'     : JSON.stringify('production'),
      __DEVTOOLS__  : false,
      __STAGE__     : JSON.stringify(APP_STAGES.PRODUCTION)
    }));
}

plugins.push(new HTMLPlugin({
  ...htmlPluginOptions,
  filename: "index.html",
  chunks: ["app"]
}));

plugins.push(new HTMLPlugin({
  ...htmlPluginOptions,
  filename: "businesscard.html",
  chunks: ["businesscard_widget"]
}));

plugins.push(new HTMLPlugin({
  ...htmlPluginOptions,
  filename: "map.html",
  chunks: ["map_widget"]
}));

plugins.push(new HTMLPlugin({
  ...htmlPluginOptions,
  filename: "mapAndEntryList.html",
  chunks: ["mapAndEntryList_widget"]
}));

config.plugins = plugins;
module.exports = config;
