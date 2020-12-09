const db = require('../database/database');

const getBoards = async (req, res, next) => {
   const { userId } = req.body;
   const query = 'SELECT * FROM boards WHERE author = ?'
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
   let board;
   const query = 'SELECT * FROM boards WHERE id = ?'
   await db.execute(query, [boardId])
      .then(result => board = result)
      .catch(err => {
         console.log('getBoardById', err);
      })
   res.json(board[0]);
}

const createBoard = async (req, res, next) => {
   let settings = {
      title: `Board ${req.params.bid}`,
      description: `This is description ${req.params.bid}`,
   }
   const query = 'INSERT INTO boards SET ?'
   await db.query(query, settings, (err, result) => {
      if (err) throw err;
      console.log(result);
   })
   res.json(`Post ${req.params.bid} added ...`);
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