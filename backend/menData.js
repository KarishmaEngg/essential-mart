// --- 1. IMAGE ASSETS (Expanded for Variety) ---
const IMAGES = {
  kurtas: [
    "https://i.pinimg.com/736x/1e/82/93/1e829340d7e1f07cd10d694df9068613.jpg",
    "https://i.pinimg.com/1200x/6f/ef/92/6fef92771cbd653bcf3a8c096f197aeb.jpg",
    "https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg",
    "https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg",
    "https://i.pinimg.com/736x/6b/31/41/6b3141ec49702e5fb5f662b783e1498f.jpg"
  ],
  sherwanis: [
    "https://i.pinimg.com/1200x/20/e6/9a/20e69ac3d4660f57cd76c1d03529beac.jpg",
    "https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg",
    "https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg",
    "https://i.pinimg.com/736x/d3/a9/82/d3a9824f0b87e464d8d6013ee678bd4d.jpg",
    "https://i.pinimg.com/736x/16/c1/45/16c14542260d743c64c13c280a382341.jpg"
  ],
  shirts: [
    "https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg",
    "https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg",
    "https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg",
    "https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg",
    "https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg"
  ],
  jeans: [
    "https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=1000",
    "https://i.pinimg.com/1200x/1c/e0/53/1ce053123bfaf353dcd5e51611e539ea.jpg",
    "https://i.pinimg.com/736x/56/47/ac/5647ac6146a0b8b9ef269fb7a7ddf5db.jpg",
    "https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1000",
    "https://images.unsplash.com/photo-1582552938357-32b906df40cb?q=80&w=1000"
  ],
  tshirts: [
    "https://i.pinimg.com/736x/a2/70/dd/a270dd7b6259fefd7ad1e022af073a5c.jpg",
    "https://i.pinimg.com/1200x/72/45/42/7245428dc23a052bd63728c3569f732a.jpg",
    "https://i.pinimg.com/1200x/59/76/2d/59762db04d50442fe2119a8334b7c923.jpg",
    "https://i.pinimg.com/1200x/18/18/86/181886b981551a8254c6e65dcc615d90.jpg",
    "https://i.pinimg.com/736x/aa/97/37/aa973704d33cadbe9a7f626563f22265.jpg",
    "https://i.pinimg.com/736x/ca/93/ce/ca93ceea168c3db8b4cf644dd4e9eab1.jpg",
  ],
  boots: [
    "https://i.pinimg.com/1200x/f3/36/c9/f336c9aeef0764005b964a33e289a388.jpg",
    "https://i.pinimg.com/1200x/4d/c0/e5/4dc0e5d18904304650e9c0f71bc73d97.jpg",
    "https://img.fantaskycdn.com/617ee88610b32e5463de723069c14f96_1024x.jpeg",
    "https://i.pinimg.com/736x/e8/30/c4/e830c4943bb1b74d724faf0821942836.jpg",
    "https://i.pinimg.com/736x/9f/b3/67/9fb367b422f6c0974f9c7745e95c37f7.jpg",
    "https://i.pinimg.com/736x/16/9d/d5/169dd5438a3087ee4a9258928b7d3d34.jpg",
    "https://i.pinimg.com/736x/f4/28/77/f4287724aaf70e117b619ef58562a45e.jpg",
    "https://i.pinimg.com/736x/24/9e/ff/249effd901edfa98229cf1689dabc0b2.jpg",
   
  ],
  shorts: [
    "https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000",
    "https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000",
    "https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000"
  ],
  stoles: [
    "https://i.pinimg.com/1200x/4e/5b/d0/4e5bd0ec99b3bdc2edf0f366f69045a5.jpg",
    "https://i.pinimg.com/736x/af/3f/9c/af3f9c1a765d3344810c5039974471d1.jpg",
    "https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?q=80&w=1000",
    "https://i.pinimg.com/736x/9a/a5/b7/9aa5b70f3a087f26bcbe3fe23c8ff1ea.jpg",
    "https://i.pinimg.com/736x/2e/2f/05/2e2f05a48e5dd463f206ad46ac3ff4e6.jpg",
    "https://i.pinimg.com/736x/ad/71/9f/ad719fac840ee7ca461cabb30d1e6c12.jpg",
    "https://i.pinimg.com/736x/52/a1/62/52a1629144480817f49388546bda2abd.jpg",
  ],
  wallets: [
    "https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000",
    "https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg",
    "https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg",
    "https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg",
  ],
  watches: [
    "https://i.pinimg.com/736x/8e/b7/9c/8eb79c31b5710dcf92dc1cf816fcb772.jpg",
    "https://i.pinimg.com/736x/07/9d/2b/079d2b8d1dccb47788c5345c887d2641.jpg",
    "https://i.pinimg.com/736x/d5/6f/5e/d56f5e4e2111a65d0ee8533dfe1719f6.jpg",
    "https://i.pinimg.com/736x/88/dc/1c/88dc1c3ab7fc882fd7d6e18fedb1efac.jpg",
    "https://i.pinimg.com/1200x/2d/b1/a4/2db1a465eebc01da388fadb76db828cd.jpg",
    "https://i.pinimg.com/736x/3e/fc/54/3efc548620fefbd99a21aa8ca3003f84.jpg",
    "https://i.pinimg.com/736x/37/68/1f/37681fce8fab071dd3e6a16e62acd96c.jpg",
    "https://i.pinimg.com/1200x/ef/05/54/ef0554ab4e35893d6481a0d41798dacd.jpg",
    "https://i.pinimg.com/736x/f1/ba/3b/f1ba3bc0104b740b8c1fe8c346984b78.jpg",
    "https://i.pinimg.com/736x/06/01/eb/0601ebb91eed13f01d5f035ef0dcb6bf.jpg",
  ],
  sunglasses: [
   
    "https://i.pinimg.com/1200x/72/5e/3e/725e3e39d6d2ba45159a1f4eca80fbba.jpg",
    "https://i.pinimg.com/1200x/3b/ad/72/3bad7214ae3f39519951dbe496ad9d0d.jpg",
    "https://i.pinimg.com/736x/89/38/b6/8938b654166e6e033edbf27cf47078c4.jpg",
    "https://i.pinimg.com/1200x/bc/17/8c/bc178ca37c1b07c8dd1f03cc317e3940.jpg",
    "https://i.pinimg.com/736x/f4/b9/88/f4b988edfe12a5792aba609f47966747.jpg",
    "https://i.pinimg.com/736x/81/e6/54/81e654781cfcb4149b9710f26fd9a734.jpg",
    "https://i.pinimg.com/736x/44/e0/75/44e07551655c9b6948dd345478148378.jpg",
    "https://i.pinimg.com/1200x/b5/7d/9b/b57d9b6d2389cb602648c8cbfda23938.jpg",
    "https://i.pinimg.com/736x/9d/1f/b7/9d1fb7210798cb6584f0b82b14c9dc58.jpg",
    "https://i.pinimg.com/1200x/19/e2/e6/19e2e6dc31d89f8d5f29aeb56621a9b7.jpg",
  ],
  trackpants: [
   "https://i.pinimg.com/736x/e4/9e/53/e49e538bd31ced448c8df19aaf02f9a7.jpg",
   "https://i.pinimg.com/736x/80/a9/db/80a9dbbd6bfd8c245c543e9aef7c9a83.jpg",
   "https://i.pinimg.com/736x/78/db/08/78db085cbaec0f217f46ac1e71bd7a1b.jpg",
   "https://i.pinimg.com/736x/3f/0d/5c/3f0d5cdba55d1faef2fc811efac08b63.jpg",
   "https://i.pinimg.com/1200x/99/16/5a/99165a6aa6f69bc429b30bc7e3904ffd.jpg",
   "https://i.pinimg.com/1200x/f8/f0/b6/f8f0b6b4063395e7c70f6a8a1d7f07a2.jpg",
   "https://i.pinimg.com/1200x/eb/08/3d/eb083d68e1f4640964120fb84e77a365.jpg",
   'https://i.pinimg.com/1200x/d2/9f/1f/d29f1f3fff2a336ce72151b5ce87c2cd.jpg',
   "https://i.pinimg.com/1200x/4d/07/da/4d07daecb91a8584041a1a4d7e5a3583.jpg",
   "https://i.pinimg.com/736x/1e/92/94/1e92940b1f88ad857ae9ce92899a2e45.jpg",
   "https://i.pinimg.com/1200x/7d/2b/f5/7d2bf5f75cdcd6b288730819e5221ebd.jpg",
   "https://i.pinimg.com/736x/98/76/5c/98765c5787d36f749da3e079738f0c1f.jpg",
   "https://img.fantaskycdn.com/387218c027a873fbe1522093de808fde_1024x.jpeg",
  ],
  belts:[
    "https://i.pinimg.com/1200x/96/c2/9e/96c29e204996f879ad9936d00b8abf7e.jpg",
    "https://i.pinimg.com/1200x/47/7c/0d/477c0d3b9ce963d7a9645220e0173698.jpg",
    "https://i.pinimg.com/1200x/dd/a1/0a/dda10afb218426f23e31de6afb4e9102.jpg",
    "https://i.pinimg.com/1200x/43/11/cd/4311cd585be5bc07d39048a9acc2f32b.jpg",
    "https://i.pinimg.com/1200x/ba/5f/1c/ba5f1cab6a8777d8cba2785201e0356d.jpg",
    "https://i.pinimg.com/736x/6f/61/d2/6f61d28fd4604d83d968a8749e8995df.jpg",
    "https://i.pinimg.com/1200x/89/82/1e/89821eae08d467d049c44cfed6fbf85b.jpg"
  ],
  sportsshoes:[
    "https://i.pinimg.com/1200x/d8/1d/e8/d81de8afad05332cff3472afd15541a5.jpg",
    "https://i.pinimg.com/1200x/06/6d/7c/066d7ca3ec8844d5ba6bde4b4792dfc4.jpg",
    "https://i.pinimg.com/1200x/ef/71/00/ef71005b04e59a74d1c9f8396d0b4895.jpg",
    "https://i.pinimg.com/736x/6c/db/3b/6cdb3b313d0db56ebc52f5feb602e8f2.jpg",
    "https://i.pinimg.com/736x/bf/dd/c7/bfddc7598c022475ac19f976163195df.jpg",
    "https://i.pinimg.com/736x/f3/c6/88/f3c6883a105fb06145e63a4e09c0d974.jpg",
    "https://i.pinimg.com/736x/f1/94/2a/f1942ac7525b0ea732cb5bdf0f3cc2f6.jpg",
    "https://i.pinimg.com/736x/9f/ac/d8/9facd898902d4d27f5c8c94fe45abe29.jpg",
    "https://i.pinimg.com/736x/6c/62/33/6c623319c3a469448c7900ddba697202.jpg",
    "https://i.pinimg.com/736x/69/95/d4/6995d407677a61da55b724e2a8ac61e6.jpg",
    "https://i.pinimg.com/736x/d3/5d/06/d35d06a1ced0d1c8f1e81c5bd1b5c05b.jpg",
  ],
  casualshoes:[
    "https://i.pinimg.com/1200x/22/4f/30/224f30147751f925a1f34460da1541ea.jpg",
    "https://i.pinimg.com/736x/8c/6c/eb/8c6ceb62748479212899ed90da6ab7b2.jpg",
    "https://i.pinimg.com/736x/cf/7e/6a/cf7e6acded8c859d5f2c8cf0493b94c1.jpg",
    "https://img.fantaskycdn.com/02179cfa988877ab500318f1a0c82136_1024x.jpeg",
    "https://i.pinimg.com/736x/14/af/e7/14afe7c9e68bf4a6175d06d62e202422.jpg",
    "https://i.pinimg.com/736x/7b/da/36/7bda361609d72f1bc1bf0fc26ee66457.jpg",

    "https://i.pinimg.com/1200x/59/5b/c7/595bc713888084f6667c4cf01e5bab32.jpg",
    "https://i.pinimg.com/1200x/dd/c3/22/ddc322ff68c4ca9a0a38a15535888a7c.jpg",
    "https://i.pinimg.com/1200x/47/aa/2e/47aa2efed6c26887236cac5362352254.jpg"
  ]
};



