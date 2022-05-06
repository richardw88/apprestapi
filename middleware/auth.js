var connection = require('../koneksi');
var mysql = require('mysql');
var md5 = require('md5');
var response = require('../res');
var jwt = require('jsonwebtoken');
var config = require('../config/secret');
var ip = require('ip');

//controller untuk register
exports.registrasi = function (req, res) {
    const post = {
        username: req.body.username,
        email: req.body.email,
        password: md5(req.body.password),
        role: req.body.role,
        tanggal_daftar: new Date()
    };
    
    // membuat querry untuk nge cek apakah sudah pernah terdaftar emailnya / belum 
    const query = "SELECT email FROM ?? WHERE ??";
    const table = ["user", "email", post.email];

    // mysql.format akan menjalakan variable dari querry dan table
    query = mysql.format(query, table);

    // buat controller dari database
    connection.query(query, function(error, rows){
        if (error){
            console.log(error)
        }else{
            if(rows.length == 0){
                const query = "INSERT INTO ?? SET ?"; // INSERT INTO "tabel user" SET [array di post]
                const table = ["user"];
                query = mysql.format(query, table);
                connection.query(query, post, function(error, rows){
                    if (error){
                        console.log(error);
                    }else{
                        response.ok("Berhasil menambahkan data user baru", res);
                    }
                });
            }else{
                response.ok("Email Sudah Terdaftar!", res);
            }
        }
    });
}

