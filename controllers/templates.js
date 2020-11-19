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

// const getTemplateByLink = async (req, res, next) => {
//    const templateId = req.params.tid;
//    let template;
//    const query = `
//    SELECT * FROM cards c
//    RIGHT JOIN lists l	
//       ON c.related_list = l.list_id
//    JOIN templates t
//       ON l.related_board = t.id
//    WHERE t.link = ?`
//    await db.execute(query, [templateId])
//       .then(result => template = result)
//       .catch(err => {
//          console.log('getTemplateByLink', err);
//       })
//    res.json(template);
// }
const getTemplateByLink = async (req, res, next) => {
   const templateId = req.params.tid;
   let template;
   const query = 'SELECT * FROM templates WHERE link = ?'
   await db.execute(query, [templateId])
      .then(result => template = result)
      .catch(err => {
         console.log('getTemplateByLink',err);
      })
   res.json(template[0]);
}

exports.getTemplates = getTemplates;
exports.getTemplateByLink = getTemplateByLink;