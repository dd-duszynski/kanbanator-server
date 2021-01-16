const express = require('express')
const cardsControllers = require('../controllers/cards')
const router = express.Router()

// [POST] http://localhost:5000/api/cards
router.post('/', cardsControllers.createCard)

module.exports = router;