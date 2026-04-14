// --- 1. WOMEN IMAGE ASSETS ---
const IMAGES = {
  sarees: [
    "https://i.pinimg.com/736x/31/5b/54/315b5469733fefa7420f6d70c0d1de36.jpgc",
    "https://i.pinimg.com/736x/45/d8/ca/45d8ca3f740dd66793b86e9fbdaec7a0.jpg",
    "https://i.pinimg.com/736x/7e/4d/64/7e4d64b14e7098ccf1165e5d53b390e2.jpg",
    "https://i.pinimg.com/736x/3f/20/e1/3f20e1059bed83f5dfff6918042a441c.jpg",
    "https://i.pinimg.com/736x/de/e5/e0/dee5e031314cb4f2897eac27500c1262.jpg",
    "https://i.pinimg.com/736x/18/53/2c/18532cf0b400ba6881bc95b742b8b1ee.jpg", // Sample
    "https://i.pinimg.com/736x/cc/1c/a0/cc1ca01d6f69cb6c2c37d5ea9e900c57.jpg",
    "https://i.pinimg.com/1200x/d3/b7/b1/d3b7b1859552b88ede66c590078e4f9a.jpg",
    "https://i.pinimg.com/1200x/b2/24/73/b22473b2bc74528ea1eb2387fd8e96cb.jpg",
    "https://i.pinimg.com/736x/d3/01/ff/d301ffab2f38887d595d465cca19a3b1.jpg",
    "https://i.pinimg.com/736x/f5/5f/f6/f55ff645fa8980e923337bd65b4fd573.jpg",
    "https://i.pinimg.com/736x/17/1f/bc/171fbc755c9c67c09567593e55aa5a12.jpg",
    "https://i.pinimg.com/736x/78/15/bf/7815bf70acd259b9a6526844a60d310e.jpg",
    "https://i.pinimg.com/736x/78/19/36/7819366649bd8457f8e125719d3b793c.jpg",
    "https://i.pinimg.com/736x/2f/64/d6/2f64d63012fc5c83050e7564c965c3a0.jpg",
    "https://i.pinimg.com/736x/8e/0e/02/8e0e021f0b2de117c661721c1ec4b5e2.jpg",
    "https://i.pinimg.com/736x/61/01/cc/6101ccb5ba419cff2ecbd1028593d24f.jpg",

],
  kurtis: [
    "https://i.pinimg.com/736x/39/fa/bd/39fabde536d0176b2f846c8576ede5db.jpg",
    "https://i.pinimg.com/736x/4d/f7/08/4df7088eb52e26477e5123149a477685.jpg",
    "https://i.pinimg.com/736x/85/70/38/8570385e1ce667b082ed503e7921c834.jpg",
    "https://i.pinimg.com/736x/48/56/4c/48564cf4d42453ddf5a5466bef16fbcf.jpg",
    'https://i.pinimg.com/736x/16/49/42/164942189c45ff1b1711edfcc1d930c4.jpg',
    'https://i.pinimg.com/736x/f6/b7/85/f6b78573665dedfe6bee11ab9d1691c6.jpg',
    'https://i.pinimg.com/736x/18/34/e8/1834e81d16fefd8fc50871b0d8724b96.jpg',
    'https://i.pinimg.com/736x/f3/2b/5c/f32b5ccc1fd0107e9951b5305c59f32f.jpg'
  ],
  tops: [
    "https://i.pinimg.com/736x/b0/67/04/b0670456c73dd75bca28a1ebae946464.jpg",
    "https://i.pinimg.com/736x/bf/b6/d6/bfb6d68dbc29e36f95755deab44a0f95.jpg",
    "https://i.pinimg.com/1200x/e1/1a/d6/e11ad623f494e27924d33917fc6f982e.jpg",
    'https://i.pinimg.com/736x/d8/19/47/d81947d8436bcda8b2d2a115ae722512.jpg',
    'https://i.pinimg.com/736x/6c/e6/98/6ce698730258f74135f1c7339f0a00ed.jpg',
    'https://i.pinimg.com/736x/92/02/57/9202576b6ed6742499cc7ea7de84b2a1.jpg',
    'https://i.pinimg.com/1200x/db/c6/38/dbc6386d5fca2e9a82a3d4ac0c78f63d.jpg',
    'https://i.pinimg.com/736x/7b/bd/53/7bbd538f37332c17f174f94c20cab7b3.jpg',
    'https://i.pinimg.com/736x/90/2e/5e/902e5e1ee9519a93efbc9e3966b34b40.jpg',
    'https://i.pinimg.com/736x/4b/f5/e4/4bf5e481508b58e8156564444b01368d.jpg',
    'https://i.pinimg.com/736x/7a/1e/a1/7a1ea1c302c1bed475e36b5bf9a1d430.jpg',
    'https://i.pinimg.com/1200x/fc/71/14/fc71147a5090871de62fcc02b9e71ee2.jpg'
  ],
    lehengas: [
    "https://i.pinimg.com/1200x/c7/5b/7b/c75b7b14e8e309549f0f752210ccea17.jpg",
    "https://i.pinimg.com/736x/51/b7/70/51b770caf43d89ca0c3f8ad0b52846ee.jpg",
    'https://i.pinimg.com/736x/76/04/8c/76048cb50986de782f4aa254536fdd64.jpg',
    'https://i.pinimg.com/736x/36/35/c6/3635c6be26a901c2b8b6d5b174b9de25.jpg',
    'https://i.pinimg.com/736x/91/41/da/9141da71db6df4508b2a41f53957969a.jpg',
    'https://i.pinimg.com/736x/06/e4/47/06e447550bc57e1226507591a9b847e5.jpg',
    'https://i.pinimg.com/736x/bd/4d/bb/bd4dbbbe95393d7417caed678d74b24c.jpg',
    'https://i.pinimg.com/736x/69/fc/53/69fc535b38dec07235f6d33cc5b7f7c4.jpg',
    'https://i.pinimg.com/1200x/85/ce/35/85ce35cfce366055078fa61caf8cf3c1.jpg',
    'https://i.pinimg.com/1200x/43/26/4c/43264c89a215b9b298fd0d4abcaddcb7.jpg',
    'https://i.pinimg.com/736x/06/99/4f/06994f54ae4000498b186ccf09e98f36.jpg',
    'https://i.pinimg.com/736x/98/65/da/9865da5583260c5f24d160bbf7982383.jpg',
    'https://i.pinimg.com/736x/64/4d/ad/644dada7a4300ff468edc48628985f49.jpg',
    'https://i.pinimg.com/736x/1b/5b/f8/1b5bf84fd0be673ebb5834d05d306018.jpg',
    'https://i.pinimg.com/736x/43/6e/ae/436eaeda880f68ddc7913ee3d884b6e5.jpg'
    ],
  dresses: [
   'https://i.pinimg.com/736x/f6/4a/1e/f64a1e2ae954bba12e6e5fca79b5e0af.jpg',
   'https://i.pinimg.com/736x/13/72/1f/13721ffbd0b8a66e6cd8e91d25814f47.jpg',
   'https://i.pinimg.com/736x/d0/ae/f9/d0aef91914db59c31e6411282419e07e.jpg',
   'https://www.nightbubo.com/cdn/shop/files/BellaPrincessCouture_PQ1060_Sage_20_11_20of_204_-1000x1500.jpg?v=1755967260',
   'https://www.zapdress.com/cdn/shop/files/1BBRM_RLF4MUL__6_T6X7FT.png?v=1772548134&width=900',
   'https://89ae7b86f372da86ceb9-cfe85c6a916fb2c9c51caa04bbe64c7d.ssl.cf2.rackcdn.com/product-hugerect-3482966-381865-1764795811-e285b98e6aca2a6a05563b192916a462.jpg',
   'https://www.zapdress.com/cdn/shop/files/W1H_W_D_JQ1_OD61_KG1A3O.png?v=1772549034&width=900',
   'https://02442d4b76552884d12e-7d516af45c10cd65b238d9c98ad05989.ssl.cf2.rackcdn.com/product-hugerect-3375013-172800-1714286412-332af06b98194b81083bf6c0f8a61de6.jpg',
   'https://i.pinimg.com/736x/a3/27/4a/a3274a29c58a02cbae541e6b8000662b.jpg',
   'https://i.pinimg.com/1200x/26/5f/5b/265f5bc4e8bf1f7df5992c80b161db05.jpg',
   'https://i.pinimg.com/736x/77/54/15/775415aa8c9ef240a2775c9ca5a72fc4.jpg',
   'https://www.nightbubo.com/cdn/shop/files/11Brown.webp?v=1756878850&width=832'
  ],
  heels: [
    "https://i.pinimg.com/736x/5f/66/04/5f660448e6513f9921a02ae09c05ef3b.jpg",
    'https://i.pinimg.com/736x/cd/71/dc/cd71dc37f4b6882d178e736769a0a071.jpg',
    'https://i.pinimg.com/736x/f9/6f/9c/f96f9c2f8b859375557ad66727045ddf.jpg',
    'https://i.pinimg.com/736x/d0/40/59/d04059f1614b578f78a7e5406daa5aac.jpg',
    'https://i.pinimg.com/1200x/55/b6/ce/55b6ce80aa637ac38a44ce93d3ad3177.jpg',
    'https://i.pinimg.com/1200x/81/9c/b9/819cb9611b51cec80c002bfd330a83f3.jpg',
    'https://i.pinimg.com/736x/1b/56/a1/1b56a194a34292ecf9c0d648ddf59ca6.jpg',
    'https://i.pinimg.com/736x/9e/e4/08/9ee4080d8071f990f2b581625e3f07aa.jpg',
    'https://i.pinimg.com/736x/aa/43/cc/aa43cc6929227c140165ac07630587ec.jpg',
    'https://i.pinimg.com/736x/4f/b8/af/4fb8afbd347f71f269fcbbbf20027a30.jpg',
    'https://i.pinimg.com/736x/2f/4e/3a/2f4e3a55d4c091bad516e57ee507be4a.jpg'
  ],
  skirts:[
  "https://i.pinimg.com/736x/e1/00/81/e100817a1e148f6d7c56d249fc3fcb1a.jpg",
  "https://i.pinimg.com/736x/4f/70/31/4f70310eaae5b3f92d1164f5f4feb5a3.jpg",
  'https://i.pinimg.com/736x/6b/c1/bc/6bc1bc3188b5de68df084d6eaaf441e5.jpg',
  'https://i.pinimg.com/736x/e3/5f/a0/e35fa095a0759b894f24c543aaefe364.jpg',
  'https://i.pinimg.com/736x/b4/3e/96/b43e965913df2f3934d589754a8987cb.jpg',
  'https://i.pinimg.com/736x/c1/62/21/c1622131e22ceebd5f0863d5245f7c78.jpg',
  'https://i.pinimg.com/736x/71/d8/5e/71d85ea7f41b438b751fb8cf285369cc.jpg',
  'https://i.pinimg.com/736x/76/ee/64/76ee64de3446ea0a943523cf50275cd3.jpg',
  'https://i.pinimg.com/1200x/f3/5d/76/f35d764917d91bf5c26fa33f16c1cc47.jpg',
  'https://i.pinimg.com/736x/00/10/c8/0010c8617f829a072d25cf55dde98758.jpg',
  'https://i.pinimg.com/736x/cd/18/b2/cd18b212ec11f3cb1a4c03424e877bf7.jpg',
  'https://i.pinimg.com/736x/c0/74/83/c07483f326100af59b4b3c5f4a8ff30e.jpg',
  'https://i.pinimg.com/736x/b3/b0/9c/b3b09c7451e2b64b8c4ca2f92a41a376.jpg',
  'https://i.pinimg.com/736x/1f/50/b9/1f50b92723b2382953c7093e13cc2015.jpg'  
  ],
  flats:[
    'https://i.pinimg.com/1200x/c9/d6/2f/c9d62f0085b159d6d277b5ac1f04643b.jpg',
    'https://i.pinimg.com/736x/95/9a/41/959a41ec7790ffdbb5357350e1c33a64.jpg',
    'https://i.pinimg.com/736x/01/5b/88/015b88afa1a2a4d04c7d427ab268bc12.jpg',
    'https://i.pinimg.com/736x/e0/07/3c/e0073c6f4b59cf6efe3a27b8f4901ad7.jpg',
    'https://i.pinimg.com/736x/52/0a/2e/520a2e04eb516627a68aca7a98e68aac.jpg',
    'https://i.pinimg.com/1200x/cd/7d/f7/cd7df7decac8043c5a1c34a2066158b5.jpg',
    'https://i.pinimg.com/1200x/d0/8f/e0/d08fe0ad37c0878ab9ca8929233cc916.jpg',
    'https://i.pinimg.com/1200x/c6/95/b5/c695b52b6fee0f6f12d0f005f8a9a29a.jpg',
    'https://i.pinimg.com/736x/b8/88/e7/b888e7a4da51dbb050a8cfcb885300d2.jpg',
    'https://i.pinimg.com/736x/ed/a6/fc/eda6fc62abfa644a9f04a95807ccecca.jpg',
    'https://i.pinimg.com/1200x/eb/3e/64/eb3e644587d333b42a02935ea660c250.jpg'
  ],
  sneakers:[
    'https://i.pinimg.com/1200x/42/c9/69/42c969511fede6db0be9b1ae1495353f.jpg',
    'https://i.pinimg.com/736x/64/66/37/64663780f11e72ab6ea51508df89d521.jpg',
    'https://i.pinimg.com/736x/27/1b/51/271b515ef11f3262c6388b6fee2918ca.jpg',
    'https://i.pinimg.com/736x/eb/0f/e2/eb0fe2cc7db0509b9384db929349ef54.jpg',
    'https://i.pinimg.com/1200x/b2/3c/e8/b23ce8ade135a59b771cd893ee6e1c76.jpg',
    'https://i.pinimg.com/736x/c5/8b/48/c58b48940d12e551c4d60cc6fe55ec44.jpg',
    'https://i.pinimg.com/736x/0e/23/86/0e23867a4f63e8ee744b1ef4c4b22da4.jpg',
    'https://i.pinimg.com/736x/48/a9/36/48a9368d612d34477c30a9d86fa1487a.jpg',
    'https://i.pinimg.com/736x/49/68/a8/4968a82f3d3bdbe58d2a2220fea1f247.jpg',
    'https://i.pinimg.com/736x/3c/ca/8e/3cca8ee0e50bd7d19de246828cb2d7a5.jpg'
  ],
  kurtaSets:[
    'https://i.pinimg.com/736x/94/61/58/94615846980a539fd020d64a90b6e334.jpg',
    'https://i.pinimg.com/736x/51/d5/50/51d5508c351f44be10f8ff0050ad009c.jpg',
    'https://i.pinimg.com/736x/e9/b8/b3/e9b8b3123fec01b591f5f81135e8a363.jpg',
    'https://i.pinimg.com/736x/4a/e9/4c/4ae94c09c75fc9319c947bf0474dcee3.jpg',
    'https://www.neerus.com/cdn/shop/files/42846390RED_1.jpg?v=1760515519&width=1080',
    'https://i.pinimg.com/736x/bd/ac/30/bdac30aad4253984ef550e5f9145285b.jpg',
    'https://i.pinimg.com/736x/55/37/f0/5537f017ef67f1b69eab922edfdd3a6f.jpg',
    'https://i.pinimg.com/736x/a2/d6/da/a2d6da0b7d5728ea8fca2576de3e37f6.jpg',
    'https://i.pinimg.com/736x/74/2d/85/742d859613e74fee8d34fee9c24146db.jpg',
    'https://i.pinimg.com/736x/ec/9a/61/ec9a617c177eeb79fdd6cb35a65b4409.jpg'
  ],
  earrings:[
    'https://i.pinimg.com/1200x/f9/5d/27/f95d27d46858787845d3ae3c37a2583c.jpg',
    'https://i.pinimg.com/736x/85/60/68/856068739fe8cbf48a4da7348d17973c.jpg',
    'https://i.pinimg.com/736x/72/c1/7c/72c17c119047d4a085bd6eb06e323e78.jpg',
    'https://i.pinimg.com/736x/83/16/7b/83167b1b680adfcc8663ce956d86c782.jpg',
    'https://i.pinimg.com/1200x/c3/70/a6/c370a630b004dc34b2d155221d0eb72d.jpg',
    'https://i.pinimg.com/736x/88/cf/9c/88cf9c8698f8de06347de4ad62dd02de.jpg',
    'https://i.pinimg.com/736x/9c/89/bd/9c89bd1ad34f825e0e4107b8cb5dd4b2.jpg',
    'https://i.pinimg.com/1200x/6e/d4/fb/6ed4fb81f21cd105ecd3209ddbf39626.jpg',
    'https://i.pinimg.com/736x/f5/ff/7e/f5ff7e51b8b862a9c3a70a2c04e6caf3.jpg',
    'https://i.pinimg.com/736x/f1/9c/d7/f19cd7f2b5af0beb05a819451bd52fe9.jpg',
    'https://i.pinimg.com/736x/32/0d/6a/320d6a2366f81c69440dc2910a7d56aa.jpg',
    'https://i.pinimg.com/1200x/4c/44/6b/4c446b8d7a6ba8c2f509b4c696131991.jpg',
    'https://i.pinimg.com/1200x/89/d2/e5/89d2e5848f2a835315c4f305fb3b423d.jpg'
  ],
  rings:[
    'https://i.pinimg.com/1200x/c9/29/32/c92932387219ee363105d5ce0187b71d.jpg',
    'https://i.pinimg.com/736x/42/92/7f/42927f956626aefefaa509557a5ce84c.jpg',
    'https://i.pinimg.com/736x/76/8d/7c/768d7c3ef4f652a21c0f24aba3858d6c.jpg',
    'https://i.pinimg.com/736x/96/41/3e/96413e040366e3121addd3d590787258.jpg',
    'https://i.pinimg.com/736x/7f/30/1b/7f301be4acd5016271c8fa1eec2c0711.jpg',
    'https://i.pinimg.com/1200x/a8/f6/d3/a8f6d3f9676c036e1605c2dd939e7143.jpg',
    'https://i.pinimg.com/736x/25/77/36/257736023c1ae85c50b99bbda980389e.jpg',
    'https://i.pinimg.com/736x/39/ab/dc/39abdc46fdc503df37aeb2ead4fb9e93.jpg',
    'https://i.pinimg.com/1200x/b6/62/6b/b6626b069dfed21d939eeece8dd6bf28.jpg'
  ],
  necklaces:[
    'https://i.pinimg.com/736x/d8/aa/b7/d8aab736e426ca0ca3286d3912be4474.jpg',
    'https://i.pinimg.com/1200x/31/1b/fd/311bfd823266d94a9a5e5b29b502225d.jpg',
    'https://i.pinimg.com/736x/81/c0/ad/81c0ad4f8cd4be64c48697c3cf671cb8.jpg',
    'https://i.pinimg.com/1200x/51/14/dc/5114dc92d962a57e989058be2f3ca72b.jpg',
    'https://i.pinimg.com/1200x/e3/f8/88/e3f8882b9d5d4c82564111d00b9159e0.jpg'
  ],
  jeans:[
    'https://i.pinimg.com/1200x/a9/35/10/a9351044506f41e14ab02113de7370e0.jpg',
    'https://i.pinimg.com/1200x/23/e3/65/23e365e8205e269f424fb2bca58dbadb.jpg',
    'https://i.pinimg.com/1200x/ae/5a/c9/ae5ac93bbca9afc43a59c350da839e8b.jpg',
    'https://i.pinimg.com/736x/ae/f6/06/aef6061238929dd3000be226e857f3d8.jpg',
    'https://i.pinimg.com/1200x/c3/c4/b7/c3c4b73cafc6e0f93c2a49704db0d6bc.jpg',
    'https://i.pinimg.com/736x/5d/a9/68/5da96861137ee67a4fb8f97a78d9b9dd.jpg',
    'https://i.pinimg.com/736x/66/ff/47/66ff478223c5193105d551037dbc8ec4.jpg',
    'https://i.pinimg.com/736x/28/f3/b9/28f3b9997bc24214345bb973f004eaba.jpg',
    'https://img.fantaskycdn.com/4d8d151476b1387d09e65232641ed846_1024x.jpeg',
    'https://i.pinimg.com/736x/57/52/5f/57525f42ea0d1ac148ce1a2eec2592cc.jpg',
    'https://i.pinimg.com/736x/94/80/6e/94806ec8323a23370a3557fa5a83ba5f.jpg',
    'https://i.pinimg.com/736x/dd/1b/c1/dd1bc1e9d5e7bafb80015912fe3dd29a.jpg',
    'https://i.pinimg.com/736x/8d/4a/85/8d4a852445b0863138afeaa5910a2de1.jpg',
    'https://i.pinimg.com/1200x/84/cc/45/84cc4536ced826380d360443e8f1feb3.jpg',
    'https://i.pinimg.com/736x/4c/ca/74/4cca7431d726002dec4e0312a39e7115.jpg',
    'https://i.pinimg.com/736x/1e/40/c8/1e40c8079023c98710191cbe6252795b.jpg',
    'https://i.pinimg.com/736x/39/a5/9b/39a59b022f7f2b891108720a897636c5.jpg'
  ]
};

