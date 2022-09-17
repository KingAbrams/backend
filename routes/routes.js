const express = require("express")
const { showInformation, showInformationById, createInformation, deleteInformation } = require("../controllers/information.js")

const router = express.Router()

router.get('/information', showInformation)

router.get('/information/:id', showInformationById)

router.post('/information', createInformation)

router.delete('/information/:id', deleteInformation)

module.exports = router;    