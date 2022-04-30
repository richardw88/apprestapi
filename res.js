'use strict';

// melakukan export ok
exports.ok = function(values, res){
    const data = {
        'status' : 200,
        'values' : values
    }
     res.json(data); // melakukan response data dari json
     res.end();
}

