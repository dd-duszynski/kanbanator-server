const express = require('express')
const listsControllers = require('../controllers/lists')
const router = express.Router()

// [POST] http://localhost:5000/api/lists
router.post('/', listsControllers.createList)

module.exports = router;