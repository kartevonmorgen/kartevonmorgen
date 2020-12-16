import path        from "path"
import webpack     from "webpack"
import HTMLPlugin  from 'html-webpack-plugin'
import CopyPlugin  from 'copy-webpack-plugin'
import  {BundleAnalyzerPlugin} from 'webpack-bundle-analyzer'
import { APP_STAGES } from "./src/constants/App"

let plugins = [];

const config = {
  mode: "development",
  entry: {
    app: ['babel-polyfill', path.join(__dirname, "src/index.js")],
    renn: ['babel-polyfill', path.join(__dirname, "src/renn.js")],
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
      "/api/v0": {
        target: "http://localhost:6767",
        pathRewrite: {"^/api/v0" : "/api"}
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
        // query: {
        //   plugins: ['transform-decorators-legacy']
        // },
        include: [
          path.resolve(__dirname, "src"),
          path.resolve(__dirname, "spec"),
          path.resolve(__dirname, "node_modules/vm-leaflet-icons"),
          path.resolve(__dirname, "node_modules/react-tiny-fab"),
          path.resolve(__dirname, "node_modules/superagent"),
        ],
      },
      {
        test:   /\.tsx?$/,
        loader: "ts-loader",
        include: [
          path.resolve(__dirname, "src"),
        ],
        exclude: /node_modules/
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
    extensions: [".jsx", ".tsx", ".js", ".ts", ".json"],
    alias: {
      // This is a quick fix:
      // Without pointing to the minified leaflet file
      // webpack includes 'leaflet-src.js'
      leaflet$: path.resolve(__dirname, "node_modules/leaflet/dist/leaflet.js"),
      // for development uses only
      // 'react-dom$': 'react-dom/profiling',
      // 'scheduler/tracing': 'scheduler/tracing-profiling',
    }
  },
};

let htmlPluginOptions = {
  template : "./src/index.html",
  title    : "Karte von morgen",
  favicon  : "./src/img/favicon.ico",
  inject   : 'body',
  pack_for_nightly : (process.env.NODE_ENV === APP_STAGES.NIGHTLY)
};

const serverStage = (processStage, stage) => {
  htmlPluginOptions.minify = {
    removeComments: true,
    collapseWhitespace: true,
    conservativeCollapse: false,
    minifyJS: true,
    minifyCSS: true,
  }

  // Enable React optimizations.
  plugins.push(new webpack.DefinePlugin({
    'process.env.STAGE': JSON.stringify(processStage),
    __DEVTOOLS__: false,
    __STAGE__: JSON.stringify(stage)
  }))
}

// TODO: make the copy plugin dynamic
switch (process.env.NODE_ENV) {
  case APP_STAGES.LOCAL:
    plugins.push(new webpack.DefinePlugin({
      __DEVTOOLS__  : false,
      __STAGE__     : JSON.stringify(APP_STAGES.LOCAL)
    }));
    plugins.push(new webpack.HotModuleReplacementPlugin());
    plugins.push(
      new CopyPlugin({
        patterns: [
          {
            from: "**/trier/filters/*.csv",
            to: "public/customizations/trier/filters/[name].[ext]"
          },
          {
            from: "**/renn/filters/*.csv",
            to: "public/customizations/rennwk/filters/[name].[ext]"
          },
          {
            from: "**/kvm/filters/*.csv",
            to: "public/customizations/kvm/filters/[name].[ext]"
          }
        ]
      })
    )
    break;

  case APP_STAGES.NIGHTLY:
    serverStage('nightly', APP_STAGES.NIGHTLY);
    break;

  case APP_STAGES.BETA:
    serverStage('beta', APP_STAGES.BETA);
    plugins.push(new BundleAnalyzerPlugin())
    break;

  default: // production
    serverStage('production', APP_STAGES.PRODUCTION);
}

plugins.push(new HTMLPlugin({
  ...htmlPluginOptions,
  filename: "index.html",
  chunks: ["app"]
}));

plugins.push(new HTMLPlugin({
  ...htmlPluginOptions,
  filename: "renn.html",
  chunks: ["renn"]
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

plugins.push(
  new webpack.IgnorePlugin(/\.csv$/)
)

plugins.push(
  new webpack.ContextReplacementPlugin(
    /moment[\/\\]locale$/,
    /de|en|es|fa/
  )
)

config.plugins = plugins;
module.exports = config;