// --- 2. WOMEN DATA GENERATORS ---

const generateSarees = () => {
  const brands = ["Varkala", "Meena Bazaar", "FabIndia", "Kalamandir"];
  const fabrics = ["Banarasi Silk", "Chiffon", "Georgette", "Kanjivaram", "Organza"];
  return Array.from({ length: 50 }, (_, i) => ({
    id: `wom-sar-${i + 1}`,
    name: `Premium ${fabrics[i % 5]} Designer Saree`,
    brand: brands[i % 4],
    fabric: fabrics[i % 5],
    price: 9999, offerPrice: 4999, discount: 50, rating: 4.7,
    image: IMAGES.sarees[i % IMAGES.sarees.length]
  }));
};

const generateKurtis = () => {
  const brands = ["Biba", "Libas", "W for Woman", "Aurelia"];
  const styles = ["Anarkali", "Straight Fit", "A-Line", "Short Kurti"];
  const fabrics = ["Cotton", "Rayon", "Silk Blend"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `wom-kur-${i + 1}`,
    name: `${styles[i % 4]} ${fabrics[i % 3]} Embroidered Kurti`,
    brand: brands[i % 4],
    style: styles[i % 4],
    fabric: fabrics[i % 3],
    price: 2999, offerPrice: 1299, discount: 56, rating: 4.4,
    image: IMAGES.kurtis[i % IMAGES.kurtis.length]
  }));
};
const generateTops = () => {
  const brands = ["H&M", "Zara", "Forever 21", "Essential Mart"];
  const styles = ["Crop Top", "Peplum Top", "Off-Shoulder", "Tank Top"];
    const fabrics = ["Cotton", "Polyester", "Silk Blend"];
    return Array.from({ length: 40 }, (_, i) => ({
        id: `wom-top-${i + 1}`,
        name: `${styles[i % 4]} ${fabrics[i % 3]} Casual Top`,
        brand: brands[i % 4],
        style: styles[i % 4],
        fabric: fabrics[i % 3],
        price: 1999, offerPrice: 899, discount: 55, rating: 4.2,
        image: IMAGES.tops[i % IMAGES.tops.length]
      }));
};
const generateLehengas = () => {
    const brands = ["Sabyasachi", "Manish Malhotra", "Ritu Kumar", "Anita Dongre"];
    const fabrics = ["Silk", "Velvet", "Net", "Georgette"];
    const embellishments = ["Zari Work", "Sequins", "Mirror Work", "Resham Embroidery"];
    return Array.from({ length: 30 }, (_, i) => ({
        id: `wom-leh-${i + 1}`,
        name: `Opulent ${fabrics[i % 4]} Lehenga with ${embellishments[i % 4]}`,
        brand: brands[i % 4],
        fabric: fabrics[i % 4],
        embellishment: embellishments[i % 4],
        price: 79999, offerPrice: 39999, discount: 50, rating: 4.8,
        image: IMAGES.lehengas[i % IMAGES.lehengas.length]
      }));
};
const generateDresses = () => {
    const brands = ["Zara", "H&M", "Forever 21", "Essential Mart"];
    const styles = ["Maxi Dress", "Midi Dress", "Bodycon Dress", "A-Line Dress"];
    const fabrics = ["Cotton", "Polyester", "Silk Blend", "Chiffon"];
    return Array.from({ length: 30 }, (_, i) => ({
        id: `wom-dress-${i + 1}`,
        name: `${styles[i % 4]} ${fabrics[i % 4]} Party Dress`,
        brand: brands[i % 4],
        style: styles[i % 4],
        fabric: fabrics[i % 4],
        price: 4999, offerPrice: 2499, discount: 50, rating: 4.3,
        image: IMAGES.dresses[i % IMAGES.dresses.length]
        }));
};
 const generateHeels = () => {
    const brands = ["Louboutin", "Jimmy Choo", "Manolo Blahnik", "Essential Mart"];
    const styles = ["Stiletto Heels", "Block Heels", "Wedge Heels", "Kitten Heels"];
    const materials = ["Leather Upper", "Suede Upper", "Synthetic Upper"];
    return Array.from({ length: 30 }, (_, i) => ({
        id: `wom-heel-${i + 1}`,    
        name: `${styles[i % 4]} ${materials
[i % 3]} Heels`,
        brand: brands[i % 4],
        style: styles[i % 4],
        material: materials[i % 3],
        price: 9999, offerPrice: 4999, discount: 50, rating: 4.5,
        image: IMAGES.heels[i % IMAGES.heels.length]
      }));
};

