const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
GROUP BY teachers.name; `).then(res => {
  console.log(res.rows);
}).catch(error => {
  console.log("Error :", error);
})