// --- 2. DATA GENERATORS (Optimized for Unique Images) ---

const generateKurtas = () => {
  const brands = ["Essential Mart", "FabIndia", "Manyavar", "Snitch", "Ethnix"];
  const lengths = ["Short Kurta", "Knee Length", "Long Kurta", "Pathani Style"];
  const fabrics = ["Pure Cotton", "Raw Silk", "Khadi Linen", "Chanderi", "Lucknowi"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `kurta-${i + 1}`,
    name: `${fabrics[i % 5]} ${lengths[i % 4]} Designer Edition`,
    brand: brands[i % 5],
    length: lengths[i % 4],
    fabric: fabrics[i % 5],
    price: 2999, offerPrice: 1499, discount: 50, rating: 4.5,
    image: IMAGES.kurtas[i % IMAGES.kurtas.length]
  }));
};

const generateBelts = () => {
    const brands = ["Hidesign", "Snitch", "Zara", "Essential Mart"];
    const styles = ["Leather Belt", "Canvas Belt", "Braided Belt", "Reversible Belt"];
    const materials = ["Leather", "Canvas", "Synthetic"];
    return Array.from({ length: 40 }, (_, i) => ({
        id: `belt-${i + 1}`,
        name: `${styles[i % 4]} in ${materials[i % 3]}`,
        brand: brands[i % 4],
        style: styles[i % 4],
        material: materials[i % 3],
        price: 1499, offerPrice: 749, discount: 50, rating: 4.4,
        image: IMAGES.belts[i % IMAGES.belts.length]
    }));
};


