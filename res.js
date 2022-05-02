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

//response untuk nested matakuliah
exports.oknested = function(values,res) {
    //lakukan akumulasi, reduce untuk membuat json menjadi nested
    const hasil = values.reduce((akumulasi, item)=>{
        //tentukan key group
        if(akumulasi[item.nama]){
            //buat variable group nama mahasiswa
            const group = akumulasi[item.nama];
            //cek jika isi array adalah matakuliah
            if(Array.isArray(group.matakuliah)){
                //tambahkan value ke dalam group matakuliah
                group.matakuliah.push(item.matakuliah);
            }else{
                group.matakuliah = [group.matakuliah, item.matakuliah];
            }
        }else{
            akumulasi[item.nama] = item;
        }
        return akumulasi;
    },{});
    var data = {
        'status' : 200,
        'values' :  hasil
    };
    res.json(data);
    res.end();
}
