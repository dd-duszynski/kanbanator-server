const express = require('express')
const boardsControllers = require('../controllers/boards')

const router = express.Router()

router.post('/', boardsControllers.getBoards)
router.get('/board/:bid', boardsControllers.getBoardById)
router.post('/:bid', boardsControllers.createBoard)
router.delete('/:bid', boardsControllers.deleteBoard)

module.exports = router;