// --- KURTA SETS ---
const generateKurtaSets = () => {
  const brands = ["Libas", "BIBA", "Aurelia", "Essential Mart"];
  const fabrics = ["Chanderi Silk", "Pure Cotton", "Rayon", "Silk Blend"];
  return Array.from({ length: 35 }, (_, i) => ({
    id: `wom-kset-${i + 1}`,
    name: `Premium ${fabrics[i % 4]} Kurta Set with Dupatta`,
    brand: brands[i % 4],
    fabric: fabrics[i % 4],
    price: 5999, offerPrice: 2499, discount: 58, rating: 4.6,
    image: IMAGES.kurtaSets[i % IMAGES.kurtaSets.length]
  }));
};

// --- SKIRTS ---
const generateSkirts = () => {
  const styles = ["Maxi Skirt", "Floral Midi", "A-Line Skirt", "Pleated Skirt"];
  const brands = ["Zara", "H&M", "Forever 21", "Essential Mart"];
  return Array.from({ length: 30 }, (_, i) => ({
    id: `wom-skirt-${i + 1}`,
    name: `Elegant ${styles[i % 4]} for Summer`,
    brand: brands[i % 4],
    style: styles[i % 4],
    price: 2499, offerPrice: 1199, discount: 52, rating: 4.3,
    image: IMAGES.skirts[i % IMAGES.skirts.length]
  }));
};

