const Card = require('../models/card')

const createCard = async (req, res, next) => {
   const { title, description, author, relatedBoard, relatedList } = req.body

   try {
      const card = new Card(title, description, author, relatedBoard, relatedList)
      await card.create()
      console.log(`[createCard] Card ${title} created successfully!`);
      res.status(200).json(`Card ${title} created successfully!`);
   } catch (err) {
      console.log('[createCard - error]', err);
      res.status(422).json({
         error: err
      })
   }
}


exports.createCard = createCard;