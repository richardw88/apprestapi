// membuat semacam navigasi

'use strict';

// export function app
module.exports = function(app) {
    const jsonku = require('./controller.js');

    app.route('/')
        .get(jsonku.index);
}
