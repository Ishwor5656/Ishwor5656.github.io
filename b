<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Bikalpa Pandey | Portfolio</title>

  <!-- Font Awesome for Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

  <!-- Typing effect -->
  <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>

  <!-- Scroll animation -->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

  <!-- Three.js for background animation -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>

  <style>
    :root {
      --bg: #0a0f1c;
      --text: #e0e0e0;
      --accent: #00ffaa;
      --card: #131b2b;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Segoe UI', sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
      cursor: none;
    }

    .cursor-dot,
    .cursor-outline {
      position: fixed;
      top: 0;
      left: 0;
      pointer-events: none;
      border-radius: 50%;
      transform: translate(-50%, -50%);
      z-index: 10000;
    }

    .cursor-dot {
      width: 8px;
      height: 8px;
      background: var(--accent);
    }

    .cursor-outline {
      width: 30px;
      height: 30px;
      border: 2px solid var(--accent);
      transition: none;
    }

    canvas#bg-canvas {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: -1;
    }

    header {
      padding: 4rem 1rem;
      text-align: center;
    }

    header h1 {
      font-size: 3rem;
      color: var(--text);
    }

    .typing {
      font-size: 1.3rem;
      color: var(--accent);
      margin-top: 0.5rem;
    }

    nav {
       position: absolute;
  top: 1rem;
  right: 1.5rem;
  display: flex;
  justify-content: center;
  gap: 1rem;
  background: rgba(19, 27, 43, 0.9);
  padding: 0.5rem 1rem;
  border-radius: 30px;
  z-index: 1000;
    }

    nav a {
      display: inline-block;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background: var(--card);
  color: var(--accent);
  font-size: 1.2rem;
  text-align: center;
  line-height: 40px;
  text-decoration: none;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
    
}nav a:hover {
  transform: scale(1.2);
  box-shadow: 0 0 10px var(--accent), 0 0 20px var(--accent);
  background: var(--accent);
  color: var(--bg);
}

    .container {
      max-width: 1000px;
      margin: auto;
      padding: 2rem 1rem;
    }

    section {
      margin-bottom: 3rem;
      background: var(--card);
      padding: 2rem;
      border-radius: 12px;
      box-shadow: 0 12px 40px rgba(0, 0, 0, 0.3);
      transition: all 0.4s ease-in-out;

    }
    section:hover {
  transform: scale(1.02);
  box-shadow: 0 0 15px var(--accent), 0 0 30px var(--accent);
  transition: all 0.4s ease-in-out;
  border: 1px solid var(--accent);
}


    section h2 {
      font-size: 2rem;
      margin-bottom: 1rem;
      color: var(--text);
      border-left: 5px solid var(--accent);
      padding-left: 0.75rem;
    }

    section h2 i {
      margin-right: 10px;
      color: var(--accent);
    }

    .skills ul {
      display: flex;
      flex-wrap: wrap;
      list-style: none;
      gap: 0.8rem;
      margin-top: 1rem;
    }

    .skills li {
      background: var(--accent);
      color: black;
      padding: 0.6rem 1.2rem;
      border-radius: 6px;
      font-weight: 500;
    }

    .projects .card {
      padding: 1.5rem;
      border-radius: 10px;
      background: #1f2a40;
      margin-bottom: 1rem;
    }

    .projects .card h3 {
      color: var(--accent);
    }

    form {
      display: flex;
      flex-direction: column;
      gap: 1rem;
      margin-top: 1rem;
    }

    input, textarea {
      padding: 0.8rem;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 1rem;
    }

    button,
    a.button {
      background: transparent;
      border: 2px solid var(--accent);
      color: var(--accent);
      padding: 0.75rem 1.5rem;
      font-size: 1rem;
      border-radius: 50px;
      cursor: pointer;
      position: relative;
      overflow: hidden;
      z-index: 1;
      transition: all 0.3s ease;
    }

    button::before,
    a.button::before {
      content: "";
      position: absolute;
      top: 0;
      left: -100%;
      width: 200%;
      height: 100%;
      background: rgba(0, 255, 170, 0.2);
      z-index: -1;
      transition: left 0.4s ease;
    }

    button:hover::before,
    a.button:hover::before {
      left: 0;
    }

    button:hover,
    a.button:hover {
      box-shadow: 0 0 15px var(--accent), 0 0 30px var(--accent);
      transform: scale(1.05);
    }

    footer {
      text-align: center;
      padding: 1rem;
      background: #111;
      font-size: 0.9rem;
      color: #888;
    }
  </style>
</head>
<body>
  <canvas id="bg-canvas"></canvas>
  <header>
    <h1>Bikalpa Pandey</h1>
    <p class="typing"></p>
  </header>
  <nav>
   <nav>
  <a href="#about" title="About"><i class="fas fa-user"></i></a>
  <a href="#skills" title="Skills"><i class="fas fa-laptop-code"></i></a>
  <a href="#projects" title="Projects"><i class="fas fa-briefcase"></i></a>
  <a href="#contact" title="Contact"><i class="fas fa-envelope"></i></a>
   <a href="cv.html" title="View CV"><i class="fas fa-file-alt" download class="btn btn-secondary"></i></a>
