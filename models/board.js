const db = require('../database/database');

class Board {
   constructor(boardId, title, description, image_url, author) {
      this.boardId = boardId
      this.title = title
      this.description = description
      this.image_url = image_url
      this.author = author
   }

   create() {
      const queryBoard = `INSERT INTO boards VALUES(${this.boardId}, '${this.title}', '${this.description}', '${this.image_url}', ${this.author}, now(), 0)`
      return db.execute(queryBoard)
   }

   static fetchAll(userId) {
      const query = 'SELECT * FROM boards WHERE board_author = ?'
      return db.execute(query, [userId])
   }

   static edit(boardId, title, description) {
      const query = `
         UPDATE boards
            SET 
               board_title = "${title}",
               board_description = "${description}"
            WHERE board_id = ${boardId}
      `
      return db.execute(query, [boardId])
   }

   static delete(boardId) {
      const query = 'DELETE FROM boards WHERE board_id = ?'
      return db.execute(query, [boardId])
   }
}


module.exports = Board; 