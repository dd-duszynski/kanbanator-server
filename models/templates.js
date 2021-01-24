const db = require('../database/database');

class Template {
   static fetchAll() {
      const query = 'SELECT * FROM templates'
      return db.execute(query)
   }

   static async fetchByLink(tlink) {
      let choosenTemplate = {
         lists: [],
         cards: []
      }
      try {
         const queryForLists = `
            SELECT * FROM templates_lists l
            JOIN templates t
            ON l.list_related_template = t.template_id
            WHERE t.template_link = ?
         `
         const queryForCards = `
            SELECT * FROM templates_cards c
            WHERE c.card_related_template = ?
         `
         const [lists] = await db.execute(queryForLists,[tlink])
         const [cards] = await db.execute(queryForCards, [tlink])
         choosenTemplate.lists = lists
         choosenTemplate.cards = cards

      } catch(err) {
         console.log('[fetchByLink]: ', err);
         res.status(422).json({
            error: err
         })
      }

      return choosenTemplate
   }
}

module.exports = Template