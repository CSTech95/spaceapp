const Pool = require('pg').Pool;

pool = new Pool({
  user: process.env.user,
  password: process.env.password,
  host: process.env.host,
  port: process.env.port,
  database: process.env.database,
});

module.exports = pool;

// Hide this info in Environment Variable
// Can find info here: https://node-postgres.com/features/connecting
