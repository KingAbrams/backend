const  mysql = require("mysql2");
   
// create the connection to database
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'meteo_db'
});
  
module.exports = db;