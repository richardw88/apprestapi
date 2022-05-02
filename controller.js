// controller sebagai penghubung untuk database , res  -> untuk di koneksikan ke routes / url

'use strict';

const response = require('./res');
const connection = require('./koneksi');

//melakukan export index
exports.index = function (req, res) {
    response.ok("Aplikasi REST API ku Berjalan", res);
};

//menampilkan semua data mahasiswa
exports.tampilsemuamahasiswa = function (req, res) {
    connection.query('SELECT * FROM mahasiswa', function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res);
        }
    });
};

//menampilkan data berdasarkan id
exports.tampilberdasarkanid = function (req, res) {
    let id = req.params.id;
    connection.query('SELECT * FROM mahasiswa WHERE id_mahasiswa = ?', [id], function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res);
        }
    });
};

//menambahkan data mahasiswa 
exports.tambahMahasiswa = function (req, res) {
    const nim = req.body.nim;  //melakukan request melalui body ke tabel nim
    const nama = req.body.nama;
    const jurusan = req.body.jurusan;

    connection.query('INSERT INTO mahasiswa (nim,nama,jurusan) VALUES (?,?,?)',
        [nim, nama, jurusan], function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Menambahkan Data", res);
            }
        });

};

//mengupdate data berdasarkan id
exports.ubahMahasiswa = function (req, res) {
    let id = req.body.id_mahasiswa;
    const nim = req.body.nim;
    const nama = req.body.nama;
    const jurusan = req.body.jurusan;

    connection.query('UPDATE mahasiswa SET nim=?, nama=?, jurusan=? WHERE id_mahasiswa=?',
        [nim, nama, jurusan, id], function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Mengubah Data", res);
            }
        });
};

//menghapus data berdasarkan id
exports.hapusMahasiswa = function (req, res) {
    const id = req.body.id_mahasiswa;

    connection.query('DELETE FROM mahasiswa WHERE id_mahasiswa=?', [id],
        function (error, rows, fields) {
            if(error){
                console.log(error)
            }else{
                response.ok("Berhasil Menghapus Data", res);
            }
        });
};