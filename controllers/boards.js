const db = require('../database/database');

const getBoards = async (req, res, next) => {
   const { userId } = req.body;
   const query = 'SELECT * FROM boards WHERE board_author = ?'
   await db.execute(query, [userId])
      .then(result => {
         return res.status(201).json({
            userBoards: result[0]
         })
      })
      .catch(err => {
         console.log('getBoardsByUserId', err);
         return res.status(422).json({
            error: err
         })
      })
}

const getBoardById = async (req, res, next) => {
   const boardId = req.params.bid;
   let choosenBoard = {
      lists: [],
      cards: []
   }
   const queryForLists = `
      SELECT * FROM boards_lists l
         JOIN boards b
         ON l.list_related_board = b.board_id
         WHERE b.board_id = ?
   `
   const queryForCards = `
      SELECT * FROM boards_cards c
         WHERE c.card_related_board = ?
   `
   await db.execute(queryForLists, [boardId])
      .then(lists => {
         choosenBoard.lists = lists[0]
      })
      .catch(err => {
         return res.status(422).json({
            error: err
         })
      })
   await db.execute(queryForCards, [boardId])
      .then(cards => {
         choosenBoard.cards = cards[0]
         return res.status(201).json(choosenBoard)
      })
      .catch(err => {
         console.log('getBoardById', err);
         return res.status(422).json({
            error: err
         })
      })
}

const createBoard = async (req, res, next) => {
   const { title, description, image_url, author } = req.body
   console.log(title, description, image_url, author);
   const query = `INSERT INTO boards VALUES(null, '${title}', '${description}', '${image_url}', ${author}, now(), 0)`
   await db.execute(query)
      .catch(err => {
         console.log('[err]', err);
      })
   res.json(`Board ${title} added ...`);
}

const deleteBoard = async (req, res, next) => {
   const boardId = req.params.bid;
   const query = 'DELETE FROM boards WHERE id = ?'
   await db.execute(query, [boardId])
      .then(result => console.log('then', result))
      .catch(err => {
         console.log('deleteBoard', err);
      })
   res.send('Board deleted ...');
}

exports.getBoards = getBoards;
exports.getBoardById = getBoardById;
exports.createBoard = createBoard;
exports.deleteBoard = deleteBoard;