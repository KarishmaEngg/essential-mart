import { NextResponse } from "next/server";
import { Pool } from "pg";
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  // Vercel par chalne ke liye is line ka hona zaroori hai:
  ssl: process.env.NODE_ENV === "production" ? { rejectUnauthorized: false } : false
});

export async function POST(request) {
  try {
    // 1. Frontend se data nikalna
    const body = await request.json();
    const { email, password } = body;

    // Validation
    if (!email || !password) {
      return NextResponse.json(
        { error: "Email aur Password dono zaruri hain" },
        { status: 400 }
      );
    }

    // 2. Database mein User search karna
    // Dhyaan rakhein: Table ka naam 'users' hi hona chahiye
    const result = await pool.query("SELECT * FROM users WHERE email = $1", [email]);

    // Agar user nahi mila
    if (result.rows.length === 0) {
      return NextResponse.json(
        { error: "Account nahi mila. Please signup karein." },
        { status: 404 }
      );
    }

    const user = result.rows[0];

    // 3. Password verify karna 
    if (user.password !== password) {
      return NextResponse.json(
        { error: "Galat password! Dubara koshish karein." },
        { status: 401 }
      );
    }

    // 4. Success Response
    return NextResponse.json({
      message: "Login successful!",
      user: {
        id: user.id,
        email: user.email,
        role: user.role || 'user'
      },
      token: "dummy-token-123" 
    }, { status: 200 });

  } catch (error) {
    // Terminal mein asli error dekhne ke liye
    console.error("Login Route Error:", error);
    
    return NextResponse.json(
      { error: "Server Error: " + error.message },
      { status: 500 }
    );
  }
}