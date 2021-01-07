const express = require('express')
const cardsControllers = require('../controllers/cards')

const router = express.Router()

router.post('/', cardsControllers.createCard)

module.exports = router;