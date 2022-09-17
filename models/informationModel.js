const  db  = require("../config/database.js") 

exports.getInformation = (result) => {
    db.query("SELECT * FROM position", (err, results) => {
        if(err){
            console.log(err);
            result(err, null);
        }else {
            result(null, results)
        }
    })
}

exports.getInformationById = (id, result) => {
    db.query("SELECT * FROM position WHERE product_id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });   
}

exports.insertInformation = (data, result) => {
    db.query("INSERT INTO position SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

exports.deleteInformationById = (id, result) => {
    db.query("DELETE FROM position WHERE position_id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}