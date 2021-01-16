const express = require('express')
const templatesControllers = require('../controllers/templates')
const router = express.Router();

// [GET] http://localhost:5000/api/templates
router.get('/', templatesControllers.getTemplates);

// [GET] http://localhost:5000/api/templates/:tlink
router.get('/:tlink', templatesControllers.getTemplateByLink);

module.exports = router;