// --- 1. KIDS IMAGE ASSETS ---
const IMAGES = {
  tshirts: ['https://i.pinimg.com/1200x/4d/7e/55/4d7e55ed7bfe41bd88ff0270aecc1a2e.jpg',
    'https://i.pinimg.com/1200x/b6/1e/ab/b61eab1ea728da8b0682935491e255dd.jpg',
    'https://i.pinimg.com/736x/81/f1/09/81f1095f9c9fa7d7f5ffaae29d6856c7.jpg',
    'https://i.pinimg.com/1200x/4e/3f/48/4e3f485da189adb2f22afa711b7b2893.jpg',
    'https://i.pinimg.com/1200x/73/bd/d9/73bdd9436d963d9e65a0d7990d100be8.jpg',
    'https://i.pinimg.com/736x/d5/a1/1b/d5a11bbbdea46053496582531dcce185.jpg'
  ],
  shirts: ["https://i.pinimg.com/736x/03/24/10/0324103537eed88bf8d8abc3322c9a91.jpg",
    'https://i.pinimg.com/1200x/17/59/8c/17598c63e4c799c6107fb1008cfe156b.jpg',
    'https://i.pinimg.com/1200x/50/4e/30/504e3099db11359fdb07c6ba86c08c5e.jpg',
    'https://i.pinimg.com/1200x/e7/35/97/e73597c646d0f80d61a1197234d258e5.jpg',
    'https://i.pinimg.com/736x/ac/0e/bf/ac0ebf31ac20dd81e40de037832bd75d.jpg'
  ],
  jeans: ["https://i.pinimg.com/736x/2a/51/8a/2a518a737715e8c12ad18e558ac66693.jpg",
    'https://i.pinimg.com/736x/92/4a/e6/924ae69b70742c2a684ce84301123a53.jpg',
    'https://i.pinimg.com/736x/4f/bd/39/4fbd391a841e226bd9453bd3916ebd80.jpg',
    'https://i.pinimg.com/736x/81/2d/d3/812dd307b5d56be8ff01646f4ac181f6.jpg',
    'https://i.pinimg.com/1200x/ee/7f/e5/ee7fe5b01177cb26b928ba99e8544f28.jpg'
  ],
  shorts: ["https://i.pinimg.com/736x/8.jpg", "https://i.pinimg.com/736x/9.jpg"],
  dresses: ["https://i.pinimg.com/736x/10.jpg", "https://i.pinimg.com/736x/11.jpg"],
  tops: ["https://i.pinimg.com/736x/12.jpg", "https://i.pinimg.com/736x/13.jpg"],
  leggings: ["https://i.pinimg.com/736x/14.jpg", "https://i.pinimg.com/736x/15.jpg"],
  skirts: ["https://i.pinimg.com/736x/16.jpg", "https://i.pinimg.com/736x/17.jpg"],
  diapers: ["https://i.pinimg.com/736x/18.jpg", "https://i.pinimg.com/736x/19.jpg"],
  bath: ["https://i.pinimg.com/736x/20.jpg", "https://i.pinimg.com/736x/21.jpg"],
  feeding: ["https://i.pinimg.com/736x/22.jpg", "https://i.pinimg.com/736x/23.jpg"]
};

// --- 2. GENERATORS ---
const generateProducts = (prefix, items, images) => {
  return Array.from({ length: 20 }, (_, i) => ({
    id: `${prefix}-${i + 1}`,
    name: `${items[i % items.length]} Kids Wear`,
    brand: "Essential Kids",
    price: 999,
    offerPrice: 499,
    discount: 50,
    rating: 4.3,
    image: images[i % images.length]
  }));
};

// --- 3. DATA STRUCTURE ---
const KIDS_DATA = {
  "tshirts": {
    title: "Boys T-Shirts",
    products: generateProducts("kid-ts", ["Printed Tee", "Cartoon Tee"], IMAGES.tshirts)
  },
  "shirts": {
    title: "Boys Shirts",
    products: generateProducts("kid-sh", ["Checked Shirt", "Denim Shirt"], IMAGES.shirts)
  },
  "jeans": {
    title: "Boys Jeans",
    products: generateProducts("kid-je", ["Slim Fit Jeans", "Regular Fit"], IMAGES.jeans)
  },
  "shorts": {
    title: "Boys Shorts",
    products: generateProducts("kid-sho", ["Cotton Shorts", "Sports Shorts"], IMAGES.shorts)
  },
  "dresses": {
    title: "Girls Dresses",
    products: generateProducts("kid-dr", ["Party Dress", "Frock"], IMAGES.dresses)
  },
  "tops": {
    title: "Girls Tops",
    products: generateProducts("kid-top", ["Casual Top", "Fancy Top"], IMAGES.tops)
  },
  "leggings": {
    title: "Girls Leggings",
    products: generateProducts("kid-leg", ["Cotton Leggings", "Stretch Fit"], IMAGES.leggings)
  },
  "skirts": {
    title: "Girls Skirts",
    products: generateProducts("kid-sk", ["Mini Skirt", "Pleated Skirt"], IMAGES.skirts)
  },
  "diapers": {
    title: "Diapers",
    products: generateProducts("kid-dia", ["Soft Diapers", "Premium Care"], IMAGES.diapers)
  },
  "bath": {
    title: "Bath Time",
    products: generateProducts("kid-bath", ["Baby Soap", "Shampoo"], IMAGES.bath)
  },
  "feeding": {
    title: "Feeding",
    products: generateProducts("kid-feed", ["Feeding Bottle", "Baby Bowl"], IMAGES.feeding)
  }
};

module.exports = { KIDS_DATA }; // <-- CRITICAL: For Node.js CommonJS