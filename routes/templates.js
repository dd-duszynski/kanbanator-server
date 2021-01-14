const express = require('express')
const templatesControllers = require('../controllers/templates')

const router = express.Router();

//http://localhost:5000/api/templates
router.get('/', templatesControllers.getTemplates);

//http://localhost:5000/api/templates/:tlink
router.get('/:tlink', templatesControllers.getTemplateByLink);

module.exports = router;