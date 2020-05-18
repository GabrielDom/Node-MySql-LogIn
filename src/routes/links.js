const express = require("express");
const router = express.Router();
const path = require("path");
const fs = require("fs");

const pool = require("../database");
const { isLoggedIn } = require("../lib/auth");

router.get("/add", (req, res) => {
  res.render("links/add");
});

router.post("/add", async (req, res) => {
  res.redirect("links/list");
});

router.get("/list", isLoggedIn, (req, res) => {
  const directoryPath = path.join(__dirname, "../public/uploads");
  fs.readdir(directoryPath, function (err, files) {
    if (err) {
      return console.log("Unable to scan directory: " + err);
    } else files.forEach(function (file) {});
    res.render("links/list", { files });
  });
});

router.get("/download", (req, res) => {
  const file = path.join(__dirname, "../public/uploads", req.query.filename);
  res.download(file);
});

module.exports = router;
