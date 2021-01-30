const db = require('../database/database');

class Template {
   static fetchAll() {
      const query = 'SELECT * FROM templates'
      return db.execute(query)
   }

   static fetchByLink(tlink) {
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
      return Promise.all([
         db.execute(queryForLists, [tlink]),
         db.execute(queryForCards, [tlink])
      ])
   }
}

module.exports = Template