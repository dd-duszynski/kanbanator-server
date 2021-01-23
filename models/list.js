const db = require('../database/database');

class List {
   constructor(boardId) {
      this.boardId = boardId
   }

   create(){
      const queryList = `
      INSERT INTO boards_lists 
         VALUES(null, "Default Title", "private", ${this.boardId})
      `
      return db.execute(queryList)
   }

   static fetchByBoardId(boardId) {
      const query = `
         SELECT * FROM boards_lists l
            RIGHT JOIN boards b
            ON l.list_related_board = b.board_id
            WHERE b.board_id = ?
         `
      return db.execute(query, [boardId])
   }

   static deleteByBoardId(boardId){
      const query = `
         DELETE FROM boards_lists 
            WHERE list_related_board = ?
      `
      return db.execute(query, [boardId])
   }
}

module.exports = List; 