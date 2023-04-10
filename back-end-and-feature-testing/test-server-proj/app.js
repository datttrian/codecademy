const express = require('express');
const path = require('path');
const logger = require('morgan');
const bodyParser = require('body-parser');
const expressHandlebars = require('express-handlebars');

const index = require('./routes/index');

const app = express();

app.engine('handlebars', expressHandlebars({defaultLayout: 'app'}));
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'handlebars');

app.use(logger('dev'));
app.use(bodyParser.urlencoded({extended: false}));

app.use('/', index);
app.use(express.static(path.join(__dirname, 'public')));

module.exports = app;
