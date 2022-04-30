// npm run start = untuk jalanin nodemon

const express = require('express');
const bodyParser = require('body-parser');
const app = express();

// support parsing of application/json type post data
app.use(bodyParser.json());

//support parsing of application/x-www-form-urlencoded post data
app.use(bodyParser.urlencoded({ extended: true }));
app.listen(3000, () => {
    console.log(`Server started on port 3000`);
});