"use client";
import React, { useState, useEffect, Suspense, useMemo } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { Heart, Search, X, Filter, ChevronDown, ShoppingBag,ChevronRight , Star } from "lucide-react"; 
import CuratedLooks from "@/components/CuretedLooks";
import WomenItem from "@/components/WomenItem";


// --- 1. CONSTANTS & MOCK DATA ---
const FILTER_DATA = {
  categories: [
    { name: "Sarees", count: 856, slug: "sarees" },
    { name: "Ethnic Sets", count: 1240, slug: "ethnic-sets" },
    { name: "Dresses", count: 950, slug: "dresses" },
    { name: "Kurtas", count: 2100, slug: "kurtas" },
    { name: "Tops", count: 1500, slug: "tops" },
    { name: "Co-ord Sets", count: 600, slug: "co-ord-sets" },
    { name: "Bottoms", count: 800, slug: "bottoms" },
    { name: "Suits", count: 450, slug: "suits" },
    { name: "Footwear", count: 300, slug: "footwear" },
    { name: "Accessories", count: 200, slug: "accessories" },
    { name: "Bags", count: 150, slug: "bags" },
    { name: "Beauty", count: 500, slug: "beauty" }
  ],
  brands: ["Aurelia", "W", "Biba", "Libas", "Pantaloons", "FabIndia"],
  gender: [
    { name: "Women", value: "women" },
    { name: "Girls", value: "girls" },
    { name: "Unisex", value: "unisex" }
  ],
  sizes: ["XXS", "XS", "S", "M", "L", "XL", "2XL", "3XL"],
  colors: [
    { name: "Black", hex: "#000000" },
    { name: "Beige", hex: "#F5F5DC" },
    { name: "Blue", hex: "#0000FF" },
    { name: "Pink", hex: "#FFC0CB" },
    { name: "White", hex: "#FFFFFF" },
    { name: "Red", hex: "#FF0000" },
    { name: "Yellow", hex: "#FFFF00" },
    { name: "Green", hex: "#008000" }
  ]
};

const CATEGORIES = [
  { name: "SAREES", icon: "🧣", slug: "sarees" },
  { name: "ETHNIC SETS", icon: "👗", slug: "ethnic-sets" },
  { name: "DRESSES", icon: "👗", slug: "dresses" },
  { name: "KURTAS", icon: "👘", slug: "kurtas" },
  { name: "TOPS", icon: "👚", slug: "tops" },
  { name: "CO-ORD SETS", icon: "👕", slug: "co-ord-sets" },
  { name: "BOTTOMS", icon: "👖", slug: "bottoms" },
  { name: "SUITS", icon: "🧥", slug: "suits" },
  { name: "FOOTWEAR", icon: "👠", slug: "footwear" },
  { name: "ACCESSORIES", icon: "👜", slug: "accessories" },
  { name: "BAGS", icon: "👜", slug: "bags" },
  { name: "BEAUTY", icon: "💄", slug: "beauty" },
];

const CAROUSEL_IMAGES = [
 'https://i.pinimg.com/736x/f3/46/5d/f3465d7314308930c35e434613fc488c.jpg',
  'https://i.pinimg.com/1200x/95/ac/01/95ac01d48b03f931f2f7edb5ffd949fe.jpg',
  'https://i.pinimg.com/1200x/d0/f0/5d/d0f05d7c1264fbfcc6ac26bcc39c0593.jpg',
  'https://i.pinimg.com/1200x/36/fb/0f/36fb0f854f6e3b10a9faf9ddbb755240.jpg'
];

const TRENDING_CARDS = [
  { title: "Stripe", subtitle: "Right", img: "https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?w=600" },
  { title: "Tailored", subtitle: "Touch", img: "https://images.unsplash.com/photo-1539109132382-3bf1551874e9?w=600" },
  { title: "Tales &", subtitle: "Textures", img: "https://images.unsplash.com/photo-1595777457583-95e059d581b8?w=600" },
  { title: "Exclusive", subtitle: "Styles", img: "https://images.unsplash.com/photo-1483985988355-763728e1935b?w=600" },
];

