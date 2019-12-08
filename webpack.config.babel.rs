// TODO: import path        from "path"
// TODO: import webpack     from "webpack"
// TODO: import HTMLPlugin  from 'html-webpack-plugin'
// TODO: import { APP_STAGES } from "./src/constants/App"
// TODO: 
// TODO: let plugins = [];
// TODO: 
// TODO: const config = {
// TODO:   mode: "development",
// TODO:   entry: {
// TODO:     app: ['babel-polyfill', path.join(__dirname, "src/index.js")],
// TODO:     businesscard_widget: ['babel-polyfill', path.join(__dirname, "src/widgets/businesscard/index.js")],
// TODO:     map_widget: ['babel-polyfill', path.join(__dirname, "src/widgets/map/index.js")],
// TODO:     mapAndEntryList_widget: ['babel-polyfill', path.join(__dirname, "src/widgets/mapAndEntryList/index.js")]
// TODO:   },
// TODO:   output: {
// TODO:     path: path.join(__dirname, 'dist/'),
// TODO:     filename: "[name].js"
// TODO:   },
// TODO:   devServer: {
// TODO:     hot: true,
// TODO:     inline: true,
// TODO:     proxy: {
// TODO:       "/api/v0": {
// TODO:         target: "http://localhost:6767",
// TODO:         pathRewrite: {"^/api/v0" : "/api"}
// TODO:       }
// TODO:     }
// TODO:   },
// TODO:   target: "web",
// TODO:   cache: true,
// TODO:   watch: false,
// TODO:   module: {
// TODO:     rules: [
// TODO:       {
// TODO:         test:   /\.jsx?$/,
// TODO:         loader: "babel-loader",
// TODO:         query: {
// TODO:           plugins: ['transform-decorators-legacy']
// TODO:         },
// TODO:         include: [
// TODO:           path.resolve(__dirname, "src"),
// TODO:           path.resolve(__dirname, "spec"),
// TODO:           path.resolve(__dirname, "node_modules/vm-leaflet-icons")
// TODO:         ],
// TODO:       },
// TODO:       {
// TODO:         test:   /\.css$/,
// TODO:         use: [
// TODO:           "style-loader",
// TODO:           {
// TODO:             loader: "css-loader",
// TODO:             options: {
// TODO:               modules: 'global' // required because of reapop-theme-wybo@1.0.2
// TODO:             }
// TODO:           }
// TODO:         ]
// TODO:       },
// TODO:       {
// TODO:         test:   /\.jpe?g$|\.gif$|\.png$/,
// TODO:         loader: "url-loader?limit=10000"
// TODO:       },
// TODO:       {
// TODO:         test: /\.woff(2)?(\?v=\d+\.\d+\.\d+)?$/,
// TODO:         loader: "url-loader?limit=10000&mimetype=application/font-woff"
// TODO:       },
// TODO:       {
// TODO:         test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/,
// TODO:         loader: "url-loader?limit=10000&mimetype=application/octet-stream"
// TODO:       },
// TODO:       {
// TODO:         test: /\.eot(\?v=\d+\.\d+\.\d+)?$/,
// TODO:         loader: "file-loader"
// TODO:       },
// TODO:       {
// TODO:         test: /\.otf$/,
// TODO:         loader: 'url-loader?limit=10000&mimetype=application/font-otf'
// TODO:       },
// TODO:       {
// TODO:         test: /\.svg(\?v=\d+\.\d+\.\d+)?$/,
// TODO:         loader: "url-loader?limit=10000&mimetype=image/svg+xml"
// TODO:       }
// TODO:     ]
// TODO:   },
// TODO:   resolve: {
// TODO:     extensions: [".jsx", ".js"],
// TODO:     alias: {
// TODO:       // This is a quick fix:
// TODO:       // Without pointing to the minified leaflet file
// TODO:       // webpack includes 'leaflet-src.js'
// TODO:       leaflet$: path.resolve(__dirname, "node_modules/leaflet/dist/leaflet.js")
// TODO:     }
// TODO:   }
// TODO: };
// TODO: 
// TODO: let htmlPluginOptions = {
// TODO:   template : "./src/index.html",
// TODO:   title    : "Karte von morgen",
// TODO:   favicon  : "./src/img/favicon.ico",
// TODO:   inject   : 'body',
// TODO:   pack_for_nightly : (process.env.NODE_ENV === APP_STAGES.NIGHTLY)
// TODO: };
// TODO: 
// TODO: switch (process.env.NODE_ENV) {
// TODO:   case APP_STAGES.LOCAL:
// TODO:     plugins.push(new webpack.DefinePlugin({
// TODO:       __DEVTOOLS__  : false,
// TODO:       __STAGE__     : JSON.stringify(APP_STAGES.LOCAL)
// TODO:     }));
// TODO:    plugins.push(new webpack.HotModuleReplacementPlugin());
// TODO:    break;
// TODO: 
// TODO:   case APP_STAGES.NIGHTLY:
// TODO:     htmlPluginOptions.minify = {
// TODO:       removeComments        : true,
// TODO:       collapseWhitespace    : true,
// TODO:       conservativeCollapse  : false,
// TODO:       minifyJS              : true,
// TODO:       minifyCSS             : true,
// TODO:     };
// TODO: 
// TODO:     // Enable React optimizations.
// TODO:     plugins.push(new webpack.DefinePlugin({
// TODO:       'process.env.STAGE'     : JSON.stringify('nightly'),
// TODO:       __DEVTOOLS__  : false,
// TODO:       __STAGE__     : JSON.stringify(APP_STAGES.NIGHTLY)
// TODO:     }));
// TODO:     break;
// TODO: 
// TODO:   default:
// TODO:     // production
// TODO:     htmlPluginOptions.minify = {
// TODO:       removeComments        : true,
// TODO:       collapseWhitespace    : true,
// TODO:       conservativeCollapse  : false,
// TODO:       minifyJS              : true,
// TODO:       minifyCSS             : true,
// TODO:     };
// TODO: 
// TODO:     // Enable React optimizations.
// TODO:     plugins.push(new webpack.DefinePlugin({
// TODO:       'process.env.STAGE'     : JSON.stringify('production'),
// TODO:       __DEVTOOLS__  : false,
// TODO:       __STAGE__     : JSON.stringify(APP_STAGES.PRODUCTION)
// TODO:     }));
// TODO: }
// TODO: 
// TODO: plugins.push(new HTMLPlugin({
// TODO:   ...htmlPluginOptions,
// TODO:   filename: "index.html",
// TODO:   chunks: ["app"]
// TODO: }));
// TODO: 
// TODO: plugins.push(new HTMLPlugin({
// TODO:   ...htmlPluginOptions,
// TODO:   filename: "businesscard.html",
// TODO:   chunks: ["businesscard_widget"]
// TODO: }));
// TODO: 
// TODO: plugins.push(new HTMLPlugin({
// TODO:   ...htmlPluginOptions,
// TODO:   filename: "map.html",
// TODO:   chunks: ["map_widget"]
// TODO: }));
// TODO: 
// TODO: plugins.push(new HTMLPlugin({
// TODO:   ...htmlPluginOptions,
// TODO:   filename: "mapAndEntryList.html",
// TODO:   chunks: ["mapAndEntryList_widget"]
// TODO: }));
// TODO: 
// TODO: config.plugins = plugins;
// TODO: module.exports = config;
