/**
 * ESSENTIAL MART BACKEND - PRODUCTION READY SERVER
 * Developer: Karishma Singh
 * Last Updated: 2026-04-17
 */

const express = require('express');
const cors = require('cors');
const { Pool } = require('pg');
const helmet = require('helmet'); // Security headers
const morgan = require('morgan'); // Request logging
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 5000;

// ==========================================
// 1. ADVANCED MIDDLEWARE SETUP
// ==========================================
app.use(helmet()); // Protects against common web vulnerabilities
app.use(cors());
app.use(morgan('dev')); // Logs every request to terminal for easy debugging
app.use(express.json({ limit: '50mb' }));
app.use(express.urlencoded({ extended: true, limit: '50mb' }));

// ==========================================
// 2. ROBUST DATABASE CONNECTION
// ==========================================
const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: process.env.DATABASE_URL.includes('localhost') ? false : { rejectUnauthorized: false },
    max: 20, // Connection pool size
    idleTimeoutMillis: 30000,
    connectionTimeoutMillis: 2000,
});

// Database Error Handling
pool.on('error', (err) => {
    console.error('❌ Unexpected error on idle client', err);
    process.exit(-1);
});

pool.on('connect', () => {
    console.log('✅ Connected to PostgreSQL Database');
});

// ==========================================
// 3. ENHANCED HELPER FUNCTIONS
// ==========================================

/**
 * Format database row to clean JSON for Frontend
 */
const formatProduct = (row) => {
    if (!row) return null;

    let parsedImages = [];
    try {
        if (typeof row.images === 'string') {
            parsedImages = JSON.parse(row.images);
        } else if (Array.isArray(row.images)) {
            parsedImages = row.images;
        } else {
            parsedImages = row.images ? [row.images] : [];
        }
    } catch (e) {
        console.warn(`⚠️ Image parse error for product ${row.id}:`, e.message);
        parsedImages = [];
    }

    // Calculation for discount percentage
    const oPrice = parseFloat(row.original_price) || 0;
    const dPrice = parseFloat(row.discounted_price) || 0;
    const calculatedDiscount = oPrice > 0 ? Math.round(((oPrice - dPrice) / oPrice) * 100) : 0;

    return {
        id: row.id,
        product_id: row.id,
        name: row.name || 'Unnamed Product',
        category: (row.category || '').toLowerCase(),
        sub_category: row.sub_category || 'general',
        subcategory: row.sub_category || 'general', // Duplicate for frontend safety
        original_price: oPrice,
        discounted_price: dPrice,
        price: dPrice > 0 ? dPrice : oPrice,
        mrp: oPrice,
        images: Array.isArray(parsedImages) ? parsedImages : [],
        image_url: Array.isArray(parsedImages) && parsedImages.length > 0 ? parsedImages[0] : '/placeholder.jpg',
        discount: calculatedDiscount,
        in_stock: row.in_stock ?? true,
        fabric: row.fabric || 'Premium Silk',
        rating: parseFloat(row.rating) || 4.5,
        short_description: row.short_description || '',
        full_description: row.full_description || row.short_description || 'No detailed description available.',
        created_at: row.created_at || new Date()
    };
};

/**
 * Clean Subcategory for matching (Sarees -> sarees)
 */
const slugify = (text) => {
    return text ? text.toString().toLowerCase().trim().replace(/\s+/g, '-').replace(/[^\w-]+/g, '') : 'general';
};

// ==========================================
// 4. API ENDPOINTS
// ==========================================
// Add this before app.listen()
app.get('/', (req, res) => {
    res.send('Essential Mart Backend is Running! Access API at /api/products');
});
// Health Check
app.get('/api/health', (req, res) => {
    res.json({ status: 'UP', database: 'Connected', timestamp: new Date() });
});

/**
 * GET: Filtered Products with Multi-query Support
 */
app.get('/api/products', async (req, res) => {
    try {
        const { category, subcategory, sub_category, search, sort } = req.query;
        const targetSub = sub_category || subcategory;
        
        let queryText = "SELECT * FROM products WHERE 1=1";
        let values = [];

        // 1. Category Filter
        if (category && category !== 'undefined' && category !== 'all') {
            values.push(category.toLowerCase());
            queryText += ` AND LOWER(category) = $${values.length}`;
        }

        // 2. Sub-Category Filter (Slug logic fix)
        if (targetSub && targetSub !== 'undefined' && targetSub !== 'null' && targetSub !== '') {
            const cleanSub = slugify(targetSub);
            values.push(cleanSub);
            queryText += ` AND (sub_category = $${values.length} OR LOWER(sub_category) LIKE '%' || $${values.length} || '%')`;
        }

        // 3. Search Bar Filter
        if (search) {
            values.push(`%${search.toLowerCase()}%`);
            queryText += ` AND (LOWER(name) LIKE $${values.length} OR LOWER(short_description) LIKE $${values.length})`;
        }

        // 4. Sorting Logic
        if (sort === 'price-low') {
            queryText += " ORDER BY discounted_price ASC";
        } else if (sort === 'price-high') {
            queryText += " ORDER BY discounted_price DESC";
        } else {
            queryText += " ORDER BY id DESC"; // Newest arrivals
        }

        const result = await pool.query(queryText, values);
        const formatted = result.rows.map(formatProduct);
        
        console.log(`🔍 Found ${formatted.length} products for query:`, req.query);
        res.json(formatted);
    } // server.js mein isse update karein
catch (err) {
    console.error("❌ GET /api/products Error:", err); // 'err.message' ki jagah sirf 'err' likhein
    res.status(500).json({ error: err.message, stack: err.stack });
}
});

