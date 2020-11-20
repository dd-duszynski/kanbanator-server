const db = require('../database/database');

const getTemplates = async (req, res, next) => {
   let templates;
   const query = 'SELECT * FROM templates'
   await db.execute(query)
      .then(result => templates = result)
      .catch(err => {
         console.log('getTemplates', err);
      })
   res.json(templates[0]);
}

const getTemplateByLink = async (req, res, next) => {
   const templateId = req.params.tid;
   let template;
   const query = `
   SELECT * FROM cards c
   RIGHT JOIN lists l	
      ON c.related_list = l.list_id
   JOIN templates t
      ON l.related_board = t.id
   WHERE t.link = ?`
   await db.execute(query, [templateId])
      .then(result => template = result)
      .catch(err => {
         console.log('getTemplateByLink', err);
      })
   res.json(template);
}

const getLists = async (req, res, next) => {
   const templateId = req.params.tid;
   let lists;
   const query = `
   SELECT * FROM lists l
   JOIN templates t
      ON l.related_board = t.id
   WHERE t.link = ?`
   await db.execute(query, [templateId])
      .then(result => lists = result)
      .catch(err => {
         console.log('getLists', err);
      })
   res.json(lists);
}


exports.getTemplates = getTemplates;
exports.getTemplateByLink = getTemplateByLink;
exports.getLists = getLists;