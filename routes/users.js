const express = require('express')
const usersControllers = require('../controllers/users')
const { check } = require('express-validator');
const router = express.Router();

router.post(
   '/signup',
   [
      check('name').not().isEmpty(),
      check('email').normalizeEmail().isEmail(),
      check('password').isLength({ min: 5 })
   ],
   usersControllers.signup
);
router.post('/login',
   [
      check('email').normalizeEmail().isEmail(),
      check('password').isLength({ min: 5 })
   ],
   usersControllers.login
);

// router.post('/delete-account', usersControllers.deleteAccount);

module.exports = router;
