const express = require('express')
const templatesControllers = require('../controllers/templates')

const router = express.Router();

router.get('/', templatesControllers.getTemplates);
router.get('/:tid', templatesControllers.getTemplateByLink);

module.exports = router;