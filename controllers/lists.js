const db = require('../database/database');

const createList = async (req, res, next) => {
   const query = `INSERT INTO boards_lists VALUES(null, "${req.body.title}", "private", ${req.body.relatedBoard})`
   // bez async
   // res do then, zamiast console.log
   await db.execute(query)
      .then((data) => {
         console.log(`Lists ${req.body.title} added successfully`);
      })
      .catch(err => {
         console.log('[err]', err);
      })
   res.json(`Lists ${req.body.title} added successfully`);
}

exports.createList = createList;