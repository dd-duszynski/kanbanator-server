const express = require('express')
const listsControllers = require('../controllers/lists')

const router = express.Router()

router.post('/', listsControllers.createList)

module.exports = router;