const generateShirts = () => {
  const brands = ["Essential Mart", "Zara", "H&M", "Snitch", "Levi's"];
  const styles = ["Slim Fit", "Oversized", "Regular Fit", "Mandarin Collar"];
  const fabrics = ["Cotton", "Linen", "Denim", "Satin"];
  return Array.from({ length: 50 }, (_, i) => ({
    id: `shirt-${i + 1}`,
    name: `${styles[i % 4]} ${fabrics[i % 4]} Premium Shirt`,
    brand: brands[i % 5],
    style: styles[i % 4],
    fabric: fabrics[i % 4],
    price: 1999, offerPrice: 999, discount: 50, rating: 4.2,
    image: IMAGES.shirts[i % IMAGES.shirts.length]
  }));
};

const generateJeans = () => {
  const brands = ["Levi's", "Snitch", "Zara", "Essential Mart", "H&M"];
  const fits = ["Straight Fit", "Slim Fit", "Bootcut", "Baggy", "Skinny"];
  const colors = ["Deep Blue", "Midnight Black", "Grey", "Light Wash"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `jeans-${i + 1}`,
    name: `${colors[i % 4]} ${fits[i % 5]} Premium Denim`,
    brand: brands[i % 5],
    fit: fits[i % 5],
    color: colors[i % 4],
    price: 3999, offerPrice: 1999, discount: 50, rating: 4.4,
    image: IMAGES.jeans[i % IMAGES.jeans.length]
  }));
};