// --- FLATS ---
const generateFlats = () => {
  const styles = ["Juttis", "Ballerinas", "Strappy Sandals", "Mules"];
  const brands = ["FabIndia", "Catwalk", "Essential Mart", "Metro"];
  return Array.from({ length: 30 }, (_, i) => ({
    id: `wom-flat-${i + 1}`,
    name: `Handcrafted ${styles[i % 4]}`,
    brand: brands[i % 4],
    style: styles[i % 4],
    price: 1999, offerPrice: 899, discount: 55, rating: 4.4,
    image: IMAGES.flats[i % IMAGES.flats.length]
  }));
};

// --- SNEAKERS ---
const generateSneakers = () => {
  const styles = ["Chunky Sneakers", "Classic White", "Canvas Shoes", "Sporty Knits"];
  const brands = ["Nike", "Adidas", "Puma", "Essential Mart"];
  return Array.from({ length: 25 }, (_, i) => ({
    id: `wom-snk-${i + 1}`,
    name: `Urban ${styles[i % 4]}`,
    brand: brands[i % 4],
    style: styles[i % 4],
    price: 4999, offerPrice: 2199, discount: 56, rating: 4.5,
    image: IMAGES.sneakers[i % IMAGES.sneakers.length]
  }));
};
// --- JEWELRY: EARRINGS ---
const generateEarrings = () => {
  const styles = ["Jhumkas", "Hoops", "Studs", "Chandbalis"];
  const materials = ["Gold Plated", "Silver Oxide", "Pearl", "Diamond Studded"];
  return Array.from({ length: 40 }, (_, i) => ({
    id: `wom-ear-${i + 1}`,
    name: `${materials[i % 4]} ${styles[i % 4]}`,
    brand: "Essential Jewels",
    style: styles[i % 4],
    material: materials[i % 4],
    price: 1999, offerPrice: 799, discount: 60, rating: 4.8,
    image: IMAGES.earrings[i % IMAGES.earrings.length]
  }));
};

