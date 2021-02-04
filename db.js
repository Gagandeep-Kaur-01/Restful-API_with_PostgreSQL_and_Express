const Pool = require("pg").Pool;

const pool = new Pool({
    user: "postgres",
    password: "super1234",
    database: "practice_database",
    host: "localhost",
    port: 5432
});

module.exports = pool;