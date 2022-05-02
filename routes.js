// routes berfungsi untuk membuat navigasi untuk url method get put post delete

'use strict';

// export function app
module.exports = function(app) {
    const jsonku = require('./controller.js');

    app.route('/')
        .get(jsonku.index);

    app.route('/tampil')
        .get(jsonku.tampilsemuamahasiswa);

    app.route('/tampil/:id')
        .get(jsonku.tampilberdasarkanid);

    app.route('/tambah')
        .post(jsonku.tambahMahasiswa);

    app.route('/ubah')
        .put(jsonku.ubahMahasiswa);

    app.route('/hapus')
        .delete(jsonku.hapusMahasiswa);

}
