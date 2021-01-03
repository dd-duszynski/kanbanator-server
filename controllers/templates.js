const db = require('../database/database');

const getTemplates = async (req, res, next) => {
   const query = 'SELECT * FROM templates'
   await db.execute(query)
      .then(result => {
         res.status(201).json(result[0])
      })
      .catch(err => {
         console.log('getTemplates', err);
      })
}

const getTemplateByLink = async (req, res, next) => {
   const templateLink = req.params.tlink;
   let choosenTemplate = {
      lists: [],
      cards: []
   }

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

   await db.execute(queryForLists, [templateLink])
      .then(lists => {
         choosenTemplate.lists = lists[0]
      })
      .catch(err => {
         return res.status(422).json({
            error: err
         })
      })

   await db.execute(queryForCards, [templateLink])
      .then(cards => {
         choosenTemplate.cards = cards[0]
         return res.status(201).json(choosenTemplate)
      })
      .catch(err => {
         return res.status(422).json({
            error: err
         })
      })
}


exports.getTemplates = getTemplates;
exports.getTemplateByLink = getTemplateByLink;