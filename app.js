const express = require('express');
const bodyParser = require('body-parser');
const usersRoutes = require('./routes/users');
const templatesRoutes = require('./routes/templates');
const boardsRoutes = require('./routes/boards');
const cardsRoutes = require('./routes/cards');
const listsRoutes = require('./routes/lists');

const app = express();

app.use(bodyParser.json());
app.use((req, res, next) => {
   res.setHeader('Access-Control-Allow-Origin', '*');
   res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');
   res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PATCH, DELETE, PUT');
   next();
});

app.use('/api/users', usersRoutes)
app.use('/api/templates', templatesRoutes)
app.use('/api/boards', boardsRoutes)
app.use('/api/cards', cardsRoutes)
app.use('/api/lists', listsRoutes)

app.listen(5000, () => {
   console.log('Start listenning on port:5000');
})