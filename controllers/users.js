const db = require('../database/database');
const HttpError = require('../models/http-error');

const login = async (req, res, next) => {
   const { email, password } = req.body;
   console.log(email, password);

   let existingUser;
   const query = 'SELECT * FROM users WHERE email = ?'

   try {
      existingUser = await db.query(query, [email])
   } catch (err) {
      const error = new HttpError(
         'Logging in failed, please try again later.',
         500
      );
      return next(error);
   }

   if (!existingUser) {
      const error = new HttpError(
         'There is no user with the given e-mail address.',
         403
      );
      return next(error);
   }

   let isValidPassword = false;
   try {
      isValidPassword = password === existingUser[0][0].password
   } catch (err) {
      const error = new HttpError(
         'Could not log you in, please check your credentials and try again.',
         500
      );
      return next(error);
   }

   if (!isValidPassword) {
      const error = new HttpError(
         'Invalid credentials, could not log you in.',
         403
      );
      return next(error);
   }

   res.json({
      user: existingUser[0]
   });
};

const signup = async (req, res, next) => {
   console.log(req);
}

exports.login = login;
exports.signup = signup;