const db = require('../database/database');

const createCard = async (req, res, next) => {
   const query = `INSERT INTO boards_cards VALUES(null, "${req.body.title}", "${req.body.description}", ${req.body.author}, 0, ${req.body.relatedBoard}, ${req.body.relatedList})`
   
   // To powinno być napisane tak: db.execute(query, [req.body.title, req.body..... ])
   // INSERT INTO boards ?,?,?
   
   await db.execute(query)
      .catch(err => {
         console.log('[err]', err);
      })
   res.json(`Card ${req.body.title} added ...`);
}


exports.createCard = createCard;