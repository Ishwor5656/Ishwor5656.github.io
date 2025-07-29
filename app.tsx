import React from "react";

const navLinks = [
  "Weight Loss",
  "Mental Health",
  "Hair Regrowth",
  "How it Works",
  "Contact",
];

export default function App() {
  return (
    <div style={{ fontFamily: "serif", background: "#fff", minHeight: "100vh" }}>
      {/* Header */}
      <header style={{
        display: "flex",
        justifyContent: "space-between",
        alignItems: "center",
        padding: "2rem 3rem",
        borderBottom: "none"
      }}>
        <nav style={{ display: "flex", gap: "2rem" }}>
          {navLinks.slice(0, 3).map(link => (
            <a key={link} href="#" style={{ color: "#d51c1c", textDecoration: "none", fontWeight: 500 }}>{link}</a>
          ))}
        </nav>
        <div style={{ fontSize: "2rem", color: "#d51c1c", fontWeight: 700, letterSpacing: "1px" }}>aurora</div>
        <nav style={{ display: "flex", gap: "2rem", alignItems: "center" }}>
          {navLinks.slice(3).map(link => (
            <a key={link} href="#" style={{ color: "#d51c1c", textDecoration: "none", fontWeight: 500 }}>{link}</a>
          ))}
          <button style={{
            border: "1px solid #d51c1c",
            background: "none",
            color: "#d51c1c",
            borderRadius: "2rem",
            padding: "0.5rem 1.5rem",
            fontWeight: 600,
            cursor: "pointer",
            marginLeft: "1rem"
          }}>
            Login
          </button>
        </nav>
      </header>

      {/* Main Content */}
      <main style={{ maxWidth: 900, margin: "0 auto", padding: "4rem 0" }}>
        <div style={{ marginBottom: "2.5rem" }}>
          <div style={{ marginBottom: "0.5rem", color: "#b72828", fontSize: "1rem", fontWeight: 600 }}>
            ★★★★☆ 4.4 · Based on 4k+ Reviews
          </div>
          <h1 style={{ color: "#d51c1c", fontSize: "2.5rem", fontWeight: 500, margin: "0 0 0.2em 0" }}>
            Your confidence<br />Aweights with aurora
          </h1>
          <a href="#" style={{
            display: "inline-block",
            color: "#d51c1c",
            fontWeight: 500,
            borderBottom: "1px solid #d51c1c",
            textDecoration: "none",
            marginTop: "1.5rem",
            fontSize: "1.1rem"
          }}>
            See if you are eligible for treatments &nbsp; →
          </a>
        </div>
        <div style={{
          fontSize: "8rem",
          fontWeight: 500,
          color: "#d51c1c",
          lineHeight: "1",
          margin: "2rem 0 2rem -0.2em",
        }}>
          Aurora<sup style={{ fontSize: "2rem", verticalAlign: "super" }}>®</sup>
        </div>
        <section style={{ marginTop: "4rem" }}>
          <h2 style={{ color: "#d51c1c", fontSize: "2rem", fontWeight: 500 }}>
            GLP-1 weight loss programs
          </h2>
          <div style={{
            display: "flex",
            gap: "2rem",
            marginTop: "2rem",
          }}>
            {/* Card 1 */}
            <div style={{
              background: "#f5f5f5",
              borderRadius: "1rem",
              boxShadow: "0 2px 8px rgba(0,0,0,0.07)",
              padding: "2rem",
              width: "240px"
            }}>
              <div style={{ color: "#d51c1c", fontWeight: 600, fontSize: "0.9rem", marginBottom: "0.5rem" }}>In Stock</div>
              <img src="https://dummyimage.com/150x150/eee/ccc.png&text=GLP-1" alt="GLP-1" style={{ width: "100%", borderRadius: "0.5rem", marginBottom: "1rem" }} />
              <div style={{ color: "#333", fontWeight: 500 }}>Semaglutide Program</div>
            </div>
            {/* Card 2 */}
            <div style={{
              background: "#f5f5f5",
              borderRadius: "1rem",
              boxShadow: "0 2px 8px rgba(0,0,0,0.07)",
              padding: "2rem",
              width: "240px"
            }}>
              <div style={{ color: "#d51c1c", fontWeight: 600, fontSize: "0.9rem", marginBottom: "0.5rem" }}>Limited Stock</div>
              <img src="https://dummyimage.com/150x150/eee/ccc.png&text=Tirzepatide" alt="Tirzepatide" style={{ width: "100%", borderRadius: "0.5rem", marginBottom: "1rem" }} />
              <div style={{ color: "#333", fontWeight: 500 }}>Tirzepatide Program</div>
            </div>
          </div>
          <div style={{ marginTop: "2rem", display: "flex", alignItems: "center", gap: "2rem" }}>
            <div style={{ color: "#d51c1c", fontSize: "1rem", maxWidth: "350px" }}>
              We provide a variety of weight loss programs including semaglutide & tirzepatide
            </div>
            <button style={{
              background: "#d51c1c",
              color: "#fff",
              border: "none",
              borderRadius: "2rem",
              padding: "0.7rem 2rem",
              fontWeight: 600,
              cursor: "pointer",
              fontSize: "1.1rem"
            }}>
              Get Started
            </button>
          </div>
        </section>
      </main>
    </div>
  );
}
