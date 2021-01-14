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

const getSingleBoard = async (req, res, next) => {
   const boardId = req.params.bid;
   let choosenBoard = {
      lists: [],
      cards: []
   }
   const queryForLists = `
      SELECT * FROM boards_lists l
         RIGHT JOIN boards b
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
         console.log('getSingleBoard', err);
         return res.status(422).json({
            error: err
         })
      })
}

const createBoard = async (req, res, next) => {
   const { boardId, title, description, image_url, author } = req.body
   console.log(boardId, title, description, image_url, author);
   const queryBoard = `INSERT INTO boards VALUES(${boardId}, '${title}', '${description}', '${image_url}', ${author}, now(), 0)`
   const queryList = `INSERT INTO boards_lists VALUES(null, "Default Title", "private", ${boardId})`
   await db.execute(queryBoard)
      .then((data) => {
         console.log(`Board ${title} added successfully`);
      })
      .catch(err => {
         console.log('[err - queryBoard]', err);
      })
   await db.execute(queryList)
      .then((data) => {
         console.log(`Lists 'Default Title' added successfully`);
      })
      .catch(err => {
         console.log('[err - queryList]', err);
      })

   res.json(`Board ${title} & Default list added ...`);
}

const editBoard = async (req, res, next) => {
   const boardId = req.params.bid;
   const {title, description} = req.body
   const query = `
      UPDATE boards
         SET 
            board_title = "${title}",
            board_description = "${description}"
         WHERE board_id = ${boardId}
    
   ` 
   await db.execute(query, [boardId])
      .then(result => console.log('then', result))
      .catch(err => {
         console.log('[editBoard - ERROR]', err);
      })
   res.send('Board edited successful...');
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
exports.getSingleBoard = getSingleBoard;
exports.createBoard = createBoard;
exports.deleteBoard = deleteBoard;
exports.editBoard = editBoard;