const express = require('express')
const boardsControllers = require('../controllers/boards')

const router = express.Router()

//http://localhost:5000/api/boards
router.post('/', boardsControllers.getBoards)
router.get('/board/:bid', boardsControllers.getSingleBoard)
router.post('/board', boardsControllers.createBoard)
router.delete('/board/:bid', boardsControllers.deleteBoard)

module.exports = router;