// --- JEWELRY: NECKLACES ---
const generateNecklaces = () => {
  const styles = ["Choker", "Long Necklace", "Pendant Set", "Layered Chain"];
  return Array.from({ length: 30 }, (_, i) => ({
    id: `wom-neck-${i + 1}`,
    name: `Exquisite ${styles[i % 4]} Statement Piece`,
    brand: "Luxe Archive",
    style: styles[i % 4],
    price: 4999, offerPrice: 2499, discount: 50, rating: 4.7,
    image: IMAGES.necklaces[i % IMAGES.necklaces.length]
  }));
};

// --- JEWELRY: RINGS ---
const generateRings = () => {
  const types = ["Engagement Ring", "Band", "Statement Ring", "Stackable"];
  return Array.from({ length: 25 }, (_, i) => ({
    id: `wom-ring-${i + 1}`,
    name: `Classic ${types[i % 4]}`,
    brand: "Essential Jewels",
    material: "Sterling Silver",
    price: 2999, offerPrice: 1499, discount: 50, rating: 4.6,
    image: IMAGES.rings[i % IMAGES.rings.length]
  }));
};

// --- DENIM: JEANS ---
const generateJeans = () => {
  const fits = ["High Waist Skinny", "Mom Fit", "Wide Leg", "Straight Cut"];
  const washes = ["Light Wash", "Dark Indigo", "Black Denim", "Distressed"];
  return Array.from({ length: 45 }, (_, i) => ({
    id: `wom-jean-${i + 1}`,
    name: `${washes[i % 4]} ${fits[i % 4]} Jeans`,
    brand: "Essential Mart",
    fit: fits[i % 4],
    wash: washes[i % 4],
    price: 3499, offerPrice: 1799, discount: 48, rating: 4.5,
    image: IMAGES.jeans[i % IMAGES.jeans.length]
  }));
};



