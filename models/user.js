const db = require('../database/database')

class User {
   constructor(name, email, hashedPassword){
      this.name = name
      this.email = email
      this.hashedPassword = hashedPassword
   }

   create(){
      const query = `INSERT INTO USERS (user_id, user_name, user_email, user_password) VALUES (null, ?, ?, ?)`
      return db.execute(query, [this.name, this.email, this.hashedPassword])
   }

   static find(email){
      const query = 'SELECT * FROM users WHERE user_email = ?'
      return db.execute(query, [email])
   }
   
}

module.exports = User