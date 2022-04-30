'use strict';

const response = require('./res');
const connection = require('./koneksi');

//melakukan export index
exports.index = function(req, res) {
    response.ok("Aplikasi REST API ku Berjalan", res) 
};