var express = require('express');
var auth = require('./auth');
var router = express.Router();
var verifikasi = require('./verifikasi');


// daftarkan menu URL dengan express router dari file auth.registrasi
router.post('/api/v1/register', auth.registrasi);
router.post('/api/v1/login', auth.login);

// alamat yang memerlukan otorisasi
router.get('/api/v1/rahasia', verifikasi(), auth.halamanRahasia);

module.exports = router;