var connection = require('../koneksi');
var mysql = require('mysql');
var md5 = require('md5');
var response = require('../res');
var jwt = require('jsonwebtoken');
var config = require('../config/secret');
var ip = require('ip');


//controller untuk register
exports.registrasi = function (req, res) {
    var post = {
        username: req.body.username,
        email: req.body.email,
        password: md5(req.body.password),
        role: req.body.role,
        tanggal_daftar: new Date()
    };

    // membuat query untuk nge cek apakah sudah pernah terdaftar emailnya / belum 
    var query = "SELECT email FROM ?? WHERE ??=?"; // SELECT email FROM user WHERE email = ....@gmail.com
    var table = ["user", "email", post.email];

    // mysql.format akan menjalakan variable dari query dan table
    query = mysql.format(query, table);

    // buat controller dari database
    connection.query(query, function (error, rows) {
        if (error) {
            console.log(error);
        } else {
            if (rows.length == 0) {
                var query = "INSERT INTO ?? SET ?"; // INSERT INTO "tabel user" SET [array di var.post]
                var table = ["user"];
                query = mysql.format(query, table); //mmenjalankan query dari var query dan var table
                connection.query(query, post, function (error, rows) {  // menjalankan query dan array post
                    if (error) {
                        console.log(error);
                    } else {
                        response.ok("Berhasil menambahkan data user baru", res);
                    }
                });
            } else {
                response.ok("Email Sudah Terdaftar!", res);
            }
        }
    });
};

//controller untuk login
exports.login = function (req, res) {
    var post = { // untuk mengimpan array post saat di query
        password: req.body.password,
        email: req.body.email
    };

    var query = "SELECT * FROM ?? WHERE ??=? AND ??=?"; // laukan pengecekan dari password dan email yang di masukan
    var table = ["user", "password", md5(post.password), "email", post.email]; // post.password = melakukan post dari array password ke database

    query = mysql.format(query, table);

    connection.query(query, function (error, rows) {
        if (error) {
            console.log(error);
        } else {
            if (rows.length == 1) {
                var token = jwt.sign({ rows }, config.secret, {
                    expiresIn: 1440 // wktu lama akses token
                });
                id_user = rows[0].id; // cek data untuk dimasukan ke akses_token melalui id_user di table user

                var data = {    // untuk mengimpan array data saat connection.query
                    id_user: id_user,
                    access_token: token,
                    ip_address: ip.address()
                };

                var query = "INSERT INTO ?? SET ?";
                var table = ["akses_token"];

                query = mysql.format(query, table);

                connection.query(query, data, function (error, rows) {
                    if (error) {
                        console.log(error);
                    } else {
                        res.json({
                            success: true,
                            messange: 'Token JWT Tergenerate',
                            token: token,
                            currUser: data.id_user
                        });
                    }
                });
            } else {
                res.json({
                    "Error": true,
                    "Message": "Email dan Password yang anda masukan salah!"
                });
            }
        }
    });
}

// membuat halaman rahasia untuk di akses hanya role tertentu
exports.halamanRahasia = function(req,res){
    response.ok("Halaman ini hanya dapat di akses oleh role 2 !", res);
}