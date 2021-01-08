const path       = require('path')
const webpack    = require("webpack")
const HTMLPlugin = require('html-webpack-plugin')
const CopyPlugin = require('copy-webpack-plugin')

const { BundleAnalyzerPlugin } = require('webpack-bundle-analyzer')

let plugins = [];

const config = {
  mode: "development",
  entry: {
    app: [path.join(__dirname, "src/index.js")],
    renn: [path.join(__dirname, "src/renn.js")],
    businesscard_widget: [path.join(__dirname, "src/widgets/businesscard/index.js")],
    map_widget: [path.join(__dirname, "src/widgets/map/index.js")],
    mapAndEntryList_widget: [path.join(__dirname, "src/widgets/mapAndEntryList/index.js")]
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
    },
    contentBase: path.join(__dirname, 'dist')
  },
  target: "web",
  cache: true,
  watch: false,
  module: {
    rules: [
      {
        test:   /\.jsx?$/,
        exclude: /node_modules/,
        use: {
          loader: "swc-loader",
          options: {
            jsc: {
              parser: {
                syntax: "ecmascript",
                jsx: true,
                decorators: true,
              }
            }
          }
        }
      },
      {
        test:   /\.tsx?$/,
        exclude: /node_modules/,
        use: {
          loader: "swc-loader",
          options: {
            jsc: {
              parser: {
                syntax: "typescript",
                tsx: true,
                decorators: true,
              }
            }
          }
        }
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

const serverStage = (processStage, stage) => {

  // Enable React optimizations.
  plugins.push(new webpack.DefinePlugin({
    'process.env.STAGE': JSON.stringify(processStage),
    __DEVTOOLS__: false,
    __STAGE__: JSON.stringify(stage)
  }))
}

// TODO: make the copy plugin dynamic
switch (process.env.NODE_ENV) {
  case 'development':
    plugins.push(new webpack.DefinePlugin({
      __DEVTOOLS__  : false,
      __STAGE__     : JSON.stringify('development')
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
          },
          {
            from: "**/img/team/*",
            to: "img/team/[name].[ext]"
          }
        ]
      })
    )
    break;

  case 'nightly':
    serverStage('nightly', 'nightly');
    break;

  case 'beta':
    serverStage('beta', 'beta');
    plugins.push(new BundleAnalyzerPlugin())
    break;

  default: // production
    serverStage('production', 'production');
}

plugins.push(
  new CopyPlugin({
    patterns: [
      {
        from: "src/img",
        to: "img"
      }
    ]
  })
)

const htmls = [
  ["index.html", "app"],
  ["renn.html", "renn"],
  ["businesscard.html", "businesscard_widget"]
];

htmls.forEach(x => {
  const opts = {
    filename: x[0],
    chunks: [x[1]],
    template : "./src/index.html",
    title    : "Karte von morgen",
    favicon  : "./src/img/favicon.ico",
    inject   : 'body',
    pack_for_nightly : (process.env.NODE_ENV === 'nightly'),
    minify : {
      removeComments: true,
      collapseWhitespace: true,
      conservativeCollapse: false,
      minifyJS: true,
      minifyCSS: true,
    }
  };
  plugins.push(new HTMLPlugin(opts))
});

plugins.push(
  new webpack.IgnorePlugin(/\.csv$/)
)

plugins.push(
  new webpack.IgnorePlugin(
    /^((?!pincloud).)*$|^((?!favicon).)*/,
    /img/,
  )
)

plugins.push(
  new webpack.ContextReplacementPlugin(
    /moment[\/\\]locale$/,
    /de|en|es|fa/
  )
)

config.plugins = plugins;
module.exports = config;
