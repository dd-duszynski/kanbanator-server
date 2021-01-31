const express = require('express')
const cardsControllers = require('../controllers/cards')
const router = express.Router()

// [POST] http://localhost:5000/api/cards
router.post('/', cardsControllers.createCard)

// [POST] http://localhost:5000/api/cards/card/:cid
router.post('/card/:cid', cardsControllers.editCard)

// [DELETE] http://localhost:5000/api/cards/card/:cid
router.delete('/card/:cid', cardsControllers.deleteByCardId)

module.exports = router;