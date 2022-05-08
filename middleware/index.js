const express = require('express');
const auth = require('./auth');
const router = express.Router();

// daftarkan menu URL dengan express router dari file auth.registrasi
router.post('/api/v1/register', auth.registrasi);

module.exports = router;