// --- 3. MASTER WOMEN DATA EXPORT ---

export const WOMEN_DATA = {
  "sarees": {
    title: "Saree Sangam",
    bannerTitle: "Ethnic Elegance",
    bannerSubtitle: "Traditional Drapes for Every Occasion",
    bannerImg: "https://images.unsplash.com/photo-1610030469983-98e550d6193c",
    accentColor: "selection:bg-pink-100",
    filterGroups: [
      { id: "fabric", title: "Fabric", items: ["Banarasi Silk", "Chiffon", "Georgette", "Kanjivaram", "Organza"] }
    ],
    maxPrice: 50000,
    products: generateSarees()
  },
  "kurtis": {
    title: "Kurti Collection",
    bannerTitle: "Daily Grace",
    bannerSubtitle: "Comfortable & Stylish Ethnic Wear",
    bannerImg: "https://images.unsplash.com/photo-1589310243389-96a5483213a8",
    accentColor: "selection:bg-yellow-50",
    filterGroups: [
      { id: "style", title: "Kurti Style", items: ["Anarkali", "Straight Fit", "A-Line", "Short Kurti"] },
      { id: "fabric", title: "Fabric", items: ["Cotton", "Rayon", "Silk Blend"] }
    ],
    maxPrice: 8000,
    products: generateKurtis()
  },
    "tops": {
        title: "Trendy Tops",
        bannerTitle: "Casual Chic",
        bannerSubtitle: "Everyday Tops with a Stylish Twist",
        bannerImg: "https://images.unsplash.com/photo-1520975915910-1c9b8e5f1a3c",
        accentColor: "selection:bg-blue-50",
        filterGroups: [
            { id: "style", title: "Top Style", items: ["Crop Top", "Peplum Top", "Off-Shoulder", "Tank Top"] },
            { id: "fabric", title: "Fabric", items: ["Cotton", "Polyester", "Silk Blend"] }
        ],
        maxPrice: 5000,
        products: generateTops()
    },
    "lehengas": {
        title: "Lehenga Luxe",
        bannerTitle: "Bridal & Festive Lehengas",
        bannerSubtitle: "Opulent Designs for Special Occasions",
        bannerImg: "https://images.unsplash.com/photo-1600185366598-9c1b5e7a2f0c",
        accentColor: "selection:bg-red-100",
        filterGroups: [
            { id: "fabric", title: "Fabric", items: ["Silk", "Velvet", "Net", "Georgette"] },
            { id: "embellishment", title: "Embellishment", items: ["Zari Work", "Sequins", "Mirror Work", "Resham Embroidery"] }
        ],
        maxPrice: 100000,
        products:generateLehengas() 
    },
    "dresses": {
        title: "Dress Collection",
        bannerTitle: "Elegant & Stylish",
        bannerSubtitle: "Perfect for Every Occasion",
        bannerImg: "https://images.unsplash.com/photo-1520975915910-1c9b8e5f1a3c",
        accentColor: "selection:bg-purple-100",
        filterGroups: [
            { id: "style", title: "Dress Style", items: ["Maxi Dress", "Midi Dress", "Bodycon Dress", "A-Line Dress"] },
            { id: "fabric", title: "Fabric", items: ["Cotton", "Polyester", "Silk Blend", "Chiffon"] }
        ],
        maxPrice: 10000,
        products: generateDresses()
    },
    "heels": {
        title: "Heels Haven",
        bannerTitle: "Step Up Your Style",
        bannerSubtitle: "Elevate Your Footwear Game",
        bannerImg: "https://images.unsplash.com/photo-1543002588-bfa74002cfa9",
        accentColor: "selection:bg-pink-100",
        filterGroups: [
            { id: "style", title: "Heel Style", items: ["Stiletto", "Block", "Wedge", "Kitten"] },
            { id: "material", title: "Material", items: ["Leather", "Suede", "Synthetic"] }
        ],
        maxPrice: 15000,
        products: generateHeels()
    },
  "kurta-sets": {
    title: "Kurta Sets",
    bannerTitle: "Complete Ethnic Looks",
    bannerSubtitle: "Exquisite Sets for Every Celebration",
    bannerImg: "https://images.unsplash.com/photo-1589310243389-96a5483213a8",
    accentColor: "selection:bg-orange-100",
    filterGroups: [
      { id: "fabric", title: "Fabric", items: ["Chanderi Silk", "Pure Cotton", "Rayon", "Silk Blend"] }
    ],
    maxPrice: 12000,
    products: generateKurtaSets()
  },

  "skirts": {
    title: "Chic Skirts",
    bannerTitle: "Flowy & Fun",
    bannerSubtitle: "Versatile Skirts for Modern Style",
    bannerImg: "https://images.unsplash.com/photo-1583337130417-3346a1be7dee",
    accentColor: "selection:bg-green-100",
    filterGroups: [
      { id: "style", title: "Skirt Style", items: ["Maxi", "Midi", "A-Line", "Pleated"] }
    ],
    maxPrice: 6000,
    products: generateSkirts()
  },

  "flats": {
    title: "Comfy Flats",
    bannerTitle: "Walk with Ease",
    bannerSubtitle: "Style Meets Comfort in Every Step",
    bannerImg: "https://images.unsplash.com/photo-1543163521-1bf539c55dd2",
    accentColor: "selection:bg-amber-100",
    filterGroups: [
      { id: "style", title: "Type", items: ["Juttis", "Ballerinas", "Sandals", "Mules"] }
    ],
    maxPrice: 4000,
    products: generateFlats()
  },

  "sneakers": {
    title: "Urban Sneakers",
    bannerTitle: "Sporty & Bold",
    bannerSubtitle: "The Ultimate Streetwear Collection",
    bannerImg: "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a",
    accentColor: "selection:bg-slate-100",
    filterGroups: [
      { id: "brand", title: "Brands", items: ["Nike", "Adidas", "Puma", "Essential Mart"] }
    ],
    maxPrice: 15000,
    products: generateSneakers()
  },

  "earrings": {
    title: "Earrings",
    bannerTitle: "Ornament Your Look",
    bannerSubtitle: "From Minimalist Studs to Grand Jhumkas",
    bannerImg: "https://images.unsplash.com/photo-1535632066927-ab7c9ab60908",
    accentColor: "selection:bg-yellow-50",
    filterGroups: [
      { id: "style", title: "Type", items: ["Jhumkas", "Hoops", "Studs", "Chandbalis"] },
      { id: "material", title: "Material", items: ["Gold Plated", "Silver Oxide", "Pearl", "Diamond"] }
    ],
    maxPrice: 10000,
    products: generateEarrings()
  },

  "necklaces": {
    title: "Necklaces",
    bannerTitle: "Timeless Strands",
    bannerSubtitle: "Elegant Neckwear for Sophisticated Styles",
    bannerImg: "https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f",
    accentColor: "selection:bg-rose-50",
    filterGroups: [
      { id: "style", title: "Style", items: ["Choker", "Long Necklace", "Pendant Set", "Layered"] }
    ],
    maxPrice: 25000,
    products: generateNecklaces()
  },

  "rings": {
    title: "Rings",
    bannerTitle: "Finest Bands",
    bannerSubtitle: "Exquisite Rings for Every Finger",
    bannerImg: "https://images.unsplash.com/photo-1605100804763-247f67b3557e",
    accentColor: "selection:bg-stone-100",
    filterGroups: [
      { id: "material", title: "Metal", items: ["Gold", "Silver", "Platinum", "Rose Gold"] }
    ],
    maxPrice: 50000,
    products: generateRings()
  },

  "jeans": {
    title: "Jeans & Denim",
    bannerTitle: "Denim Archive",
    bannerSubtitle: "The Perfect Fit for Every Silhouette",
    bannerImg: "https://images.unsplash.com/photo-1541099649105-f69ad21f3246",
    accentColor: "selection:bg-blue-100",
    filterGroups: [
      { id: "fit", title: "The Fit", items: ["Skinny", "Mom Fit", "Wide Leg", "Straight"] },
      { id: "wash", title: "Wash", items: ["Light", "Dark", "Black", "Distressed"] }
    ],
    maxPrice: 7000,
    products: generateJeans()
  }
};
   
   
