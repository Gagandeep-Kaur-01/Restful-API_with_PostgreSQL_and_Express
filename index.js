const express = require("express");
const app = express();
const pool = require("./db");

app.use(express.json()) // => req.body : to get access on body of json data

//-------------- Routes -----------------------//

// get all
app.get("/getAll", async(req, res) => {
    try {
        const allTodos = await pool.query(
            "SELECT * FROM practice"
        );
        res.json(allTodos.rows);
    }
    catch(err) {
        console.error(err.message)
    }
})

// get a single
app.get("/getOne/:id", async(req, res) => {
    try {
        const {id} = req.params;
        const todo = await pool.query(
            "SELECT * FROM practice WHERE prac_id = $1", [id]
        );

        res.json(todo.rows[0]);
    } 
    catch(err) {
        console.error(err.message)
    }
})

// create
app.post("/create", async(req, res) => {
    try {
        const { description } = req.body;
        const newTodo = await pool.query (
            "INSERT INTO practice (description) VALUES($1) RETURNING * ",  
            [description]
            // RETURNING *: letting to return values from after run insert or update statements
             
        );

        res.json(newTodo.rows[0]);
    }  
    catch (err) {
        console.error(err.message);
    }
  
})


// update

// delete 

app.listen(5000, () => {
    console.log("server is listening on port: 5000");
});