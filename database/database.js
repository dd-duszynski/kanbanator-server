const mysql = require("mysql2")
const password = require('../SECRET')

const pool = mysql.createPool({
   host: 'localhost',
   user: 'root',
   password: password,
   database: 'kanbanator',
   multipleStatements: true,
   waitForConnections: true,
})

const promisePool = pool.promise();

module.exports = promisePool;