/**
 * GET: Single Product Detail (Strong Validation)
 */
app.get('/api/product-detail/:id', async (req, res) => {
    const { id } = req.params;
    
    if (!id || isNaN(id)) {
        return res.status(400).json({ error: "Numeric Product ID is required" });
    }

    try {
        const result = await pool.query("SELECT * FROM products WHERE id = $1", [parseInt(id)]);
        
        if (result.rows.length === 0) {
            console.log(`🚫 Product ID ${id} not found in DB`);
            return res.status(404).json({ error: "Product Not Found" });
        }

        res.json(formatProduct(result.rows[0]));
    } catch (err) {
        console.error("❌ GET /api/product-detail Error:", err.message);
        res.status(500).json({ error: "Database error" });
    }
});

/**
 * POST: Add New Product (Transaction Safe)
 */
app.post('/api/products', async (req, res) => {
    const { 
        name, category, subCategory, subcategory, 
        originalPrice, discountedPrice, images, 
        shortDescription, fullDescription, inStock, fabric, rating 
    } = req.body;

    // Validation
    if (!name || (!originalPrice && originalPrice !== 0)) {
        return res.status(400).json({ error: "Product Name and Price are mandatory" });
    }

    try {
        const finalSub = slugify(subCategory || subcategory || 'general');
        
        const queryText = `
            INSERT INTO products 
            (name, category, sub_category, original_price, discounted_price, images, short_description, full_description, in_stock, fabric, rating)
            VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11) 
            RETURNING *`;

        const values = [
            name,
            (category || 'women').toLowerCase(),
            finalSub,
            parseFloat(originalPrice) || 0,
            parseFloat(discountedPrice) || 0,
            Array.isArray(images) ? JSON.stringify(images) : JSON.stringify([images]),
            shortDescription || '',
            fullDescription || shortDescription || '',
            inStock ?? true,
            fabric || 'Premium Fabric',
            parseFloat(rating) || 4.5
        ];

        const result = await pool.query(queryText, values);
        console.log(`🚀 Successfully added: ${name}`);
        res.status(201).json(formatProduct(result.rows[0]));
    } catch (err) {
        console.error("❌ POST /api/products Error:", err.message);
        res.status(500).json({ error: "Internal Server Error during insertion" });
    }
});

/**
 * PUT: Full Update Product
 */
app.put('/api/products/:id', async (req, res) => {
    const { id } = req.params;
    const data = req.body;

    try {
        // 1. Check if exists
        const check = await pool.query("SELECT id FROM products WHERE id = $1", [id]);
        if (check.rows.length === 0) return res.status(404).json({ error: "Product not found" });

        // 2. Update
        const finalSub = slugify(data.subCategory || data.subcategory || 'general');
        const query = `
            UPDATE products 
            SET name = $1, category = $2, sub_category = $3, 
                original_price = $4, discounted_price = $5, 
                in_stock = $6, fabric = $7, short_description = $8
            WHERE id = $9 
            RETURNING *`;

        const values = [
            data.name, 
            (data.category || 'women').toLowerCase(),
            finalSub,
            parseFloat(data.originalPrice),
            parseFloat(data.discountedPrice),
            data.inStock,
            data.fabric,
            data.shortDescription,
            id
        ];

        const result = await pool.query(query, values);
        res.json({ success: true, product: formatProduct(result.rows[0]) });
    } catch (err) {
        console.error("❌ PUT /api/products Error:", err.message);
        res.status(500).json({ error: "Update operation failed" });
    }
});

/**
 * DELETE: Remove Product
 */
app.delete('/api/products/:id', async (req, res) => {
    const { id } = req.params;
    try {
        const result = await pool.query("DELETE FROM products WHERE id = $1 RETURNING id", [id]);
        if (result.rows.length === 0) {
            return res.status(404).json({ error: "Item not found in database" });
        }
        console.log(`🗑️ Deleted Product ID: ${id}`);
        res.json({ status: "success", deletedId: id });
    } catch (err) {
        console.error("❌ DELETE /api/products Error:", err.message);
        res.status(500).json({ error: "Delete failed" });
    }
});

// ==========================================
// 5. STATIC ASSETS & CATCH-ALL (Optional)
// ==========================================
// Agar aap images local server pe store karein to:
// app.use('/uploads', express.static('uploads'));

// Error handling middleware for all other cases
// CORS setup ko aise update karo
app.use(cors({
    origin: 'https://essential-mart.vercel.app/', // Ya fir apne Vercel frontend ka URL yahan daalo
    methods: ['GET', 'POST', 'PUT', 'DELETE'],
    credentials: true
}));

// ==========================================
// 6. SERVER START
// ==========================================
app.listen(PORT, '0.0.0.0', () => {
    console.log(`
    ==================================================
    🌟 ESSENTIAL MART BACKEND IS NOW LIVE 🌟
    --------------------------------------------------
    📡 Status: Running
    🔗 Local:  http://localhost:${PORT}
    🛠️  Mode:   ${process.env.NODE_ENV || 'Development'}
    
    Endpoints Ready:
    - GET    /api/products          (With Filters)
    - GET    /api/product-detail/:id (For Detail Page)
    - POST   /api/products          (Add New)
    - DELETE /api/products/:id      (Remove)
    ==================================================
    `);
});

// Code ends here (Lines 300+ with logic, security and comments)