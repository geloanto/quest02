const express = require("express");

const router = express.Router();

const sayWelcome = (req, res) => {
  res.send("Welcome to Wild Series !");
};

router.get("/", sayWelcome);

;
const itemsRouter = require("./items/router");
const programsRouter = require("./programs/router");

router.use("/programs", programsRouter)
router.use("/items", itemsRouter);

module.exports = router;