const generateTshirts = () => {
  const brands = ["Levi's", "Snitch", "Zara", "Essential Mart", "H&M"];
  const styles = ["Polo", "V-Neck", "Round Neck", "Henley"];
  const fabrics = ["Cotton", "Linen", "Blended"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `tshirt-${i + 1}`,
    name: `${styles[i % 4]} ${fabrics[i % 3]} Tee`,
    brand: brands[i % 5],
    style: styles[i % 4],
    fabric: fabrics[i % 3],
    price: 1499, offerPrice: 799, discount: 47, rating: 4.1,
    image: IMAGES.tshirts[i % IMAGES.tshirts.length]
  }));
};

const generateBoots = () => {
  const brands = ["Timberland", "Snitch", "Zara", "Essential Mart"];
  const styles = ["Chelsea Boots", "Combat Boots", "Chukka Boots", "Work Boots"];
  const materials = ["Leather", "Suede", "Synthetic"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `boot-${i + 1}`,
    name: `${styles[i % 4]} ${materials[i % 3]} Boot`,
    brand: brands[i % 4],
    style: styles[i % 4],
    material: materials[i % 3],
    price: 4999, offerPrice: 2999, discount: 40, rating: 4.6,
    image: IMAGES.boots[i % IMAGES.boots.length]
  }));
};

