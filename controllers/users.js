const bcrypt = require('bcryptjs')
const { validationResult } = require('express-validator');
const jwt = require('jsonwebtoken')
const HttpError = require('../models/http-error');
const User = require('../models/user')
const Board = require('../models/board')

const signup = async (req, res, next) => {
   const errors = validationResult(req);
   if (!errors.isEmpty()) {
      res
         .status(422)
         .json({
            token: null,
            email: null,
            userId: null,
            error: 'Invalid inputs passed, please check your data.'
         })
   }

   const { name, email, password } = req.body;

   let existingUser;
   try {
      [existingUser] = await User.find(email)
      if (existingUser.length > 0) {
         res.status(400).json({
            token: null,
            email: null,
            userId: null,
            error: 'This e-mail already exists!'
         })
      }
   } catch (err) {
      console.log(err);
      return next(error);
   }

   if (existingUser[0] !== undefined) {
      res.status(422).json({
         token: null,
         email: null,
         userId: null,
         error: 'User exists already, please login instead.'
      })
      return next(error);
   }

   let hashedPassword;
   try {
      hashedPassword = await bcrypt.hash(password, 12);
   } catch (err) {
      console.log('[SIGNUP - hashedPassword]', err);
      return next(error);
   }

   try {
      const user = new User(name, email, hashedPassword)
      await user.create()
      console.log('[SIGNUP] User created successfully!');
   } catch (err) {
      console.log('[SIGNUP - error]: ', err);
      res.status(500).json({
         token: null,
         email: null,
         userId: null,
         error: 'Signing up failed, please try again later.'
      })
   }

   res.status(201).json({
      email: email,
      name: name,
      message: "An account has been created. Please Log In.",
      error: null
   });
};

// ----------------------------------------------------------------------------------------------

const login = async (req, res, next) => {
   const errors = validationResult(req);
   if (!errors.isEmpty()) {
      res
         .status(422)
         .json({
            token: null,
            email: null,
            userId: null,
            error: 'Invalid inputs passed, please check your data.'
         })
   }

   const { email, password } = req.body;

   let existingUser, boards;
   try {
      [existingUser] = await User.find(email)
      if (existingUser.length === 0) {
         res
            .status(400)
            .json({
               token: null,
               email: null,
               userId: null,
               error: 'Logging in failed, please try again later.'
            })
      }
      [boards] = await Board.fetchAll(existingUser[0].user_id)
   } catch (err) {
      res
         .status(400)
         .json({
            token: null,
            email: null,
            userId: null,
            error: err
         })
   }

   if (!existingUser) {
      res
         .status(403)
         .json({
            token: null,
            email: null,
            userId: null,
            error: 'There is no user with the given e-mail address.'
         })
   }

   let isValidPassword = false;
   try {
      isValidPassword = await bcrypt.compare(password, existingUser[0].user_password);
   } catch (err) {
      console.log(err);
      const error = new HttpError(
         'Could not log you in, please check your credentials and try again.',
         500
      );
      return next(error);
   }

   if (!isValidPassword) {
      const error = new HttpError(
         'Invalid credentials, could not log you in.', 403
      );
      return next(error);
   }

   let token;
   try {
      token = jwt.sign(
         { email: email }, 'secret', { expiresIn: '2h' }
      );
      console.log(`Logged: ${email}`);
   } catch (err) {
      console.log(err);
      const error = new HttpError(
         'Token in failed, please try again later.', 500
      );
      return next(error);
   }
   res
      .status(201)
      .json({
         token: token,
         email: email,
         userId: existingUser[0].user_id,
         error: null,
         boards: boards
      });
};

exports.signup = signup;
exports.login = login;