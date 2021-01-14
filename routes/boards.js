const express = require('express')
const boardsControllers = require('../controllers/boards')

const router = express.Router()

//http://localhost:5000/api/boards
router.post('/', boardsControllers.getBoards)

//http://localhost:5000/api/boards/:bid
router.get('/board/:bid', boardsControllers.getSingleBoard)
router.post('/board/:bid', boardsControllers.editBoard)

//http://localhost:5000/api/boards/board
router.post('/board', boardsControllers.createBoard)

//http://localhost:5000/api/boards/board/:bid
router.delete('/board/:bid', boardsControllers.deleteBoard)

module.exports = router;