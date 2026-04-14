const { Pool } = require('pg');
require('dotenv').config();

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

pool.connect((err, client, release) => {
  if (err) {
    return console.error('❌ Connection error:', err.stack);
  }
  console.log('✅ PostgreSQL Connected Successfully!');
  release();
});

module.exports = pool;