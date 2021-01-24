const db = require('../database/database');

class Card {
   constructor(title, description, author, relatedBoard, relatedList) {
      this.title = title
      this.description = description
      this.author = author
      this.relatedBoard = relatedBoard
      this.relatedList = relatedList
   }

   create() {
      const query = `
         INSERT INTO boards_cards 
            VALUES(null, "${this.title}", "${this.description}", ${this.author}, 0, ${this.relatedBoard}, ${this.relatedList})
      `
      return db.execute(query)
   }

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