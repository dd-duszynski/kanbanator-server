const express = require('express')
const boardsControllers = require('../controllers/boards')
const router = express.Router()

// [POST] http://localhost:5000/api/boards
router.post('/', boardsControllers.getBoards)

// [GET] http://localhost:5000/api/boards/board/:bid
router.get('/board/:bid', boardsControllers.getSingleBoard)

// [POST] http://localhost:5000/api/boards/board/:bid
router.post('/board/:bid', boardsControllers.editBoard)

// [POST] http://localhost:5000/api/boards/board
router.post('/board', boardsControllers.createBoard)

// [DELETE] http://localhost:5000/api/boards/board/:bid
router.delete('/board/:bid', boardsControllers.deleteBoard)

module.exports = router;