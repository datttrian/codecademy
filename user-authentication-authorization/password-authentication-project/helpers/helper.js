const fs = require("fs");
let users = require("../data/users.json");

const getNewId = (array) => {
  if (array.length > 0) {
    return array[array.length - 1].id + 1;
  } else {
    return 1;
  }
};

const userExists = async (username) => {
  return await users.find((user) => user.username === username);
};

//Delete the process.nextTick structure ? 

const findById = function (id, cb) {
    var idx = id - 1;
    console.log(idx);
    if (users[idx]) {
      cb(null, users[idx]);
    } else {
      cb(new Error("User " + id + " does not exist"));
    }
};


//Delete the process.nextTicke structure ? 

const findByUsername = function (username, cb) {
    for (var i = 0, len = users.length; i < len; i++) {
      var record = users[i];
      if (record.username === username) {
        console.log(`Username with username ${record.username} found!`);
        console.log(`${JSON.stringify(record)}`);
        return cb(null, record);
      }
    }
    console.log("No user found in findByUsername()")
    return cb(null, null);
};

function writeJSONFile(filename, content) {
  fs.writeFileSync(filename, JSON.stringify(content), "utf8", (err) => {
    if (err) console.log(err);
  });
}

module.exports = {
  getNewId,
  writeJSONFile,
  userExists,
  findByUsername,
  findById,
};