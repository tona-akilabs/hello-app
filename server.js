var express = require('express');

var app = express();
app.get('/', function (req, res) {
  res.send('Hello World!');
});
app.listen(8080, function () {
  console.log('Listening on port 8080!');
  console.log('  http://localhost:8080');
});