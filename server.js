const express = require('express');
const app = express();
const PORT = 8080;

app.get('/hello', function (req, res) {
  res.send('Hello cda5570');
});

app.listen(PORT);
console.log('server is running on http://127.0.0.1:' + PORT);