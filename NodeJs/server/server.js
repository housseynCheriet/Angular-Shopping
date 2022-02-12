const express = require('express');
const apiRouter = require('./routes');

const app = express();
app.use(function(req, res, next) {
   res.header("Access-Control-Allow-Origin", "*");
   res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
 });

app.use(express.json())
app.use('',apiRouter);

app.listen(process.env.PORT || '3000', () => {
 console.log('Server started')
})



