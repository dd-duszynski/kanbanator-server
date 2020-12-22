const db = require('../database/database');

const getTemplates = async (req, res, next) => {
   const query = 'SELECT * FROM templates'
   await db.execute(query)
      .then(result => {
         res.status(201).json({
            templates: result[0]
         })
      })
      .catch(err => {
         console.log('getTemplates', err);
      })
}

const getTemplateByLink = async (req, res, next) => {
   const templateLink = req.params.tid;
   const query = `
   SELECT * FROM cards c
   RIGHT JOIN lists l	
      ON c.related_list = l.list_id
   JOIN templates t
      ON l.related_board = t.id
   WHERE t.link = ?`
   await db.execute(query, [templateLink])
      .then(result => {
         res.status(201).json({
            singleTemplate: result[0]
         })
      })
      .catch(err => {
         console.log('getTemplateByLink', err);
      })
}

const getListsByLink = async (req, res, next) => {
   const templateLink = req.params.tid;
   const query = `
   SELECT * FROM lists l
   JOIN templates t
      ON l.related_board = t.id
   WHERE t.link = ?`
   await db.execute(query, [templateLink])
      .then(result => {
         res.status(201).json({
            lists: result[0]
         })
      })
      .catch(err => {
         console.log('getListsByLink', err);
      })
}


exports.getTemplates = getTemplates;
exports.getTemplateByLink = getTemplateByLink;
exports.getListsByLink = getListsByLink;