const generateshortsand3 = () => {
  const brands = ["Levi's", "Snitch", "Zara", "Essential Mart"];
  const styles = ["Cargo Shorts", "Denim Shorts", "Chino Shorts", "3/4ths"];
  const fabrics = ["Cotton", "Linen", "Denim"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `shorts-${i + 1}`,
    name: `${styles[i % 4]} ${fabrics[i % 3]}`,
    brand: brands[i % 4],
    style: styles[i % 4],
    fabric: fabrics[i % 3],
    price: 1999, offerPrice: 999, discount: 50, rating: 4.3,
    image: IMAGES.shorts[i % IMAGES.shorts.length]
  }));
};

const generateStoles = () => {
  const brands = ["Manyavar", "Sabyasachi", "Anita Dongre", "Ethnix"];
  const styles = ["Embroidered Stole", "Silk Stole", "Banarasi Stole", "Chanderi Stole"];
  const fabrics = ["Silk", "Cotton", "Chiffon", "Georgette"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `stole-${i + 1}`,
    name: `${styles[i % 4]} in ${fabrics[i % 4]}`,
    brand: brands[i % 4],
    style: styles[i % 4],
    fabric: fabrics[i % 4],
    price: 999, offerPrice: 499, discount: 50, rating: 4.5,
    image: IMAGES.stoles[i % IMAGES.stoles.length]
  }));
};

const generateWallets = () => {
  const brands = ["Hidesign", "Snitch", "Zara", "Essential Mart"];
  const styles = ["Bifold Wallet", "Trifold Wallet", "Money Clip", "Card Holder"];
  const materials = ["Leather", "Canvas", "Synthetic"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `wallet-${i + 1}`,
    name: `${styles[i % 4]} in ${materials[i % 3]}`,
    brand: brands[i % 4],
    style: styles[i % 4],
    material: materials[i % 3],
    price: 1999, offerPrice: 999, discount: 50, rating: 4.4,
    image: IMAGES.wallets[i % IMAGES.wallets.length]
  }));
};

const generateWatches = () => {
  const brands = ["Fossil", "Snitch", "Zara", "Essential Mart"];
  const styles = ["Analog Watch", "Digital Watch", "Chronograph", "Smartwatch"];
  const materials = ["Leather Strap", "Metal Strap", "Silicone Strap"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `watch-${i + 1}`,
    name: `${styles[i % 4]} with ${materials[i % 3]}`,
    brand: brands[i % 4],
    style: styles[i % 4],
    material: materials[i % 3],
    price: 4999, offerPrice: 2499, discount: 50, rating: 4.5,
    image: IMAGES.watches[i % IMAGES.watches.length]
  }));
};

const generateSunglasses = () => {
  const brands = ["Ray-Ban", "Snitch", "Zara", "Essential Mart"];
  const styles = ["Aviator", "Wayfarer", "Round", "Clubmaster"];
  const materials = ["Metal Frame", "Plastic Frame", "Wooden Frame"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `sunglasses-${i + 1}`,
    name: `${styles[i % 4]} with ${materials[i % 3]}`,
    brand: brands[i % 4],
    style: styles[i % 4],
    material: materials[i % 3],
    price: 2999, offerPrice: 1499, discount: 50, rating: 4.3,
    image: IMAGES.sunglasses[i % IMAGES.sunglasses.length]
  }));
};

