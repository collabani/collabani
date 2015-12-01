var autoprefixer = require('autoprefixer');
var lost         = require('lost');

module.exports = {
  entry: "./app/main.js",
    output: {
      path: "./server/",
      filename: "bundle.js"
    },
    module: {
      loaders: [
        {
          test: /\.css$/,
          loader: "style-loader!css-loader!postcss-loader"
        }
      ]
    },
    postcss: function () {
      return [autoprefixer, lost];
    }
};
