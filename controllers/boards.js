const Board = require('../models/board')
const List = require('../models/list')
const Card = require('../models/card')

const fetchAllBoards = async (req, res) => {
   const { userId } = req.body;
   try {
      const [rows] = await Board.fetchAll(userId)
      console.log('[fetchAllBoards] All Boards fetched successfully!');
      res.status(201).json({
         userBoards: rows
      })
   } catch (err) {
      console.log('[fetchAllBoards - error]', err);
      res.status(422).json({
         error: err
      })
   }
}

const fetchBoardById = async (req, res) => {
   const boardId = req.params.bid;
   try {
      const board = await Board.fetchById(boardId)
      console.log('[fetchBoardById] Board fetched successfully!');
      res.status(201).json(board)
   } catch (err) {
      console.log('[fetchBoardById - error]', err);
      res.status(422).json({
         error: err
      })
   }
}

const createBoard = async (req, res) => {
   const { boardId, title, description, image_url, author } = req.body
   try {
      const board = new Board(boardId, title, description, image_url, author)
      const list = new List(boardId)
      await board.create()
      await list.create()
      console.log(`[createBoard] Board ${title} created successfully!`);
      res.json(`Board ${title} & Default list added ...`);
   } catch (err) {
      console.log('[createBoard - error]', err);
      res.status(422).json({
         error: err
      })
   }

}

const editBoard = async (req, res) => {
   const boardId = req.params.bid;
   const { title, description } = req.body

   try {
      await Board.edit(boardId, title, description)
      console.log(`[editBoard] Board edited successfully!`);
      res.json('Board edited successful...');
   } catch (err) {
      console.log('[editBoard - error]', err);
      res.status(422).json({
         error: err
      })
   }
}

const deleteBoard = (req, res) => {
   const boardId = req.params.bid;

   Promise.all([
      Board.delete(boardId),
      List.deleteByBoardId(boardId),
      Card.deleteByBoardId(boardId)
   ])
      .then(res.json('[deleteBoard] Board deleted successfully!...'))
      .catch((err) => console.log('[deleteBoard - error]', err))
}

exports.fetchAllBoards = fetchAllBoards;
exports.fetchBoardById = fetchBoardById;
exports.createBoard = createBoard;
exports.editBoard = editBoard;
exports.deleteBoard = deleteBoard;