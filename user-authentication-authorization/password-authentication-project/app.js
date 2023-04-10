// Import packages
const express = require("express");
const app = express();
const session = require("express-session");
const passport = require("passport");

// App config
app.set("trust proxy", 1);
const {PORT, SESS} = require('./config.js') ;
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(__dirname + '/public'));
app.set("view engine", "ejs");

// Import Passport config
require('./config/passport');

// Session Config
app.use(session({
  name: SESS.NAME,
  secret: SESS.SECRET,
  cookie: { maxAge: 300000000 },
  saveUninitialized: false,
    resave: false,
    sameSite: 'none',
    secure: true
})); 


app.use(passport.initialize());
app.use(passport.session());

// Routes
app.use(require("./routes/index.routes"));

app.get("/", (req, res) => {
  const user = req.user || "Guest";
  console.log(user);
  res.render("home", { user });
});


app.listen(PORT, () => {
  console.log(`Server is listening on port: ${PORT}`);
});