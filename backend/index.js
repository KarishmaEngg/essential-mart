const express = require('express');
const cors = require('cors');
const pool = require('./db');
require('dotenv').config();

const app = express();

// Middlewares
app.use(cors());
app.use(express.json());

// --- ROUTES ---

// 1. GET ALL PRODUCTS (With Optional Global Filter)
app.get('/api/products', async (req, res) => {
  try {
    const { brand, material } = req.query;
    let query = 'SELECT * FROM products';
    let params = [];

    if (brand) {
      query += ' WHERE brand = $1';
      params.push(brand);
    }

    const result = await pool.query(query + ' ORDER BY id DESC', params);
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: "Server Error: Fetching Products" });
  }
});

// 2. DYNAMIC SLUG ROUTE (Used by /women/[slug] or /men/[slug])
// Example: /api/products/women/saree
app.get('/api/products/:category/:style', async (req, res) => {
  const { category, style } = req.params;
  const { sort, brand, minPrice, maxPrice } = req.query;

  try {
    let query = 'SELECT * FROM products WHERE category ILIKE $1 AND style ILIKE $2';
    let params = [category, style];
    let paramCount = 2;

    // Optional Brand Filter
    if (brand) {
      paramCount++;
      query += ` AND brand = $${paramCount}`;
      params.push(brand);
    }

    // Optional Price Range
    if (minPrice && maxPrice) {
      query += ` AND offer_price BETWEEN $${paramCount + 1} AND $${paramCount + 2}`;
      params.push(minPrice, maxPrice);
      paramCount += 2;
    }

    // Sorting Logic
    if (sort === 'low') query += ' ORDER BY offer_price ASC';
    else if (sort === 'high') query += ' ORDER BY offer_price DESC';
    else if (sort === 'rating') query += ' ORDER BY rating DESC';
    else query += ' ORDER BY id DESC';

    const result = await pool.query(query, params);
    
    if (result.rows.length === 0) {
      return res.status(200).json({ message: "No items found in this collection", data: [] });
    }
    
    res.json(result.rows);
  } catch (err) {
    console.error("Fetch Error:", err.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// 3. SINGLE PRODUCT DETAIL (For Product Page)
app.get('/api/product/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const result = await pool.query('SELECT * FROM products WHERE product_id = $1', [id]);
    if (result.rows.length === 0) return res.status(404).json({ error: "Product Not Found" });
    res.json(result.rows[0]);
  } catch (err) {
    res.status(500).json({ error: "DB Error" });
  }
});

// 4. CART SYSTEM - ADD
app.post('/api/cart/add', async (req, res) => {
  const { user_id, product_id, quantity } = req.body;
  try {
    // Check if item exists in cart
    const exists = await pool.query('SELECT * FROM cart WHERE user_id = $1 AND product_id = $2', [user_id, product_id]);
    
    if (exists.rows.length > 0) {
      const update = await pool.query(
        'UPDATE cart SET quantity = quantity + $1 WHERE user_id = $2 AND product_id = $3 RETURNING *',
        [quantity || 1, user_id, product_id]
      );
      return res.json({ message: "Quantity Updated", item: update.rows[0] });
    }

    const result = await pool.query(
      'INSERT INTO cart (user_id, product_id, quantity) VALUES ($1, $2, $3) RETURNING *',
      [user_id || 1, product_id, quantity || 1]
    );
    res.status(201).json({ success: true, item: result.rows[0] });
  } catch (err) {
    res.status(500).json({ error: "Cart Error" });
  }
});

// 5. CART SYSTEM - GET ALL ITEMS (With Product Joins)
app.get('/api/cart/:userId', async (req, res) => {
  try {
    const result = await pool.query(
      `SELECT c.*, p.name, p.offer_price, p.image_url, p.brand 
       FROM cart c 
       JOIN products p ON c.product_id = p.product_id 
       WHERE c.user_id = $1`, 
      [req.params.userId]
    );
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: "Failed to fetch cart" });
  }
});

// --- SERVER LISTEN ---
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`
  -----------------------------------------
  🚀 ESSENTIAL MART SERVER IS LIVE
  📡 Port: ${PORT}
  🔗 Endpoints: Men, Women, Kids,Cart, Filters
  -----------------------------------------
  `);
});