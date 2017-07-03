'use strict';

const path = require('path');

module.exports = {
	entry: path.join(__dirname, 'web/static/js/app.js'),
	output: {
		filename: './priv/static/js/app.js',
	},
	module: {
		rules: [ {
			test: /\.(js)$/,
			use: 'babel-loader',
			exclude: /node_modules/,
		}, {
			test: /\.(html)$/,
			use: 'html-loader',
		} ],
	},
};
