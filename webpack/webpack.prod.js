var merge = require('webpack-merge');
var common = require('./webpack.common.js');
var UglifyJsPlugin = require('uglifyjs-webpack-plugin');
var path = require('path');

module.exports = merge(common, {
  mode: 'production',
  plugins: [],
  optimization: {
    minimizer: [new UglifyJsPlugin()],
  },
  output: {
    path: path.resolve(__dirname, '../dist/production'),
    filename: '[name]-[chunkhash].js',
    publicPath: '/'
  },
});