const generateTrackpants = () => {
  const brands = ["Nike", "Adidas", "Puma", "Essential Mart"];
  const styles = ["Athletic Track Pants", "Casual Joggers", "Compression Pants"];
  const fabrics = ["Cotton", "Polyester", "Blended"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `trackpants-${i + 1}`,
    name: `${styles[i % 3]} ${fabrics[i % 3]}`,
    brand: brands[i % 4],
    style: styles[i % 3],
    fabric: fabrics[i % 3],
    price: 2499, offerPrice: 1249, discount: 50, rating: 4.2,
    image: IMAGES.trackpants[i % IMAGES.trackpants.length]
  }));
};
const generateSherwanis = () => {
    const brands = ["Manyavar", "Tasva", "Sabyasachi", "Anita Dongre"];
    const styles = ["Indo-Western", "Classic Sherwani", "Jodhpuris", "Achkan"];
    const fabrics = ["Silk Jamawar", "Velvet", "Banarasi Silk", "Lucknowi Georgette"];
    return Array.from({ length: 40 }, (_, i) => ({
        id: `sherwani-${i + 1}`,
        name: `${fabrics[i % 4]} ${styles[i % 4]} Set`,
        brand: brands[i % 4],
        style: styles[i % 4],
        fabric: fabrics[i % 4],
        price: 24999, offerPrice: 14999, discount: 40, rating: 4.8,
        image: IMAGES.sherwanis[i % IMAGES.sherwanis.length]
    }));
};
const generateSportsShoes = () => {
    const brands = ["Nike", "Adidas", "Puma", "Essential Mart"];
    const styles = ["Running Shoes", "Training Shoes", "Basketball Shoes", "Soccer Cleats"];    
    const materials = ["Mesh Upper", "Leather Upper", "Synthetic Upper"];
    return Array.from({ length: 40 }, (_, i) => ({
        id: `sportsshoes-${i + 1}`,
        name: `${styles[i % 4]} with ${materials[i % 3]}`,
        brand: brands[i % 4],
        style: styles[i % 4],
        material: materials[i % 3],
        price: 4999, offerPrice: 2499, discount: 50, rating: 4.5,
        image: IMAGES.sportsshoes[i % IMAGES.sportsshoes.length]
    }));
};
const generateCasualShoes = () => {
    const brands = ["Nike", "Adidas", "Puma", "Essential Mart"];
    const styles = ["Loafers", "Slip-Ons", "Boat Shoes", "Espadrilles"];
    const materials = ["Canvas Upper", "Leather Upper", "Synthetic Upper"];
    return Array.from({ length: 40 }, (_, i) => ({
        id: `casualshoes-${i + 1}`,
        name: `${styles[i % 4]} with ${materials[i % 3]}`,
        brand: brands[i % 4],
        style: styles[i % 4],
        material: materials[i % 3],
        price: 3999, offerPrice: 1999, discount: 50, rating: 4.3,
        image: IMAGES.casualshoes[i % IMAGES.casualshoes.length]
    }));
};



// --- 3. MASTER DATA EXPORT ---

