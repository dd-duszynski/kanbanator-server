const express = require('express')
const templatesControllers = require('../controllers/templates')

const router = express.Router();

router.get('/', templatesControllers.getTemplates);
router.get('/:tid', templatesControllers.getTemplateByLink);
router.get('/lists/:tid', templatesControllers.getLists);

module.exports = router;