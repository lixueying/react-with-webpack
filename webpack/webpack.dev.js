var merge = require('webpack-merge');
var common = require('./webpack.common.js');
var path = require('path');

module.exports = merge(common, {
  mode: 'development',
  devtool: 'source-map',
  devServer: {
    compress: true,
    port: 3000,
    host: '0.0.0.0',
    historyApiFallback: true
  },
  plugins: [],
  output: {
    path: path.resolve(__dirname, '../dist/development'),
    filename: '[name]-[chunkhash].js',
    publicPath: '/'
  },
});