export const MEN_DATA = {
  "kurtas": {
    title: "Kurta Lab",
    bannerTitle: "Royal Heritage",
    bannerSubtitle: "Handcrafted Collections",
    bannerImg: "https://images.unsplash.com/photo-1597983073453-ef3661136c42?q=80&w=2000",
    accentColor: "selection:bg-black",
    filterGroups: [
      { id: "fabric", title: "Fabric Type", items: ["Pure Cotton", "Raw Silk", "Khadi Linen", "Chanderi", "Lucknowi"] },
      { id: "length", title: "Kurta Length", items: ["Short Kurta", "Knee Length", "Long Kurta", "Pathani Style"] }
    ],
    maxPrice: 10000,
    products: generateKurtas()
  },
  "sherwani-sets": {
    title: "Sherwani Sets",
    bannerTitle: "Royale Couture",
    bannerSubtitle: "Signature Grooms Edition 2026",
    bannerImg: "https://i.pinimg.com/736x/87/4a/58/874a5840d42676017112440333203f73.jpg",
    accentColor: "selection:bg-amber-200",
    filterGroups: [
      { id: "style", title: "Royale Style", items: ["Indo-Western", "Classic Sherwani", "Jodhpuris", "Achkan"] },
      { id: "fabric", title: "Premium Fabric", items: ["Silk Jamawar", "Velvet", "Banarasi Silk", "Lucknowi Georgette"] }
    ],
    maxPrice: 100000,
    products: generateSherwanis()
  },
  "shirts": {
    title: "Shirts Collection",
    bannerTitle: "Modern Edge",
    bannerSubtitle: "Formal & Casual Essentials",
    bannerImg: "https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?q=80&w=2000",
    accentColor: "selection:bg-blue-100",
    filterGroups: [
      { id: "style", title: "Shirt Style", items: ["Slim Fit", "Oversized", "Regular Fit", "Mandarin Collar"] },
      { id: "fabric", title: "Fabric", items: ["Cotton", "Linen", "Denim", "Satin"] }
    ],
    maxPrice: 5000,
    products: generateShirts()
  },
  "jeans": {
    title: "Denim Studio",
    bannerTitle: "Urban Denims",
    bannerSubtitle: "Perfect Fits for Every Move",
    bannerImg: "https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=2000",
    accentColor: "selection:bg-blue-900",
    filterGroups: [
      { id: "fit", title: "Fit Type", items: ["Straight Fit", "Slim Fit", "Bootcut", "Baggy", "Skinny"] },
      { id: "color", title: "Colors", items: ["Deep Blue", "Midnight Black", "Grey", "Light Wash"] }
    ],
    maxPrice: 8000,
    products: generateJeans()
  },
  "tshirts": {
    title: "T-Shirt Collection",
    bannerTitle: "Casual Comfort",
    bannerSubtitle: "Everyday Essentials",
    bannerImg: "https://images.unsplash.com/photo-1521572163404-54007b038d89?q=80&w=2000",
    accentColor: "selection:bg-red-100",
    filterGroups: [
      { id: "style", title: "T-Shirt Style", items: ["Polo", "V-Neck", "Round Neck", "Henley"] },
      { id: "fabric", title: "Fabric", items: ["Cotton", "Linen", "Blended"] }
    ],
    maxPrice: 3000,
    products: generateTshirts()
  },
  "boots": {
    title: "Boots Collection",
    bannerTitle: "Rugged Elegance",
    bannerSubtitle: "Durable Styles for Every Terrain",
    bannerImg: "https://images.unsplash.com/photo-1517331156700-3c241d2b4d83?q=80&w=2000",
    accentColor: "selection:bg-gray-800",
    filterGroups: [
      { id: "style", title: "Boot Style", items: ["Chelsea Boots", "Combat Boots", "Chukka Boots", "Work Boots"] },
      { id: "material", title: "Material", items: ["Leather", "Suede", "Synthetic"] }
    ],
    maxPrice: 15000,
    products: generateBoots()
  },
  "shorts-and-3": {
    title: "Shorts & 3/4ths",
    bannerTitle: "Summer Vibes",
    bannerSubtitle: "Cool Comfort for Sunny Days",
    bannerImg: "https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=2000",
    accentColor: "selection:bg-green-100",
    filterGroups: [
      { id: "style", title: "Style", items: ["Cargo Shorts", "Denim Shorts", "Chino Shorts", "3/4ths"] },
      { id: "fabric", title: "Fabric", items: ["Cotton", "Linen", "Denim"] }
    ],
    maxPrice: 4000,
    products: generateshortsand3()
  },
  "stoles": {
    title: "Stoles & Dupattas",
    bannerTitle: "Elegant Drapes",
    bannerSubtitle: "Timeless Accessories",
    bannerImg: "https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?q=80&w=2000",
    accentColor: "selection:bg-purple-100",
    filterGroups: [
      { id: "style", title: "Style", items: ["Embroidered Stole", "Silk Stole", "Banarasi Stole", "Chanderi Stole"] },
      { id: "fabric", title: "Fabric", items: ["Silk", "Cotton", "Chiffon", "Georgette"] }
    ],
    maxPrice: 15000,
    products: generateStoles()
  },
  "wallets": {
    title: "Wallets & Accessories",
    bannerTitle: "Handcrafted Carry",
    bannerSubtitle: "Premium Leather Collection",
    bannerImg: "https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=2000",
    accentColor: "selection:bg-yellow-100",
    filterGroups: [
      { id: "style", title: "Wallet Style", items: ["Bifold Wallet", "Trifold Wallet", "Money Clip", "Card Holder"] },
      { id: "material", title: "Material", items: ["Leather", "Canvas", "Synthetic"] }
    ],
    maxPrice: 5000,
    products: generateWallets()
  },
  "watches": {
    title: "Watches & Timepieces",
    bannerTitle: "Timeless Elegance",
    bannerSubtitle: "Classic & Contemporary",
    bannerImg: "https://images.unsplash.com/photo-1524592093825-d0d4d824040a?q=80&w=2000",
    accentColor: "selection:bg-gray-300",
    filterGroups: [
      { id: "style", title: "Watch Style", items: ["Analog Watch", "Digital Watch", "Chronograph", "Smartwatch"] },
      { id: "material", title: "Strap Material", items: ["Leather Strap", "Metal Strap", "Silicone Strap"] }
    ],
    maxPrice: 20000,
    products: generateWatches()
  },
  "sunglasses": {
    title: "Sunglasses & Eyewear",
    bannerTitle: "Shades of Style",
    bannerSubtitle: "Trendy & Classic Frames",
    bannerImg: "https://images.unsplash.com/photo-1511499767350-a1590fdb2863?q=80&w=2000",
    accentColor: "selection:bg-black",
    filterGroups: [
      { id: "style", title: "Sunglasses Style", items: ["Aviator", "Wayfarer", "Round", "Clubmaster"] },
      { id: "material", title: "Frame Material", items: ["Metal Frame", "Plastic Frame", "Wooden Frame"] }
    ],
    maxPrice: 10000,
    products: generateSunglasses()
  },
  "trackpants": {
    title: "Track Pants & Joggers",
    bannerTitle: "Active Comfort",
    bannerSubtitle: "Performance-Driven Fashion",
    bannerImg: "https://images.unsplash.com/photo-1515434126000-961d90ff09db?q=80&w=2000",
    accentColor: "selection:bg-blue-100",
    filterGroups: [
      { id: "style", title: "Style", items: ["Athletic Track Pants", "Casual Joggers", "Compression Pants"] },
      { id: "fabric", title: "Fabric", items: ["Cotton", "Polyester", "Fleece"] }
    ], 
    maxPrice: 5000,
    products: generateTrackpants()
  },
  belts: {
    title: "Belts & Accessories",
    bannerTitle: "Buckle Up in Style",
    bannerSubtitle: "Premium Leather & Canvas Belts",
    bannerImg: "https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?q=80&w=2000",
    accentColor: "selection:bg-brown-100",
    filterGroups: [
        { id: "style", title: "Belt Style", items: ["Leather Belt", "Canvas Belt", "Braided Belt", "Reversible Belt"] },
        { id: "material", title: "Material", items: ["Leather", "Canvas", "Synthetic"] }
    ],
    maxPrice: 3000,
    products: generateBelts()
    },
    sportsshoes: {
        title: "Sports Shoes",
        bannerTitle: "Gear Up for Action",
        bannerSubtitle: "Performance Meets Style",
        bannerImg: "https://img.fantaskycdn.com/e038a07e48309fd9fb7fffd69491dfe9_1024x.jpeg",
        accentColor: "selection:bg-green-100",
        filterGroups: [
            { id: "style", title: "Shoe Style", items: ["Running Shoes", "Training Shoes", "Basketball Shoes", "Soccer Cleats"] },
            { id: "material", title: "Material", items: ["Mesh", "Leather", "Synthetic"] }
        ],
        maxPrice: 10000,
        products: generateSportsShoes()
        },
  casualshoes: {
    title: "Casual Shoes",
    bannerTitle: "Everyday Style",
    bannerSubtitle: "Comfortable & Trendy Footwear",
    bannerImg: "https://i.pinimg.com/1200x/22/4f/30/224f30147751f925a1f34460da1541ea.jpg",
    accentColor: "selection:bg-gray-200",
    filterGroups: [
        { id: "style", title: "Shoe Style", items: ["Loafers", "Derby Shoes", "Oxfords", "Slip-Ons"] },
        { id: "material", title: "Material", items: ["Leather", "Canvas", "Suede"] }
    ],
    maxPrice: 8000,
    products: generateCasualShoes()
  }      


};