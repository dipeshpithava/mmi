const express = require('express')
const app = express()
var path = require('path');
var cookieParser = require('cookie-parser');
var session = require('express-session');
var bodyParser = require('body-parser');

const port = 8042

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

//view engine setup
app.use(express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname, 'SiteIndex'));
app.set('view engine', 'ejs');

app.use(session({
    secret: 'TWFrZU15SW52ZXN0bWVudFNlY3JldDIwMjI=',
    resave: true,
    saveUninitialized: true
}));
app.use(cookieParser()); // read cookies (needed for auth)

app.get('*', (req, res) => {
  res.render("index");
})

app.listen(port, () => {
  console.log(`App listening on port ${port}`)
})