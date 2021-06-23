const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query().then(res => {
  console.log(res.rows);
}).catch(error => {
  console.log("Error :", error);
})