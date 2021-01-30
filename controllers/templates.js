const Template = require('../models/templates')

const fetchAllTemplates = async (req, res, next) => {
   try {
      const [result] = await Template.fetchAll()
      console.log('[getTemplates] All Boards fetched successfully!');
      res.status(201).json(result)
   } catch (err) {
      console.log('[getTemplates]: ', err);
      res.status(422).json({
         error: err
      })
   }
}

const fetchTemplateByLink = (req, res, next) => {
   const templateLink = req.params.tlink;
   let choosenTemplate = {
      lists: [],
      cards: []
   }
   Template.fetchByLink(templateLink)
      .then((data => {
         choosenTemplate.lists = data[0][0];
         choosenTemplate.cards = data[1][0];
      }))
      .then(() => res.status(201).json(choosenTemplate))
      .catch(err => {
         console.log('[fetchByLink]', err);
      })
   console.log('[fetchBoardById] Board fetched successfully!');

}
// const fetchTemplateByLink = async (req, res, next) => {
//    const templateLink = req.params.tlink;
//    try {
//       const template = await Template.fetchByLink(templateLink)
//       console.log('[fetchBoardById] Board fetched successfully!');
//       res.status(201).json(template)
//    } catch (err) {
//       console.log('[getTemplateByLink - error]: ', err);
//       res.status(422).json({
//          error: err
//       })
//    }
// }


exports.fetchAllTemplates = fetchAllTemplates;
exports.fetchTemplateByLink = fetchTemplateByLink;