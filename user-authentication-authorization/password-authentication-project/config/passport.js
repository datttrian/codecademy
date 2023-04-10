// Passport Config
const passport = require('passport');
const LocalStrategy = require("passport-local").Strategy;
const bcrypt = require("bcrypt");
const helper = require("../helpers/helper");
  
passport.serializeUser((user, done) => {
        done(null, user.id);
      });
      
passport.deserializeUser((id, done) => {
         helper.findById(id, (err, user) => {
          if(err) return done(err);
          return done(null, user);
        });
      });
      
passport.use(new LocalStrategy(
           function(username, password, cb){
              helper.findByUsername(username, async (err, user) => {
              if(err) return cb(err);
              if(!user) return cb(null, false);
              const matchedPassword = await bcrypt.compare(password, user.password);
              if(!matchedPassword) return cb(null, false);
              return cb(null, user)
            });
          })
);
