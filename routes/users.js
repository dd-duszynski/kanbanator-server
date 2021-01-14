const express = require('express')
const { check } = require('express-validator');
const usersControllers = require('../controllers/users')

const router = express.Router();

//http://localhost:5000/api/users/signup
router.post('/signup',
   [
      check('name').not().isEmpty(),
      check('email').normalizeEmail().isEmail(),
      check('password').isLength({ min: 5 })
   ],
   usersControllers.signup
);


//http://localhost:5000/api/users/login
router.post('/login',
   [
      check('email').normalizeEmail().isEmail(),
      check('password').isLength({ min: 5 })
   ],
   usersControllers.login
);

// router.post('/delete-account', usersControllers.deleteAccount);

module.exports = router;
