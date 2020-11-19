const express = require('express')
const boardsControllers = require('../controllers/boards')

const router = express.Router()

router.get('/', boardsControllers.getBoards)
router.get('/:bid', boardsControllers.getBoardById)
router.post('/:bid', boardsControllers.createBoard)
router.delete('/:bid', boardsControllers.deleteBoard)

module.exports = router;