const db = require('../database/database');

const createList = async (req, res, next) => {
   const query = `INSERT INTO boards_lists VALUES(null, "${req.body.title}", "private", ${req.body.relatedBoard})`

   await db.execute(query)
      .catch(err => {
         console.log('[err]', err);
      })
   res.json(`Lists ${req.body.title} added ...`);
}


exports.createList = createList;