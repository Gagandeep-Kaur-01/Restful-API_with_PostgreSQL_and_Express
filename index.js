const express = require("express");
const app = express();
const pool = require("./db");

app.use(express.json()) // => req.body : to get access on body of json data

//-------------- Routes -----------------------//

// get all

// get a single

// create

// update

// delete 

app.listen(5000, () => {
    console.log("server is listening on port: 5000");
});