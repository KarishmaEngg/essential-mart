"use client";

import { useState } from 'react';
import { Mail, Lock, LogIn, UserPlus, Loader2 } from 'lucide-react';
import { useRouter } from 'next/navigation';

export default function AuthPage() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [isLogin, setIsLogin] = useState(true);
  const [loading, setLoading] = useState(false);
  const router = useRouter();

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);

    // FIX 1: URL ko '/api/login' kiya kyunki Next.js routes '/api' folder mein hote hain
    // FIX 2: localhost:5000 hataya, ab ye direct same port (3000) par hit karega
    const endpoint = isLogin ? '/api/login' : '/api/signup';

    try {
      const response = await fetch(endpoint, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email, password }),
      });

      const data = await response.json();

      if (response.ok) {
        // FIX 3: Role check (data.user.role) kyunki route.js mein object structure alag hai
        const userRole = data.user?.role || 'user';
        
        localStorage.setItem('token', data.token);
        localStorage.setItem('role', userRole);

        if (isLogin) {
        if (email === 'admin@essential.com' || userRole === 'admin') {
            alert("Access Granted: Welcome Boss!");
            // setTimeout use karein taaki storage set ho jaye
            setTimeout(() => {
                window.location.href = '/admin/add-product';
            }, 100);
        } else {
            alert("Login successful!");
            window.location.href = '/'; 
        }
        } else {
          alert("Account created successfully! Please login.");
          setIsLogin(true);
        }
      } else {
        // Server se aane wala error message dikhayega
        alert("Error: " + (data.error || "Something went wrong"));
      }
    } catch (err) {
      console.error("Connection failed:", err);
      alert("Server se connection nahi ho pa raha. Check karein ki Terminal mein Next.js chal raha hai.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-[#f8fafc] px-4">
      <div className="w-full max-w-md bg-white rounded-2xl shadow-sm border border-gray-200 p-8">
        
        <div className="text-center mb-8">
          <h1 className="text-2xl font-bold text-gray-900">
            {isLogin ? 'Essential Mart Login' : 'Create an account'}
          </h1>
          <p className="text-gray-500 mt-2 text-sm">
            {isLogin ? 'Admin panel ya account access karne ke liye details bharein' : 'Join Essential Mart today'}
          </p>
        </div>

        <form onSubmit={handleSubmit} className="space-y-5">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Email Address</label>
            <div className="relative">
              <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none text-gray-400">
                <Mail size={18} />
              </div>
              <input 
                type="email" 
                value={email} 
                onChange={(e) => setEmail(e.target.value)} 
                required 
                className="block w-full pl-10 pr-3 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 outline-none transition-all text-sm text-black"
                placeholder="admin@essential.com"
              />
            </div>
          </div>

          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Password</label>
            <div className="relative">
              <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none text-gray-400">
                <Lock size={18} />
              </div>
              <input 
                type="password" 
                value={password} 
                onChange={(e) => setPassword(e.target.value)} 
                required 
                className="block w-full pl-10 pr-3 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 outline-none transition-all text-sm text-black"
                placeholder="••••••••"
              />
            </div>
          </div>

          <button 
            type="submit" 
            disabled={loading}
            className="w-full flex justify-center items-center gap-2 py-2.5 px-4 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-lg shadow-md transition-all active:scale-[0.98] disabled:opacity-70"
          >
            {loading ? (
              <Loader2 className="animate-spin" size={20} />
            ) : (
              isLogin ? <><LogIn size={18} /> Sign In</> : <><UserPlus size={18} /> Register</>
            )}
          </button>

          <div className="text-center pt-2">
            <button 
              type="button"
              onClick={() => setIsLogin(!isLogin)} 
              className="text-sm text-blue-600 hover:underline font-medium"
            >
              {isLogin ? "Don't have an account? Sign Up" : "Already have an account? Log In"}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}