const express = require('express')
const templatesControllers = require('../controllers/templates')

const router = express.Router();

router.get('/', templatesControllers.getTemplates);
router.get('/:tlink', templatesControllers.getTemplateByLink);

module.exports = router;