var webpack      = require('webpack');
var autoprefixer = require('autoprefixer');
var lost         = require('lost');

module.exports = {
  context: __dirname,
  entry: [
    'webpack/hot/only-dev-server',
    './app/main.js',
  ],
  output: {
    path: './server/',
    publicPath: 'http://172.22.22.22/server/',
    filename: "bundle.js"
  },
  module: {
    loaders: [
      {
        test: /\.html$/,
        loader: "html"
      },
      {
        test: /\.css$/,
        loader: "style!css!postcss"
      }
    ]
  },
  plugins: [
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NoErrorsPlugin()
  ],
  postcss: function () {
    return [autoprefixer, lost];
  },
  devServer: {
    host: '172.22.22.22',
    port: 80,
    contentBase: 'public/',
    inline: true,
    hot: true,
    historyApiFallback: true,
    stats: {
      colors: true
    },
    watchOptions: {
      poll: true
    }
  }
};
