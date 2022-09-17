
const {getInformation, getInformationById, insertInformation, deleteInformationById }= require("../models/informationModel.js") 

exports.showInformation = (req, res) => {
    getInformation ( (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results)
        }
    } )
}

exports.showInformationById = (req, res) => {
    getInformationById ( req.params.id ,(err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results)
        }
    } )
}

exports.createInformation = (req, res) => {
    const data = req.body;
    insertInformation(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

exports.deleteInformation = (req, res) => {
    const id = req.params.id;
    deleteInformationById(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}