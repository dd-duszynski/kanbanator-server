const db = require('../database/database');

class Card {
   // constructor(boardId, title, description, image_url, author) {
   //    this.boardId = boardId
   //    this.title = title
   //    this.description = description
   //    this.image_url = image_url
   //    this.author = author
   // }

   static fetchByBoardId(boardId) {
      const query = `
         SELECT * FROM boards_cards c
            WHERE c.card_related_board = ?
         `
      return db.execute(query, [boardId])
   }

   static deleteByBoardId(boardId) {
      const query = `
         DELETE FROM boards_cards 
            WHERE card_related_board = ?
      `
      return db.execute(query, [boardId])
   }
}

module.exports = Card; 