// --- 2. MAIN CONTENT COMPONENT ---
function WomenStoreContent() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const subCategory = searchParams.get("subcategory");
  const isViewAll = searchParams.get("view") === "all";

  const [rawProducts, setRawProducts] = useState([]);
  const [loading, setLoading] = useState(false);
  const [currentSlide, setCurrentSlide] = useState(0);

  // --- FILTER STATES ---
  const [selectedColors, setSelectedColors] = useState([]);
  const [selectedGenders, setSelectedGenders] = useState([]);
  const [selectedCategories, setSelectedCategories] = useState([]);
  const [priceRange, setPriceRange] = useState({ min: 0, max: 20000 });
  const [appliedPriceRange, setAppliedPriceRange] = useState({ min: 0, max: 20000 });
  const [catSearch, setCatSearch] = useState("");
  const [sortBy, setSortBy] = useState("popularity");

  // --- 3. FETCH DATA LOGIC ---
  useEffect(() => {
    async function fetchProducts() {
      // Agar na subCategory hai na view all, toh home page dikhao (rawProducts empty)
      if (!subCategory && !isViewAll) {
        setRawProducts([]);
        setSelectedCategories([]);
        return;
      }

      try {
        setLoading(true);
        // "ALL" click hone par view=all set hoga, tab hum sirf category=women bhejenge
        let url = `http://localhost:5000/api/products?category=women`;
        if (subCategory) {
          url += `&sub_category=${subCategory}`;
          setSelectedCategories([subCategory]);
        } else {
          setSelectedCategories([]);
        }

        const res = await fetch(url);
        const data = await res.json();
        
        const formattedData = data.map(item => ({
          ...item,
          images: Array.isArray(item.images) ? item.images : JSON.parse(item.images || "[]"),
          color: item.color || "Red", 
          gender: item.gender || "women",
          price: parseFloat(item.discounted_price || item.price || 0)
        }));
        
        setRawProducts(formattedData);
      } catch (e) { 
        console.error("Fetch Error:", e); 
      } finally { 
        setLoading(false); 
      }
    }
    fetchProducts();
  }, [subCategory, isViewAll]);

  // --- 4. FILTERING LOGIC ---
  const filteredProducts = useMemo(() => {
    return rawProducts
      .filter(p => {
        const matchesPrice = p.price >= appliedPriceRange.min && p.price <= appliedPriceRange.max;
        const matchesColor = selectedColors.length === 0 || selectedColors.includes(p.color);
        const matchesGender = selectedGenders.length === 0 || selectedGenders.includes(p.gender);
        const matchesCat = selectedCategories.length === 0 || selectedCategories.includes(p.sub_category);

        return matchesPrice && matchesColor && matchesGender && matchesCat;
      })
      .sort((a, b) => {
        if (sortBy === "low") return a.price - b.price;
        if (sortBy === "high") return b.price - a.price;
        if (sortBy === "new") return b.id - a.id;
        return 0;
      });
  }, [rawProducts, appliedPriceRange, selectedColors, selectedGenders, selectedCategories, sortBy]);

  // --- 5. HANDLERS ---
  const handleAllClick = () => {
    // Isse URL change hoga aur useEffect trigger hoga saare women products lane ke liye
    router.push("/women-store?view=all");
  };

  const handleCatToggle = (cat) => {
    const isSelected = selectedCategories.includes(cat);
    if (isSelected) {
      setSelectedCategories(prev => prev.filter(c => c !== cat));
    } else {
      setSelectedCategories(prev => [...prev, cat]);
      router.push(`/women-store?subcategory=${cat}`);
    }
  };

  const applyPriceFilter = () => setAppliedPriceRange(priceRange);

  const clearAllFilters = () => {
    setSelectedColors([]);
    setSelectedGenders([]);
    setSelectedCategories([]);
    setPriceRange({ min: 0, max: 20000 });
    setAppliedPriceRange({ min: 0, max: 20000 });
    router.push("/women-store");
  };

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrentSlide((prev) => (prev + 1) % CAROUSEL_IMAGES.length);
    }, 4000);
    return () => clearInterval(timer);
  }, []);

  return (
    <div className="bg-white min-h-screen font-sans">
      {/* --- STICKY NAVIGATION --- */}
      <nav className="sticky top-0 z-100 bg-white/95 backdrop-blur-md border-b">
        <div className="max-w-[1440px] mx-auto px-4 flex justify-center items-center gap-6 py-4 overflow-x-auto scrollbar-hide">
          <div onClick={handleAllClick} className="cursor-pointer min-w-[60px] flex flex-col items-center group">
            <div className={`w-12 h-12 rounded-full border-2 flex items-center justify-center font-bold text-xs transition-all shadow-sm ${isViewAll ? 'bg-black text-white border-black' : 'border-black group-hover:bg-black group-hover:text-white'}`}>ALL</div>
            <span className="text-[10px] mt-1 font-bold tracking-tighter">EXPLORE</span>
          </div>
          {CATEGORIES.map(cat => (
            <div key={cat.slug} onClick={() => router.push(`/women-store?subcategory=${cat.slug}`)} className="cursor-pointer min-w-[70px] flex flex-col items-center group">
              <div className={`w-12 h-12 rounded-full flex items-center justify-center text-2xl border-2 transition-all duration-300 ${subCategory === cat.slug ? 'border-cyan-500 bg-cyan-50 scale-110 shadow-md' : 'border-transparent bg-gray-50 hover:bg-gray-100'}`}>{cat.icon}</div>
              <span className={`text-[9px] mt-1 font-bold uppercase tracking-tighter transition-colors ${subCategory === cat.slug ? 'text-cyan-600' : 'text-gray-400'}`}>{cat.name}</span>
            </div>
          ))}
        </div>
      </nav>

      <main className="max-w-[1440px] mx-auto px-4 py-8">
        {(subCategory || isViewAll) ? (
          <div className="flex flex-col lg:flex-row gap-8">
            <aside className="hidden lg:block w-[300px] shrink-0 pr-6 border-r border-gray-100">
              <div className="sticky top-28 space-y-8">
                <div className="flex justify-between items-center pb-4 border-b">
                  <div className="flex items-center gap-2">
                    <Filter size={16} className="text-gray-900" />
                    <span className="font-black text-sm tracking-widest text-gray-900 uppercase">Filters</span>
                  </div>
                </div>

                {/* SIDEBAR CATEGORY LIST */}
                <div className="space-y-4">
                  <span className="text-[11px] font-black tracking-widest uppercase text-cyan-600">Browse Category</span>
                  <div className="max-h-[300px] overflow-y-auto space-y-3 pr-2 custom-scrollbar">
                    {FILTER_DATA.categories.map(c => (
                      <label key={c.slug} className="flex justify-between items-center group cursor-pointer">
                        <div className="flex items-center gap-3">
                          <input 
                            type="checkbox" 
                            checked={selectedCategories.includes(c.slug)}
                            onChange={() => handleCatToggle(c.slug)}
                            className="w-4 h-4 accent-cyan-500 border-gray-300 rounded cursor-pointer" 
                          />
                          <span className={`text-xs transition-colors ${selectedCategories.includes(c.slug) ? 'font-bold text-black' : 'text-gray-500 group-hover:text-black'}`}>{c.name}</span>
                        </div>
                      </label>
                    ))}
                  </div>
                </div>

                {/* PRICE RANGE */}
                <div className="space-y-4 pt-4 border-t">
                  <span className="text-[11px] font-black tracking-widest uppercase text-cyan-600">Price Range</span>
                  <div className="space-y-4">
                    <div className="flex justify-between gap-3 items-center">
                      <div className="flex-1 bg-gray-50 border border-gray-100 p-2 rounded-lg">
                        <input type="number" value={priceRange.min} onChange={(e) => setPriceRange({...priceRange, min: parseInt(e.target.value) || 0})} className="w-full bg-transparent text-xs font-bold outline-none" />
                      </div>
                      <span className="text-gray-300">—</span>
                      <div className="flex-1 bg-gray-50 border border-gray-100 p-2 rounded-lg">
                        <input type="number" value={priceRange.max} onChange={(e) => setPriceRange({...priceRange, max: parseInt(e.target.value) || 0})} className="w-full bg-transparent text-xs font-bold outline-none" />
                      </div>
                    </div>
                    <button onClick={applyPriceFilter} className="w-full bg-black text-white text-[10px] font-black py-3 rounded-xl uppercase tracking-widest hover:bg-cyan-600 transition-all">Apply Range</button>
                  </div>
                </div>
              </div>
            </aside>

            {/* PRODUCT GRID */}
            <section className="flex-1">
              <div className="mb-10">
                <h1 className="text-4xl font-black uppercase tracking-tighter text-gray-900 flex items-center gap-4">
                  {isViewAll ? "Women All Products" : subCategory?.replace('-', ' ')}
                  <span className="text-sm font-medium text-gray-300 lowercase bg-gray-50 px-3 py-1 rounded-full">{filteredProducts.length} results</span>
                </h1>
              </div>

              {loading ? (
                <div className="grid grid-cols-2 md:grid-cols-3 xl:grid-cols-4 gap-6">
                  {[1, 2, 3, 4, 5, 6, 7, 8].map(n => (
                    <div key={n} className="aspect-[3/4] bg-gray-100 animate-pulse rounded-2xl" />
                  ))}
                </div>
              ) : (
                <div className="grid grid-cols-2 md:grid-cols-3 xl:grid-cols-4 gap-x-6 gap-y-12">
                  {filteredProducts.map(item => (
                    <div key={item.id} className="group cursor-pointer relative" onClick={() => router.push(`/product/${item.id}`)}>
                      <div className="aspect-[3/4] overflow-hidden bg-gray-50 relative rounded-2xl transition-all duration-500 group-hover:shadow-2xl">
                        <img src={item.images[0] || "/api/placeholder/400/600"} className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-1000" alt={item.name} />
                        <div className="absolute top-4 right-4 bg-white/90 backdrop-blur-md px-2 py-1 rounded-md flex items-center gap-1">
                          <Star size={10} className="fill-yellow-400 text-yellow-400" />
                          <span className="text-[10px] font-black italic">{item.rating || "4.5"}</span>
                        </div>
                      </div>
                      <div className="mt-5 space-y-1 px-1">
                        <p className="text-[9px] font-black text-cyan-600 tracking-[0.2em] uppercase">Essential Mart Luxe</p>
                        <h3 className="text-sm font-bold text-gray-800 truncate uppercase">{item.name}</h3>
                        <span className="font-black text-lg text-gray-900">₹{item.price}</span>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </section>

            
          </div>
        ) : (
           // HOME PAGE VIEW (Full Screen Banner + Sections)
          <div className="w-full">
            <section className=" h-200px w-full ">
              {CAROUSEL_IMAGES.map((img, idx) => (
                <div key={idx} className={`absolute inset-0 transition-opacity duration-1000 ${idx === currentSlide ? "opacity-100" : "opacity-0"}`}>
                  <img src={img} className="w-full h-full object-cover" alt="Banner" />
                </div>
              ))}
              <div className="absolute inset-0 flex items-center justify-center">
                <button onClick={handleAllClick} className="bg-white text-black px-12 py-5 mt-110 rounded-full font-black text-xs uppercase flex items-center gap-2 hover:bg-cyan-500 hover:text-white transition-all shadow-xl">
                  Shop All Kids <ChevronRight size={16} />
                </button>
              </div>
            </section>

            <div className=" bg-white mt-110">
              <div className="max-w-[1440px] mx-auto">
                <WomenItem />
              </div>
            </div>           
          </div>
        )}
      </main>
    </div>
  );
}

export default function KidsStore() {
  return (
    <Suspense fallback={<div className="h-screen flex items-center justify-center font-black">LOADING...</div>}>
      <WomenStoreContent />
    </Suspense>
  );
}