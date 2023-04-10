const express = require("express");
const router = express.Router();
const helper = require("../helpers/helper");
const passport = require("passport");
const filename = "./data/users.json";
const bcrypt = require("bcrypt");
let users = require("../data/users.json");

// Register New User:
router.post("/register", async (req, res) => {
  const { username, password } = req.body;
  const id = { id: helper.getNewId(users) };
  try {
    const user = await helper.userExists(username);
    if (user) {
      console.log("User already exists!");
      return res.send("User already exist !");
    }

    const passwordHash = async (password, saltRounds = 2) => {
      try {
        const salt = await bcrypt.genSalt(saltRounds);
        const hash = await bcrypt.hash(password, salt);
        return hash;
      } catch (err) {
        console.log(err);
      }
    };

    const passwordHashed = await passwordHash(password);
    const newUser = { ...id, username, password: passwordHashed };

    // Store new user in local DB
    users.push(newUser);
    helper.writeJSONFile(filename, users);

    res.redirect("/users/login");
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// Log In User:
router.post("/login", 
  passport.authenticate("local", {failureRedirect: "/users/login"}),
  (req, res) => {
    res.redirect("/") 
});

// Log out user:
router.get("/logout", (req, res) => {
  req.logout();
  res.redirect("/");
});

router.get("/register", (req, res) => {
  res.render("register");
});

router.get("/login", (req, res) => {
  res.render("login");
});

module.exports = router;