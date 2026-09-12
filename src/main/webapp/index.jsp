<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>VoidMarket — dark · minimal · shop</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
  <style>
    * { margin:0; padding:0; box-sizing:border-box; }
    body {
      font-family: 'Space Grotesk', sans-serif;
      background: #0c0c0e;
      color: #e8e6e3;
      line-height: 1.5;
      transition: background 0.2s;
    }
    :root {
      --bg: #0c0c0e;
      --card: #16161a;
      --surface: #1e1e24;
      --border: #2a2a30;
      --accent: #b388ff;
      --accent2: #9575cd;
      --muted: #9a9a9e;
      --muted2: #6b6b72;
      --shadow: 0 10px 30px rgba(0,0,0,0.5);
      --radius: 20px;
      --container: 1240px;
    }
    a { color: inherit; text-decoration: none; }
    button { font: inherit; border: 0; background: none; color: inherit; cursor: pointer; }
    input, select { font: inherit; background: var(--surface); border: 1px solid var(--border); color: #fff; border-radius: 40px; padding: 10px 16px; outline: none; }
    input::placeholder { color: var(--muted2); }
    .container { max-width: var(--container); margin: 0 auto; padding: 0 20px; }
    .muted { color: var(--muted); }
    .hidden { display: none !important; }

    /* header */
    header {
      padding: 16px 0;
      border-bottom: 1px solid var(--border);
      background: rgba(12,12,14,0.85);
      backdrop-filter: blur(10px);
      position: sticky;
      top:0;
      z-index: 99;
    }
    .header-inner {
      display: flex;
      align-items: center;
      gap: 24px;
      flex-wrap: wrap;
    }
    .brand {
      font-weight: 700;
      font-size: 20px;
      letter-spacing: -0.3px;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .brand i { color: var(--accent); }
    .brand span { background: linear-gradient(135deg, #b388ff, #d1c4e9); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
    nav { display: flex; gap: 4px; flex-wrap: wrap; margin-left: auto; }
    nav a {
      padding: 6px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 13px;
      color: var(--muted);
      transition: 0.2s;
    }
    nav a:hover, nav a.active { background: var(--surface); color: #fff; }
    .header-actions { display: flex; gap: 6px; align-items: center; }
    .icon-btn {
      width: 40px; height: 40px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      position: relative;
      transition: 0.2s;
    }
    .icon-btn:hover { background: var(--border); color: #fff; }
    .count {
      position: absolute; right: -2px; top: -2px;
      background: var(--accent); color: #0c0c0e;
      font-size: 10px; font-weight: 700;
      width: 18px; height: 18px;
      border-radius: 50%;
      display: grid;
      place-items: center;
    }
    .user-pill {
      background: var(--surface);
      padding: 4px 12px 4px 4px;
      border-radius: 40px;
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 12px;
      font-weight: 600;
    }
    .avatar {
      width: 28px; height: 28px;
      border-radius: 50%;
      background: var(--accent);
      display: grid;
      place-items: center;
      color: #0c0c0e;
      font-weight: 700;
    }
    .mobile-toggle { display: none; background: var(--surface); width: 40px; height: 40px; border-radius: 50%; }
    .mobile-menu { display: none; border-top: 1px solid var(--border); padding: 12px 0; }
    .mobile-menu a { display: block; padding: 10px 0; font-weight: 500; border-bottom: 1px solid var(--border); }

    /* hero */
    .hero {
      padding: 40px 0 30px;
      background: radial-gradient(circle at 20% 30%, #1f1b2e, #0c0c0e 70%);
      border-bottom: 1px solid var(--border);
    }
    .hero-content { max-width: 700px; }
    .hero h1 {
      font-size: 48px;
      font-weight: 700;
      letter-spacing: -1px;
      line-height: 1.1;
      margin-bottom: 12px;
    }
    .hero h1 i { color: var(--accent); }
    .hero p { color: var(--muted); font-size: 16px; max-width: 500px; margin-bottom: 24px; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 14px;
      transition: 0.2s;
      border: 1px solid transparent;
    }
    .btn-primary { background: var(--accent); color: #0c0c0e; border-color: var(--accent); }
    .btn-primary:hover { background: var(--accent2); border-color: var(--accent2); transform: scale(1.02); }
    .btn-dark { background: var(--surface); color: #fff; border-color: var(--border); }
    .btn-dark:hover { background: var(--border); }
    .btn-outline { border-color: var(--border); background: transparent; }
    .btn-outline:hover { background: var(--surface); }
    .btn-sm { padding: 6px 14px; font-size: 12px; }

    /* sections */
    .section { padding: 50px 0; }
    .section-head {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      gap: 16px;
      margin-bottom: 28px;
    }
    .section-head h2 { font-size: 26px; letter-spacing: -0.3px; }
    .section-head p { color: var(--muted); font-size: 14px; margin-top: 4px; }

    /* categories */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(100px,1fr));
      gap: 12px;
    }
    .category {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 18px 8px;
      text-align: center;
      transition: 0.2s;
    }
    .category:hover, .category.active { border-color: var(--accent); background: var(--surface); }
    .category i { font-size: 24px; color: var(--accent); margin-bottom: 6px; display: block; }
    .category h4 { font-size: 13px; font-weight: 600; }

    /* toolbar */
    .toolbar {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 24px;
    }
    .filters { display: flex; gap: 6px; flex-wrap: wrap; }
    .filter {
      padding: 6px 16px;
      border-radius: 40px;
      background: var(--surface);
      border: 1px solid var(--border);
      font-size: 12px;
      font-weight: 500;
      color: var(--muted);
    }
    .filter.active, .filter:hover { background: var(--accent); color: #0c0c0e; border-color: var(--accent); }
    .sort {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: 40px;
      padding: 6px 16px;
      color: #fff;
      font-weight: 500;
      font-size: 12px;
    }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(210px,1fr));
      gap: 20px;
    }
    .product {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      overflow: hidden;
      transition: 0.25s;
      display: flex;
      flex-direction: column;
    }
    .product:hover { transform: translateY(-6px); border-color: var(--accent); box-shadow: var(--shadow); }
    .product-img {
      position: relative;
      aspect-ratio: 1/1;
      background: var(--surface);
      overflow: hidden;
    }
    .product-img img { width: 100%; height: 100%; object-fit: cover; transition: 0.3s; }
    .product:hover .product-img img { transform: scale(1.04); }
    .product-badge {
      position: absolute; top: 10px; left: 10px;
      background: var(--accent); color: #0c0c0e;
      font-size: 10px; font-weight: 700;
      padding: 4px 10px;
      border-radius: 40px;
    }
    .wish-btn {
      position: absolute; right: 10px; top: 10px;
      background: rgba(12,12,14,0.7);
      width: 32px; height: 32px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      backdrop-filter: blur(4px);
      color: var(--muted);
      transition: 0.2s;
    }
    .wish-btn.active { color: var(--accent); }
    .product-body { padding: 14px 14px 8px; flex: 1; }
    .product-cat { font-size: 10px; text-transform: uppercase; letter-spacing: 0.5px; color: var(--muted2); }
    .product h3 { font-size: 14px; margin: 4px 0 6px; font-weight: 600; }
    .rating { font-size: 12px; color: #f5b342; }
    .rating span { color: var(--muted2); margin-left: 4px; }
    .price-row { display: flex; align-items: center; gap: 8px; margin-top: 6px; }
    .price { font-size: 18px; font-weight: 700; }
    .old { font-size: 12px; color: var(--muted2); text-decoration: line-through; }
    .product-footer { padding: 0 14px 14px; display: flex; gap: 8px; }
    .add-btn { flex: 1; background: var(--surface); border-radius: 40px; padding: 8px; font-weight: 600; font-size: 12px; border: 1px solid var(--border); transition: 0.2s; }
    .add-btn:hover { background: var(--accent); color: #0c0c0e; border-color: var(--accent); }
    .quick-btn { width: 36px; border-radius: 50%; background: var(--surface); border: 1px solid var(--border); }
    .quick-btn:hover { background: var(--border); }
    .empty-state { text-align: center; padding: 60px 20px; color: var(--muted); grid-column: 1/-1; }
    .empty-state i { font-size: 40px; color: var(--surface); margin-bottom: 12px; }

    /* deal */
    .deal-card {
      display: grid;
      grid-template-columns: 1fr 1fr;
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      overflow: hidden;
      margin-bottom: 30px;
    }
    .deal-img { min-height: 260px; background: var(--surface); }
    .deal-img img { width: 100%; height: 100%; object-fit: cover; }
    .deal-body { padding: 32px; display: flex; flex-direction: column; justify-content: center; }
    .deal-tag { background: var(--accent); color: #0c0c0e; padding: 4px 14px; border-radius: 40px; font-size: 11px; font-weight: 700; display: inline-block; margin-bottom: 12px; width: fit-content; }
    .deal-body h2 { font-size: 28px; margin-bottom: 6px; }
    .deal-body p { color: var(--muted); font-size: 14px; max-width: 400px; }
    .deal-price { font-size: 30px; font-weight: 700; margin: 12px 0; }
    .deal-price del { font-size: 16px; color: var(--muted2); font-weight: 400; margin-left: 8px; }
    .timer { display: flex; gap: 10px; margin: 16px 0; }
    .time-block { background: var(--surface); padding: 6px 12px; border-radius: 12px; min-width: 56px; text-align: center; border: 1px solid var(--border); }
    .time-block strong { display: block; font-size: 22px; }
    .time-block small { font-size: 9px; text-transform: uppercase; color: var(--muted2); }

    /* testimonials */
    .testimonial-grid { display: flex; gap: 16px; overflow: auto; padding: 6px 2px 16px; }
    .testimonial {
      min-width: 280px;
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 20px;
    }
    .testimonial .stars { color: #f5b342; margin-bottom: 6px; }
    .testimonial blockquote { font-size: 13px; line-height: 1.6; color: var(--muted); margin-bottom: 12px; }
    .author { display: flex; align-items: center; gap: 10px; }
    .author img { width: 36px; height: 36px; border-radius: 50%; object-fit: cover; background: var(--surface); }
    .author strong { font-size: 13px; }
    .author small { color: var(--muted2); font-size: 11px; display: block; }

    /* newsletter */
    .newsletter {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 32px 36px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 24px;
      flex-wrap: wrap;
    }
    .newsletter h3 { font-size: 22px; }
    .newsletter p { color: var(--muted); font-size: 13px; }
    .newsletter form { display: flex; gap: 10px; flex: 1; max-width: 460px; }
    .newsletter input { flex: 1; background: var(--surface); border: 1px solid var(--border); }

    /* footer */
    footer { border-top: 1px solid var(--border); padding: 40px 0 20px; margin-top: 20px; }
    .footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr 1fr; gap: 30px; }
    .footer-brand p { color: var(--muted); font-size: 12px; max-width: 300px; margin-top: 6px; }
    .footer-col h4 { font-size: 13px; margin-bottom: 10px; }
    .footer-col a { display: block; color: var(--muted); font-size: 12px; margin: 6px 0; }
    .footer-col a:hover { color: var(--accent); }
    .social { display: flex; gap: 8px; margin-top: 12px; }
    .social a { width: 34px; height: 34px; border-radius: 50%; background: var(--surface); display: grid; place-items: center; border: 1px solid var(--border); }
    .copyright { text-align: center; border-top: 1px solid var(--border); padding-top: 18px; margin-top: 28px; font-size: 11px; color: var(--muted2); }

    /* drawer / modal */
    .overlay {
      position: fixed; inset: 0; background: rgba(0,0,0,0.7); z-index: 120;
      opacity: 0; pointer-events: none; transition: 0.25s;
    }
    .overlay.open { opacity: 1; pointer-events: auto; }
    .drawer {
      position: fixed; top: 0; right: 0; z-index: 130;
      width: min(420px, 100%);
      height: 100vh;
      background: var(--bg);
      border-left: 1px solid var(--border);
      transform: translateX(100%);
      transition: 0.3s;
      display: flex;
      flex-direction: column;
    }
    .drawer.open { transform: translateX(0); }
    .drawer-head { padding: 18px 20px; border-bottom: 1px solid var(--border); display: flex; justify-content: space-between; align-items: center; }
    .drawer-head h2 { font-size: 18px; }
    .drawer-body { padding: 16px; flex: 1; overflow: auto; }
    .drawer-foot { border-top: 1px solid var(--border); padding: 16px; }
    .cart-item {
      display: grid;
      grid-template-columns: 60px 1fr auto;
      gap: 12px;
      padding: 12px 0;
      border-bottom: 1px solid var(--border);
    }
    .cart-item img { width: 60px; height: 60px; object-fit: cover; border-radius: 12px; background: var(--surface); }
    .cart-item h4 { font-size: 13px; }
    .qty-ctl { display: flex; align-items: center; gap: 6px; margin-top: 4px; }
    .qty-ctl button { width: 24px; height: 24px; border-radius: 50%; background: var(--surface); border: 1px solid var(--border); font-weight: 700; }
    .cart-empty { text-align: center; padding: 60px 10px; color: var(--muted); }
    .summary-row { display: flex; justify-content: space-between; font-size: 13px; margin: 4px 0; }
    .summary-row.total { font-size: 18px; font-weight: 700; margin-top: 10px; }
    .checkout-btn { width: 100%; margin-top: 12px; }

    /* modal */
    .modal-wrap {
      position: fixed; inset: 0; z-index: 150;
      background: rgba(0,0,0,0.7);
      display: none;
      align-items: center;
      justify-content: center;
      padding: 20px;
    }
    .modal-wrap.open { display: flex; }
    .modal {
      background: var(--bg);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      max-width: 620px;
      width: 100%;
      max-height: 90vh;
      overflow: auto;
    }
    .modal-head { padding: 16px 20px; border-bottom: 1px solid var(--border); display: flex; justify-content: space-between; align-items: center; }
    .modal-head h2 { font-size: 18px; }
    .modal-body { padding: 20px; }

    .product-detail { display: grid; grid-template-columns: 1fr 1fr; gap: 24px; }
    .detail-img { border-radius: 12px; overflow: hidden; background: var(--surface); }
    .detail-img img { width: 100%; aspect-ratio: 1; object-fit: cover; }

    .toast {
      position: fixed; bottom: 24px; right: 24px; z-index: 200;
      background: var(--surface); border: 1px solid var(--border);
      padding: 12px 18px; border-radius: 40px;
      display: flex; align-items: center; gap: 8px;
      font-size: 13px; font-weight: 500;
      transform: translateY(20px); opacity: 0;
      pointer-events: none;
      transition: 0.25s;
    }
    .toast.show { transform: translateY(0); opacity: 1; }
    .toast i { color: var(--accent); }

    @media (max-width: 900px) { nav { display: none; } .mobile-toggle { display: grid; place-items: center; } .deal-card { grid-template-columns: 1fr; } .product-detail { grid-template-columns: 1fr; } }
    @media (max-width: 700px) { .hero h1 { font-size: 34px; } .newsletter { flex-direction: column; align-items: stretch; } .newsletter form { flex-direction: column; } .footer-grid { grid-template-columns: 1fr; } .category-grid { grid-template-columns: repeat(3,1fr); } }
    @media (max-width: 480px) { .product-grid { grid-template-columns: 1fr 1fr; } .hero h1 { font-size: 28px; } .container { padding: 0 14px; } .deal-body { padding: 20px; } }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></em></button>
    <div class="brand"><i class="fas fa-moon"></em><span>VoidMarket</span></div>
    <nav>
      <a class="active" href="#home">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Shop</a>
      <a href="#deals">Deals</a>
      <a href="#reviews">Reviews</a>
    </nav>
    <div class="header-actions">
      <button class="icon-btn" id="searchToggle"><i class="fas fa-search"></em></button>
      <button class="icon-btn" id="wishlistBtn"><i class="far fa-heart"></em><span class="count" id="wishCount">0</span></button>
      <button class="icon-btn" id="cartBtn"><i class="fas fa-bag-shopping"></em><span class="count" id="cartCount">0</span></button>
      <button class="icon-btn" id="accountBtn"><i class="far fa-user"></em></button>
    </div>
  </div>
  <div class="mobile-menu" id="mobileMenu">
    <div class="container">
      <a href="#home">Home</a><a href="#categories">Categories</a><a href="#products">Shop</a><a href="#deals">Deals</a><a href="#reviews">Reviews</a>
    </div>
  </div>
</header>

<main id="home">
  <section class="hero">
    <div class="container">
      <div class="hero-content">
        <div style="display:inline-flex;gap:6px;background:var(--surface);padding:4px 14px;border-radius:40px;font-size:11px;font-weight:600;color:var(--accent);margin-bottom:12px;border:1px solid var(--border);"><i class="fas fa-circle" style="font-size:8px;"></em> live inventory</div>
        <h1>Dark matter <em>·</em> <br>minimal edge</h1>
        <p>Explore a curated selection of premium goods. Real‑time stock, persistent cart, and a clean nocturnal aesthetic.</p>
        <div style="display:flex;gap:10px;flex-wrap:wrap;">
          <button class="btn btn-primary" onclick="document.getElementById('products').scrollIntoView({behavior:'smooth'})"><i class="fas fa-arrow-right"></em> Explore</button>
          <button class="btn btn-dark" onclick="document.getElementById('deals').scrollIntoView({behavior:'smooth'})"><i class="fas fa-bolt"></em> Flash deals</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="container">
      <div class="section-head"><h2>Categories</h2><p>navigate by vibe</p></div>
      <div class="category-grid" id="categoryGrid"></div>
    </div>
  </section>

  <section class="section" id="products">
    <div class="container">
      <div class="section-head"><h2>New arrivals</h2><p id="productSubtext">curated for you</p></div>
      <div class="toolbar">
        <div class="filters" id="filterButtons"></div>
        <select class="sort" id="sortSelect">
          <option value="featured">Featured</option>
          <option value="priceLow">Price: Low → High</option>
          <option value="priceHigh">Price: High → Low</option>
          <option value="rating">Top rated</option>
        </select>
      </div>
      <div class="product-grid" id="productGrid"></div>
    </div>
  </section>

  <section class="section" id="deals">
    <div class="container">
      <div class="section-head"><h2>⚡ Flash deal</h2><p>limited time</p></div>
      <div class="deal-card">
        <div class="deal-img"><img src="https://images.unsplash.com/photo-1558618666-fcd25c85f21b?auto=format&fit=crop&w=600&q=80" alt="deal"></div>
        <div class="deal-body">
          <span class="deal-tag"><i class="fas fa-bolt"></em> 36h left</span>
          <h2>Ultra‑wide monitor</h2>
          <p>Immersive 34" curved display, 144Hz, HDR400 — perfect for work and play.</p>
          <div class="deal-price">$499 <del>$799</del></div>
          <div class="timer">
            <div class="time-block"><strong id="days">00</strong><small>d</small></div>
            <div class="time-block"><strong id="hours">00</strong><small>h</small></div>
            <div class="time-block"><strong id="minutes">00</strong><small>m</small></div>
            <div class="time-block"><strong id="seconds">00</strong><small>s</small></div>
          </div>
          <button class="btn btn-primary" onclick="addToCart(9)"><i class="fas fa-cart-plus"></em> Grab deal</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="reviews">
    <div class="container">
      <div class="section-head"><h2>Voices</h2><p>from the void</p></div>
      <div class="testimonial-grid" id="testimonialGrid"></div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="newsletter">
        <div><h3>Noise reduction</h3><p>Get restock alerts &amp; exclusive drops</p></div>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="your@email.void" required>
          <button class="btn btn-primary" style="border-radius:40px;"><i class="fas fa-paper-plane"></em> Subscribe</button>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand"><div class="brand"><i class="fas fa-moon"></em><span>VoidMarket</span></div><p>A dark‑themed commerce experiment with local state, wishlist, orders and real‑time inventory pulses.</p><div class="social"><a href="#"><i class="fab fa-instagram"></em></a><a href="#"><i class="fab fa-x-twitter"></em></a><a href="#"><i class="fab fa-github"></em></a></div></div>
      <div class="footer-col"><h4>Explore</h4><a href="#products">Shop</a><a href="#categories">Categories</a><a href="#deals">Deals</a></div>
      <div class="footer-col"><h4>Account</h4><a href="#" onclick="openAccount();return false">Profile</a><a href="#" onclick="openOrders();return false">Orders</a><a href="#" onclick="openWishlist();return false">Wishlist</a></div>
      <div class="footer-col"><h4>Company</h4><a href="#">About</a><a href="#">Contact</a><a href="#">Privacy</a></div>
    </div>
    <div class="copyright">© <span id="year"></span> VoidMarket — zero gravity</div>
  </div>
</footer>

<div class="overlay" id="overlay"></div>
<aside class="drawer" id="cartDrawer">
  <div class="drawer-head"><h2><i class="fas fa-bag-shopping"></em> Cart</h2><button class="close" onclick="closePanels()"><i class="fas fa-times"></em></button></div>
  <div class="drawer-body" id="cartBody"></div>
  <div class="drawer-foot" id="cartFoot"></div>
</aside>

<div class="modal-wrap" id="modalWrap">
  <div class="modal">
    <div class="modal-head"><h2 id="modalTitle">Void</h2><button class="close" onclick="closeModal()"><i class="fas fa-times"></em></button></div>
    <div class="modal-body" id="modalBody"></div>
  </div>
</div>

<div class="toast" id="toast"><i class="fas fa-check-circle"></em><span id="toastText"></span></div>

<script>
// ---------- DATA ----------
const PRODUCTS = [
  {id:1,title:"Minimal desk lamp",category:"Lighting",price:89,rating:4.8,reviews:42,stock:14,badge:"new",img:"https://images.unsplash.com/photo-1534073737929-3c4e1d7ee3be?auto=format&fit=crop&w=400&q=80",desc:"Adjustable warm LED, touch dimmer, matte finish."},
  {id:2,title:"Wireless earbuds",category:"Audio",price:129,oldPrice:159,rating:4.6,reviews:87,stock:9,badge:"sale",img:"https://images.unsplash.com/photo-1572569511254-d8f925fe2cbb?auto=format&fit=crop&w=400&q=80",desc:"Active noise cancellation, 8h battery, IPX5."},
  {id:3,title:"Mechanical keyboard",category:"Gear",price:159,rating:4.9,reviews:63,stock:7,badge:"",img:"https://images.unsplash.com/photo-1618384887929-16ec33b8a4f2?auto=format&fit=crop&w=400&q=80",desc:"Hot-swappable, gasket mount, RGB backlight."},
  {id:4,title:"Smart watch",category:"Wearables",price:249,oldPrice:299,rating:4.7,reviews:31,stock:12,badge:"sale",img:"https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=400&q=80",desc:"AMOLED display, heart rate, GPS, sleep tracking."},
  {id:5,title:"Canvas backpack",category:"Bags",price:79,rating:4.5,reviews:56,stock:23,badge:"",img:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=400&q=80",desc:"Water-resistant, 15L, laptop sleeve, minimalist."},
  {id:6,title:"Ceramic mug",category:"Living",price:24,rating:4.3,reviews:112,stock:41,badge:"",img:"https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=400&q=80",desc:"Matte black, 350ml, handmade."},
  {id:7,title:"Desk mat",category:"Workspace",price:34,oldPrice:44,rating:4.4,reviews:78,stock:18,badge:"sale",img:"https://images.unsplash.com/photo-1604072366595-e75dc92d6bdc?auto=format&fit=crop&w=400&q=80",desc:"Non-slip
