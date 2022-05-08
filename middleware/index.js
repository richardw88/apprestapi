const express = require('express');
const auth = require('./auth');
const router = express.Router();

// daftarkan menu URL dengan express router dari file auth.registrasi
router.post('/api/v1/register', auth.registrasi);
router.post('/api/v1/login', auth.login);

module.exports = router;