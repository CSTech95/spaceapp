require('dotenv').config();
const express = require('express');
const app = express();
const cors = require('cors');
const pool = require('./db');

const api_key = process.env.API_KEY;

app.use(cors());
app.use(express.json());

app.post('/todos', async (req, res) => {
  try {
    const { description } = req.body;
    const newTodo = await pool.query(
      'INSERT INTO todo (description) VALUES ($1) RETURNING *',
      [description]
    );
    res.json(newTodo.rows[0]);
  } catch (err) {
    console.error(err.message);
  }
});

const port = process.env.PORT || 3001;
app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});

// Build restful API with PostgreSQL and Express
// https://www.youtube.com/watch?v=_Mun4eOOf2Q

//21:00
// TODO: Add Data to Database
// TODO: I probably must create perntodo database first
