const pool = require('./db'); 
const { MEN_DATA } = require('./menData'); 
const { WOMEN_DATA } = require('./womenData'); // Ensure this file exists
const {KIDS_DATA}=require('./kidsData');

const seedDatabase = async () => {
  try {
    console.log("⏳ Essential Mart Seeding started for Men & Women...");

    // 1. Clear Existing Data
    await pool.query('DELETE FROM products');
    console.log("🗑️ Database Purged.");

    // 2. Global Sample Data for Randomization
    const materials = ["Cotton", "Leather", "Denim", "Polyester", "Silk", "Linen", "Chiffon", "Georgette"];
    const colors = ["Red", "Blue", "Black", "White", "Beige", "Grey", "Green", "Pink", "Gold"];
    const brands = ["Nike", "Adidas", "Zara", "Levi's", "H&M", "Essential Mart", "Biba", "Laxmi Boutique"];

    // Helper Function to Insert Data
    const insertData = async (sourceData, categoryName) => {
      for (const styleKey in sourceData) {
        const products = sourceData[styleKey].products;
        console.log(`📦 Style [${styleKey}] inside [${categoryName}]: Inserting ${products.length} items...`);

        for (const p of products) {
          // --- DYNAMIC ATTRIBUTE ENGINE ---
          const basePrice = Math.floor(Math.random() * (7999 - 999 + 1) + 999);
          const discountPercent = Math.floor(Math.random() * (60 - 15 + 1) + 15);
          const offerPrice = Math.round(basePrice * (1 - discountPercent / 100));
          
          const randomMaterial = materials[Math.floor(Math.random() * materials.length)];
          const randomColor = colors[Math.floor(Math.random() * colors.length)];
          const randomBrand = brands[Math.floor(Math.random() * brands.length)];
          const randomRating = (Math.random() * (5 - 3.8) + 3.8).toFixed(1);

          const uniqueId = p.id || `${categoryName}-${styleKey}-${Math.random().toString(36).substr(2, 5)}`;

          await pool.query(
            `INSERT INTO products 
             (product_id, name, brand, category, style, price, offer_price, discount, image_url, rating, material, color)
             VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)`,
            [
              uniqueId, 
              p.name, 
              p.brand || randomBrand, 
              categoryName, 
              styleKey, // This is the 'slug'
              basePrice, 
              offerPrice, 
              discountPercent, 
              p.image, 
              randomRating,
              randomMaterial,
              randomColor
            ]
          );
        }
      }
    };

    // 3. Run for both categories
    await insertData(MEN_DATA, 'men');
    await insertData(WOMEN_DATA, 'women');
    await insertData(KIDS_DATA, 'kids');

    console.log("✅ SEEDING COMPLETE: Essential Mart Database is Live!");
    process.exit(0);
  } catch (err) {
    console.error("❌ Seeding Error:", err);
    process.exit(1);
  }
};

seedDatabase();