</nav>


  </nav>
  <div class="container">
    <section id="about" data-aos="fade-up">
      <h2><i class="fas fa-user-astronaut"></i> About Me</h2>
      <p>I’m Bikalpa Pandey, a 12th-grade student diving deep into Computer Science. I’m passionate about coding, UI/UX design, and building things that make life simpler through technology.</p>
    </section>
    <section id="skills" class="skills" data-aos="fade-left">
      <h2><i class="fas fa-code"></i> Skills</h2>
      <ul>
        <li>HTML</li>
        <li>CSS</li>
        <li>JavaScript</li>
        <li>Responsive Design</li>
        <li>Git & GitHub</li>
        <li>Python</li>
        <li>Figma</li>
      </ul>
    </section>
    <section id="projects" class="projects" data-aos="fade-right">
      <h2><i class="fas fa-folder-open"></i> Projects</h2>
      <div class="card">
        <h3>My Portfolio Website</h3>
        <p>A clean, animated website built using HTML, CSS, and JavaScript to showcase who I am and what I do.</p>
      </div>
      <div class="card">
        <h3>Study Schedule App (Coming Soon)</h3>
        <p>A productivity tool to help students like me organize study hours and break time efficiently.</p>
      </div>
    </section>
    <section id="contact" class="contact" data-aos="zoom-in-up">
      <h2><i class="fas fa-envelope-open-text"></i> Contact Me</h2>
      <form action="https://formspree.io/f/mwkgjdgg" method="POST">
        <input type="text" name="name" placeholder="Your name" required />
        <input type="email" name="email" placeholder="Your email" required />
        <textarea name="message" rows="5" placeholder="Your message" required></textarea>
        <button type="submit">Send Message</button>
      </form>
    </section>
  </div>
  <footer><div style="margin-top: 1rem;">
  <a href="#" target="_blank" style="margin: 0 10px; color: var(--accent); font-size: 1.5rem;"><i class="fab fa-facebook-f"></i></a>
  <a href="#" target="_blank" style="margin: 0 10px; color: var(--accent); font-size: 1.5rem;"><i class="fab fa-instagram"></i></a>
  <a href="#" target="_blank" style="margin: 0 10px; color: var(--accent); font-size: 1.5rem;"><i class="fab fa-x-twitter"></i></a>
  <a href="#" target="_blank" style="margin: 0 10px; color: var(--accent); font-size: 1.5rem;"><i class="fab fa-linkedin-in"></i></a>
</div>

    &copy; 2025 Bikalpa Pandey | Made with 💻 in HTML + CSS + JS
    <br> All rights related to this website is reserved to author.
  </footer>
  <div class="cursor-dot"></div>
  <div class="cursor-outline"></div>
  <script>
    new Typed('.typing', {
      strings: [
        "12th Grader | Computer Science Student",
        "Aspiring Web Developer",
        "Loves Minimal UI & Clean Code"
      ],
      typeSpeed: 50,
      backSpeed: 30,
      loop: true
    });
    AOS.init({ duration: 1000, once: true });
    const dot = document.querySelector('.cursor-dot');
const outline = document.querySelector('.cursor-outline');

window.addEventListener('mousemove', (e) => {
  const mouseX = e.clientX;
  const mouseY = e.clientY;

  dot.style.left = `${mouseX}px`;
  dot.style.top = `${mouseY}px`;

  outline.style.left = `${mouseX}px`;
  outline.style.top = `${mouseY}px`;
});

    const canvas = document.getElementById('bg-canvas');
    const renderer = new THREE.WebGLRenderer({ canvas, antialias: true });
    renderer.setSize(window.innerWidth, window.innerHeight);
    const scene = new THREE.Scene();
    const camera = new THREE.PerspectiveCamera(60, window.innerWidth / window.innerHeight, 0.1, 1000);
    camera.position.set(0, 0, 5);
    window.addEventListener('resize', () => {
      camera.aspect = innerWidth / innerHeight;
      camera.updateProjectionMatrix();
      renderer.setSize(innerWidth, innerHeight);
    });
    const geo = new THREE.BoxGeometry(2, 2, 2);
    const mat = new THREE.MeshBasicMaterial({ color: 0x00ffaa, wireframe: true, transparent: true, opacity: 0.3 });
    const cube = new THREE.Mesh(geo, mat);
    scene.add(cube);
    const particles = new THREE.BufferGeometry();
    const count = 1000;
    const pos = new Float32Array(count * 3);
    for (let i = 0; i < count * 3; i++) pos[i] = (Math.random() - 0.5) * 10;
    particles.setAttribute('position', new THREE.BufferAttribute(pos, 3));
    const pmat = new THREE.PointsMaterial({ color: 0x007acc, size: 0.02, transparent: true, opacity: 0.5 });
    scene.add(new THREE.Points(particles, pmat));
    function animate() {
      cube.rotation.x += 0.002;
      cube.rotation.y += 0.003;
      renderer.render(scene, camera);
      requestAnimationFrame(animate);
    }
    animate();
    
  </script>
</body>
</html>
