const Card = require('../models/card')

const createCard = async (req, res, next) => {
   const { title, description, author, relatedBoard, relatedList } = req.body
   try {
      const card = new Card(title, description, author, relatedBoard, relatedList)
      await card.create()
      console.log(`[Card - createCard] Card ${title} created successfully!`);
      res.status(200).json(`Card ${title} created successfully!`);
   } catch (err) {
      console.log('[Card - createCard - error]', err);
      res.status(422).json({
         error: err
      })
   }
}

const editCard = async (req, res) => {
   const cardId = req.params.cid;
   const { title, description, labels, board, list } = req.body

   try {
      await Card.edit(cardId, title, description, labels, board, list)
      console.log(`[editCard] Card edited successfully!`);
      res.status(200).json('Card edited successful...');
   } catch (err) {
      console.log('[editBoard - error]', err);
      res.status(422).json({
         error: err
      })
   }
}

const deleteByCardId = async (req, res) => {
   const cardId = req.params.cid
   try {
      await Card.deleteByCardId(cardId)
      res.status(200).json('[Card - deleteByCardId] Card deleted successfully!...')
   } catch (err) {
      console.log('[Card - deleteByCardId - error]', err);
      res.status(422).json({
         error: err
      })
   }
}

exports.createCard = createCard;
exports.deleteByCardId = deleteByCardId;
exports.editCard = editCard;