const express = require("express");
const router = express.Router();

router.use("/users", require("./users.routes"));

module.exports = router;