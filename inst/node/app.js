// Quick Start

/*
import minify from '@node-minify/core';
import gcc from '@node-minify/google-closure-compiler';
import uglifyjs from '@node-minify/uglify-js';
*/

const minify = require('@node-minify/core');

const cleanCSS = require('@node-minify/clean-css');

minify({
  compressor: cleanCSS,
  input: process.argv[2],
  output: process.argv[3],
  callback: function(err, min) {}
});
