// controller sebagai penghubung untuk database , res  -> untuk di koneksikan ke routes / url

'use strict';

const response = require('./res');
const connection = require('./koneksi');

//melakukan export index
exports.index = function(req, res) {
    response.ok("Aplikasi REST API ku Berjalan", res) 
};

//menampilkan semua data mahasiswa
exports.tampilsemuamahasiswa = function(req, res){
    connection.query('SELECT * FROM mahasiswa', function(error, rows, fields){
        if(error){
            console.log(error);
        }else {
            response.ok(rows, res)
        }
      });   
};

//menampilkan data berdasarkan id
