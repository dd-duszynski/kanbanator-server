const express = require('express')
const templatesControllers = require('../controllers/templates')

const router = express.Router();

//http://localhost:5000/api/templates
router.get('/', templatesControllers.getTemplates);
router.get('/:tlink', templatesControllers.getTemplateByLink);

module.exports = router;