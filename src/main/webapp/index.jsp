<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="NexusShop - Modern real-time e-commerce storefront">
<title>NexusShop — Real-Time E-Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
    --bg:#f7f7f4;--card:#fff;--primary:#171725;--primary2:#29293b;
    --accent:#e27658;--accent2:#c85b3e;--accent-soft:#f6d8ce;
    --muted:#707080;--muted2:#a1a1ae;--surface:#efefec;
    --success:#26967f;--danger:#d9534f;--warning:#e8bd55;
    --border:rgba(23,23,37,.09);--shadow:0 8px 30px rgba(23,23,37,.07);
    --shadow2:0 18px 55px rgba(23,23,37,.14);--radius:16px;--sm:10px;
    --container:1240px;--transition:.22s ease;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:Inter,system-ui,sans-serif;background:var(--bg);color:var(--primary);line-height:1.5}
body.no-scroll{overflow:hidden}
button,input,select{font:inherit}
button{border:0;background:none;cursor:pointer;color:inherit}
a{text-decoration:none;color:inherit}
img{display:block;max-width:100%}
.container{max-width:var(--container);margin:auto;padding:0 24px}
.muted{color:var(--muted)}
.hidden{display:none!important}
.btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;padding:12px 22px;border-radius:999px;font-weight:700;font-size:14px;border:2px solid transparent;transition:var(--transition)}
.btn-primary{background:var(--accent);color:#fff;border-color:var(--accent)}
.btn-primary:hover{background:var(--accent2);border-color:var(--accent2);transform:translateY(-2px)}
.btn-dark{background:var(--primary);color:#fff}
.btn-dark:hover{background:var(--primary2);transform:translateY(-2px)}
.btn-outline{border-color:var(--border);background:#fff}
.btn-outline:hover{background:var(--primary);color:#fff}
.btn-sm{padding:8px 15px;font-size:12px}
.badge{display:inline-flex;align-items:center;gap:5px;padding:5px 10px;border-radius:999px;font-size:11px;font-weight:800}
.badge-new{background:var(--accent);color:#fff}
.badge-sale{background:var(--warning);color:var(--primary)}
.badge-low{background:#fde2df;color:#a83d37}

/* Header */
header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.94);backdrop-filter:blur(15px);border-bottom:1px solid var(--border)}
.header-inner{height:70px;display:flex;align-items:center;gap:18px}
.brand{display:flex;align-items:center;gap:9px;font-weight:800;font-size:21px;white-space:nowrap}
.brand i,.accent{color:var(--accent)}
nav{margin-left:auto}
nav ul{display:flex;gap:3px;list-style:none}
nav a{display:flex;gap:7px;align-items:center;padding:9px 13px;border-radius:9px;color:var(--muted);font-size:13px;font-weight:600}
nav a:hover,nav a.active{background:var(--surface);color:var(--primary)}
.header-right{display:flex;align-items:center;gap:7px}
.search{width:235px;height:42px;border-radius:999px;background:var(--surface);display:flex;align-items:center;padding:0 14px;border:2px solid transparent}
.search:focus-within{background:#fff;border-color:var(--accent)}
.search input{border:0;outline:0;background:transparent;width:100%;font-size:13px}
.search button{color:var(--muted)}
.icon-btn{width:40px;height:40px;border-radius:50%;display:grid;place-items:center;color:var(--muted);position:relative}
.icon-btn:hover{background:var(--surface);color:var(--primary)}
.count{position:absolute;right:-1px;top:-2px;width:19px;height:19px;border-radius:50%;background:var(--accent);color:#fff;border:2px solid #fff;font-size:10px;font-weight:800;display:grid;place-items:center}
.mobile-toggle{display:none;width:40px;height:40px;border-radius:50%;background:var(--surface)}
.user-pill{display:flex;align-items:center;gap:7px;font-size:12px;font-weight:700;padding:6px 10px;border-radius:999px;background:var(--surface)}
.user-avatar{width:27px;height:27px;border-radius:50%;background:var(--accent);color:#fff;display:grid;place-items:center;font-size:11px}
.mobile-menu{display:none;border-top:1px solid var(--border);padding:10px 0 15px}
.mobile-menu a{display:block;padding:11px 12px;font-weight:600;border-radius:8px}
.mobile-menu a:hover{background:var(--surface)}

/* Hero */
.hero{margin:20px 24px 0;min-height:455px;border-radius:var(--radius);overflow:hidden;position:relative;background:linear-gradient(135deg,#171725,#34344a)}
.hero:before{content:"";position:absolute;inset:0;background:url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85") center/cover;opacity:.3}
.hero .container{position:relative;z-index:1;min-height:455px;display:flex;flex-direction:column;justify-content:center}
.hero-content{max-width:660px}
.hero .eyebrow{display:inline-flex;gap:7px;align-items:center;background:rgba(224,118,88,.18);color:#ffb7a3;border:1px solid rgba(255,255,255,.12);padding:6px 13px;border-radius:999px;font-size:12px;font-weight:800;margin-bottom:16px}
.hero h1{font-family:"Playfair Display",serif;font-size:50px;line-height:1.1;color:#fff;margin-bottom:16px}
.hero p{color:rgba(255,255,255,.78);max-width:560px;font-size:16px;line-height:1.7;margin-bottom:26px}
.hero-actions{display:flex;gap:10px;flex-wrap:wrap}
.live-status{position:absolute;right:35px;top:30px;background:rgba(255,255,255,.1);color:#fff;padding:8px 12px;border-radius:999px;font-size:11px;font-weight:700;backdrop-filter:blur(8px)}
.live-dot{display:inline-block;width:7px;height:7px;border-radius:50%;background:#55d5a7;margin-right:5px;box-shadow:0 0 0 4px rgba(85,213,167,.15)}

/* Sections */
.section{padding:55px 0}
.section-head{display:flex;justify-content:space-between;align-items:flex-end;gap:15px;margin-bottom:25px}
.section-head h2{font-size:27px;letter-spacing:-.4px}
.section-head p{color:var(--muted);font-size:14px;margin-top:3px}
.view-link{color:var(--accent);font-weight:700;font-size:13px}

/* Categories */
.category-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
.category{background:#fff;border:2px solid transparent;border-radius:var(--radius);padding:21px 12px;text-align:center;box-shadow:var(--shadow);transition:var(--transition)}
.category:hover,.category.active{transform:translateY(-4px);border-color:var(--accent-soft)}
.category-icon{width:53px;height:53px;border-radius:50%;background:var(--accent-soft);color:var(--accent);display:grid;place-items:center;margin:0 auto 10px;font-size:21px}
.category h4{font-size:13px}.category small{display:block;color:var(--muted);margin-top:3px}

/* Toolbar */
.toolbar{display:flex;align-items:center;justify-content:space-between;gap:12px;margin-bottom:20px;flex-wrap:wrap}
.filters{display:flex;gap:8px;flex-wrap:wrap}
.filter{padding:9px 13px;border:1px solid var(--border);border-radius:999px;background:#fff;color:var(--muted);font-size:12px;font-weight:700}
.filter.active,.filter:hover{background:var(--primary);color:#fff;border-color:var(--primary)}
.sort{padding:10px 13px;border:1px solid var(--border);border-radius:9px;background:#fff;outline:none;font-size:12px}

/* Products */
.product-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product{background:#fff;border:2px solid transparent;border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow);transition:var(--transition);display:flex;flex-direction:column}
.product:hover{transform:translateY(-5px);box-shadow:var(--shadow2);border-color:var(--accent-soft)}
.product-image{position:relative;aspect-ratio:1/1;background:var(--surface);overflow:hidden;cursor:pointer}
.product-image img{width:100%;height:100%;object-fit:cover;transition:.35s}
.product:hover .product-image img{transform:scale(1.045)}
.product-label{position:absolute;top:11px;left:11px}
.wish{position:absolute;right:10px;top:10px;width:35px;height:35px;background:rgba(255,255,255,.93);border-radius:50%;display:grid;place-items:center;color:var(--muted);z-index:2}
.wish.active{color:var(--accent)}
.stock{position:absolute;left:10px;bottom:10px;background:rgba(23,23,37,.82);color:#fff;padding:5px 8px;border-radius:7px;font-size:10px;font-weight:700}
.product-body{padding:15px 16px 10px;flex:1}
.category-name{text-transform:uppercase;letter-spacing:.5px;font-size:10px;font-weight:800;color:var(--muted2)}
.product h3{font-size:14px;line-height:1.35;margin:5px 0}
.rating{font-size:12px;color:#eaa728}.rating span{color:var(--muted);margin-left:3px}
.price-line{display:flex;align-items:center;gap:8px;margin-top:7px}
.price{font-size:18px;font-weight:800}.old{font-size:12px;color:var(--muted2);text-decoration:line-through}
.product-footer{padding:0 16px 16px;display:flex;gap:7px}
.add{flex:1;background:var(--primary);color:#fff;border-radius:9px;padding:10px;font-size:12px;font-weight:800}
.add:hover{background:var(--accent)}
.quick{width:40px;border:1px solid var(--border);border-radius:9px}
.quick:hover{background:var(--surface)}
.empty{text-align:center;padding:55px;color:var(--muted);grid-column:1/-1}

/* Deal */
.deal{display:grid;grid-template-columns:48% 52%;background:#fff;border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow)}
.deal-image{min-height:320px}.deal-image img{width:100%;height:100%;object-fit:cover}
.deal-content{padding:40px;display:flex;flex-direction:column;justify-content:center}
.deal-tag{background:var(--warning);align-self:flex-start;padding:5px 11px;border-radius:999px;font-size:11px;font-weight:800;margin-bottom:12px}
.deal h2{font-size:30px;margin-bottom:6px}.deal-desc{color:var(--muted);font-size:14px;max-width:520px}
.deal-price{font-size:31px;font-weight:800;margin-top:12px}.deal-price del{font-size:17px;color:var(--muted2);font-weight:400;margin-left:8px}
.timer{display:flex;gap:9px;margin:18px 0}.time{background:var(--primary);color:#fff;min-width:62px;padding:8px;text-align:center;border-radius:8px}.time strong{display:block;font-size:22px}.time small{font-size:9px;opacity:.65;text-transform:uppercase}

/* Trust */
.trust{display:grid;grid-template-columns:repeat(4,1fr);gap:12px;margin-top:20px}
.trust-item{background:#fff;border-radius:var(--sm);padding:18px;display:flex;gap:12px;align-items:center;box-shadow:var(--shadow)}
.trust-item i{font-size:21px;color:var(--accent)}.trust-item strong{font-size:12px;display:block}.trust-item span{font-size:11px;color:var(--muted)}

/* Testimonials */
.testimonials{display:flex;gap:16px;overflow:auto;padding:5px 3px 15px}
.testimonial{min-width:310px;background:#fff;border-radius:var(--radius);padding:22px;box-shadow:var(--shadow)}
.testimonial .stars{color:#eaa728;margin-bottom:9px}.testimonial blockquote{font-size:13px;line-height:1.7;margin-bottom:14px}
.author{display:flex;align-items:center;gap:10px}.author img{width:39px;height:39px;border-radius:50%;object-fit:cover}.author strong{font-size:12px}.author small{display:block;color:var(--muted)}

/* Newsletter/Footer */
.newsletter{background:linear-gradient(135deg,#171725,#303044);border-radius:var(--radius);padding:42px;display:flex;justify-content:space-between;align-items:center;gap:25px;color:#fff}
.newsletter h2{font-size:25px}.newsletter p{font-size:13px;opacity:.7}
.newsletter form{display:flex;gap:8px;width:470px;max-width:100%}.newsletter input{flex:1;border:0;border-radius:999px;padding:13px 18px;background:rgba(255,255,255,.1);color:#fff;outline:0}.newsletter input::placeholder{color:rgba(255,255,255,.5)}
footer{padding:45px 0 25px;border-top:1px solid var(--border);margin-top:15px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:35px}.footer-brand p{color:var(--muted);font-size:12px;max-width:300px;margin-top:8px}.footer-col h4{font-size:13px;margin-bottom:10px}.footer-col a{display:block;color:var(--muted);font-size:12px;margin:7px 0}.footer-col a:hover{color:var(--accent)}
.social{display:flex;gap:7px;margin-top:13px}.social a{width:34px;height:34px;border-radius:50%;background:var(--surface);display:grid;place-items:center}
.copyright{text-align:center;border-top:1px solid var(--border);margin-top:30px;padding-top:20px;color:var(--muted2);font-size:11px}

/* Drawer */
.overlay{position:fixed;inset:0;background:rgba(0,0,0,.42);z-index:150;opacity:0;pointer-events:none;transition:.2s}
.overlay.open{opacity:1;pointer-events:auto}
.drawer{position:fixed;z-index:151;top:0;right:0;width:min(460px,100%);height:100vh;background:#fff;transform:translateX(100%);transition:.28s;display:flex;flex-direction:column;box-shadow:-15px 0 50px rgba(0,0,0,.15)}
.drawer.open{transform:translateX(0)}
.drawer-head{padding:20px;border-bottom:1px solid var(--border);display:flex;justify-content:space-between;align-items:center}
.drawer-head h2{font-size:19px}.close{width:36px;height:36px;border-radius:50%;background:var(--surface)}
.drawer-body{padding:17px;overflow:auto;flex:1}
.cart-item{display:grid;grid-template-columns:70px 1fr auto;gap:12px;padding:13px 0;border-bottom:1px solid var(--border)}
.cart-item img{width:70px;height:70px;object-fit:cover;border-radius:9px;background:var(--surface)}
.cart-item h4{font-size:12px;margin-bottom:4px}.cart-price{font-size:13px;font-weight:800}
.qty{display:flex;align-items:center;gap:7px;margin-top:7px}.qty button{width:24px;height:24px;border-radius:6px;background:var(--surface);font-weight:800}.qty span{font-size:12px;font-weight:800}
.remove{color:var(--muted);font-size:12px}
.cart-empty{text-align:center;padding:65px 15px;color:var(--muted)}.cart-empty i{font-size:42px;color:var(--accent-soft);margin-bottom:12px}
.drawer-foot{border-top:1px solid var(--border);padding:17px}
.summary-row{display:flex;justify-content:space-between;margin:7px 0;font-size:13px}.summary-row.total{font-size:18px;font-weight:800;margin-top:12px}
.checkout{width:100%;margin-top:12px}

/* Modal */
.modal-wrap{position:fixed;inset:0;z-index:200;background:rgba(0,0,0,.5);display:none;align-items:center;justify-content:center;padding:18px}
.modal-wrap.open{display:flex}
.modal{width:min(650px,100%);max-height:92vh;overflow:auto;background:#fff;border-radius:var(--radius);box-shadow:var(--shadow2)}
.modal-head{padding:18px 20px;border-bottom:1px solid var(--border);display:flex;justify-content:space-between;align-items:center}.modal-head h2{font-size:18px}
.modal-body{padding:20px}
.product-detail{display:grid;grid-template-columns:45% 55%;gap:25px}.detail-img{border-radius:12px;overflow:hidden;background:var(--surface)}.detail-img img{width:100%;aspect-ratio:1;object-fit:cover}.detail-category{font-size:11px;color:var(--muted);text-transform:uppercase;font-weight:800}.detail-title{font-size:27px;margin:5px 0 8px}.detail-price{font-size:25px;font-weight:800;margin:13px 0}.detail-desc{font-size:13px;color:var(--muted);line-height:1.7}.detail-stock{font-size:12px;margin:13px 0}.detail-actions{display:flex;gap:8px;margin-top:16px}.detail-actions .btn{flex:1}

/* Forms */
.form-grid{display:grid;grid-template-columns:1fr 1fr;gap:12px}.field{display:flex;flex-direction:column;gap:5px}.field.full{grid-column:1/-1}.field label{font-size:11px;font-weight:800}.field input,.field select,.field textarea{border:1px solid var(--border);border-radius:9px;padding:11px 12px;outline:0;background:#fff;font-size:13px}.field input:focus,.field textarea:focus{border-color:var(--accent)}.field textarea{min-height:75px;resize:vertical}
.auth-tabs{display:flex;background:var(--surface);border-radius:10px;padding:4px;margin-bottom:16px}.auth-tabs button{flex:1;padding:9px;border-radius:7px;font-size:12px;font-weight:800}.auth-tabs button.active{background:#fff;box-shadow:0 2px 8px rgba(0,0,0,.06)}
.form-error{font-size:12px;color:var(--danger);margin:8px 0}.form-success{font-size:12px;color:var(--success);margin:8px 0}

/* Orders */
.order{border:1px solid var(--border);border-radius:12px;padding:15px;margin-bottom:10px}.order-top{display:flex;justify-content:space-between;gap:10px}.order-id{font-weight:800;font-size:13px}.order-status{font-size:10px;font-weight:800;padding:5px 8px;border-radius:999px;background:#e2f4ef;color:var(--success)}.order-items{display:flex;gap:7px;overflow:auto;margin-top:10px}.order-items img{width:46px;height:46px;border-radius:7px;object-fit:cover}.order-meta{font-size:11px;color:var(--muted);margin-top:9px;display:flex;justify-content:space-between}

/* Toast */
.toast{position:fixed;right:22px;bottom:22px;z-index:300;background:var(--primary);color:#fff;padding:12px 15px;border-radius:10px;box-shadow:var(--shadow2);display:flex;align-items:center;gap:9px;font-size:12px;transform:translateY(20px);opacity:0;pointer-events:none;transition:.25s}.toast.show{transform:none;opacity:1}.toast i{color:#64d8b4}

/* Responsive */
@media(max-width:1100px){nav{display:none}.mobile-toggle{display:grid;place-items:center}.header-inner{justify-content:space-between}.category-grid{grid-template-columns:repeat(3,1fr)}.product-grid{grid-template-columns:repeat(3,1fr)}}
@media(max-width:800px){.search{width:180px}.hero{margin:12px 12px 0}.hero,.hero .container{min-height:390px}.hero h1{font-size:38px}.deal{grid-template-columns:1fr}.deal-image{min-height:230px}.trust{grid-template-columns:1fr 1fr}.newsletter{flex-direction:column;align-items:flex-start;padding:28px}.newsletter form{width:100%}.footer-grid{grid-template-columns:1fr 1fr}}
@media(max-width:620px){.container{padding:0 14px}.brand{font-size:18px}.header-right .search{width:135px}.user-pill{display:none}.hero{margin:10px 10px 0}.hero,.hero .container{min-height:340px}.hero h1{font-size:30px}.hero p{font-size:13px}.section{padding:38px 0}.section-head h2{font-size:22px}.category-grid{grid-template-columns:1fr 1fr;gap:10px}.product-grid{grid-template-columns:1fr 1fr;gap:10px}.product-body{padding:11px}.product-footer{padding:0 11px 11px}.product h3{font-size:12px}.price{font-size:15px}.add{font-size:11px}.quick{width:34px}.deal-content{padding:25px 20px}.deal h2{font-size:24px}.timer{gap:5px}.time{min-width:51px}.time strong{font-size:18px}.trust{grid-template-columns:1fr}.footer-grid{grid-template-columns:1fr}.form-grid,.product-detail{grid-template-columns:1fr}.newsletter{padding:25px 20px}.newsletter form{flex-direction:column}.newsletter form .btn{width:100%}}
</style>
</head>

<body>

<header>
    <div class="container header-inner">
        <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#" onclick="goHome();return false;"><i class="fas fa-store"></i><span>Nexus<span class="accent">Shop</span></span></a>

        <nav>
            <ul>
                <li><a class="active" href="#home"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
                <li><a href="#reviews"><i class="fas fa-star"></i> Reviews</a></li>
            </ul>
        </nav>

        <div class="header-right">
            <div class="search">
                <input id="searchInput" type="search" placeholder="Search products..." autocomplete="off">
                <button id="searchButton"><i class="fas fa-search"></i></button>
            </div>
            <button class="icon-btn" id="accountButton" title="Account"><i class="far fa-user"></i></button>
            <button class="icon-btn" id="wishlistButton" title="Wishlist"><i class="far fa-heart"></i><span class="count" id="wishlistCount">0</span></button>
            <button class="icon-btn" id="cartButton" title="Cart"><i class="fas fa-shopping-bag"></i><span class="count" id="cartCount">0</span></button>
        </div>
    </div>
    <div class="mobile-menu" id="mobileMenu">
        <div class="container">
            <a href="#home">Home</a><a href="#categories">Categories</a><a href="#products">Trending</a><a href="#deals">Deals</a><a href="#reviews">Reviews</a>
        </div>
    </div>
</header>

<main id="home">

<section class="hero">
    <div class="live-status"><span class="live-dot"></span> LIVE STORE</div>
    <div class="container">
        <div class="hero-content">
            <div class="eyebrow"><i class="fas fa-sparkles"></i> New Collection 2026</div>
            <h1>Everything You Want.<br>Delivered Faster.</h1>
            <p>Discover premium electronics, fashion, accessories and everyday essentials. Real inventory, persistent cart, instant search and a complete shopping experience — all in one page.</p>
            <div class="hero-actions">
                <button class="btn btn-primary" onclick="scrollToId('products')"><i class="fas fa-bag-shopping"></i> Shop Now</button>
                <button class="btn" style="background:rgba(255,255,255,.12);color:#fff;border-color:rgba(255,255,255,.25)" onclick="scrollToId('deals')"><i class="fas fa-bolt"></i> View Deals</button>
            </div>
        </div>
    </div>
</section>

<section class="section" id="categories">
<div class="container">
    <div class="section-head">
        <div><h2>Shop by Category</h2><p>Explore our most popular collections</p></div>
        <button class="view-link" onclick="setCategory('All')">View All <i class="fas fa-arrow-right"></i></button>
    </div>
    <div class="category-grid" id="categoryGrid"></div>
</div>
</section>

<section class="section" id="products">
<div class="container">
    <div class="section-head">
        <div><h2>Trending Products</h2><p id="productSubtext">Popular products available right now</p></div>
    </div>
    <div class="toolbar">
        <div class="filters" id="filterButtons"></div>
        <select class="sort" id="sortSelect">
            <option value="featured">Sort: Featured</option>
            <option value="priceLow">Price: Low to High</option>
            <option value="priceHigh">Price: High to Low</option>
            <option value="rating">Highest Rated</option>
            <option value="newest">Newest</option>
        </select>
    </div>
    <div class="product-grid" id="productGrid"></div>
</div>
</section>

<section class="section" id="deals">
<div class="container">
    <div class="section-head"><div><h2>⚡ Flash Deal</h2><p>Limited-time offer with live countdown</p></div></div>
    <div class="deal">
        <div class="deal-image"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85" alt="MacBook Air"></div>
        <div class="deal-content">
            <span class="deal-tag"><i class="fas fa-bolt"></i> LIMITED OFFER</span>
            <h2>MacBook Air M2</h2>
            <p class="deal-desc">Powerful performance in a thin, lightweight design. Perfect for work, study and creative workflows.</p>
            <div class="deal-price">$999 <del>$1,199</del></div>
            <div class="timer">
                <div class="time"><strong id="days">00</strong><small>Days</small></div>
                <div class="time"><strong id="hours">00</strong><small>Hours</small></div>
                <div class="time"><strong id="minutes">00</strong><small>Mins</small></div>
                <div class="time"><strong id="seconds">00</strong><small>Secs</small></div>
            </div>
            <button class="btn btn-primary" onclick="addToCart(9)"><i class="fas fa-cart-plus"></i> Add Deal to Cart</button>
        </div>
    </div>

    <div class="trust">
        <div class="trust-item"><i class="fas fa-truck-fast"></i><div><strong>Fast Delivery</strong><span>Track every order</span></div></div>
        <div class="trust-item"><i class="fas fa-shield-halved"></i><div><strong>Secure Checkout</strong><span>Protected payments</span></div></div>
        <div class="trust-item"><i class="fas fa-rotate-left"></i><div><strong>Easy Returns</strong><span>30-day returns</span></div></div>
        <div class="trust-item"><i class="fas fa-headset"></i><div><strong>24/7 Support</strong><span>We're here to help</span></div></div>
    </div>
</div>
</section>

<section class="section" id="reviews">
<div class="container">
    <div class="section-head"><div><h2>Customer Reviews</h2><p>What shoppers are saying about NexusShop</p></div></div>
    <div class="testimonials" id="testimonials"></div>
</div>
</section>

<section class="section">
<div class="container">
    <div class="newsletter">
        <div><h2>Stay in the Loop</h2><p>Get new arrivals, exclusive deals and restock alerts.</p></div>
        <form id="newsletterForm">
            <input id="newsletterEmail" type="email" placeholder="Enter your email" required>
            <button class="btn btn-primary"><i class="fas fa-paper-plane"></i> Subscribe</button>
        </form>
    </div>
</div>
</section>
</main>

<footer>
<div class="container">
    <div class="footer-grid">
        <div class="footer-brand">
            <div class="brand"><i class="fas fa-store"></i><span>Nexus<span class="accent">Shop</span></span></div>
            <p>A complete single-page e-commerce experience with real client-side state, inventory, cart, wishlist, accounts, orders and checkout flows.</p>
            <div class="social"><a href="#"><i class="fab fa-instagram"></i></a><a href="#"><i class="fab fa-facebook-f"></i></a><a href="#"><i class="fab fa-x-twitter"></i></a><a href="#"><i class="fab fa-youtube"></i></a></div>
        </div>
        <div class="footer-col"><h4>Shop</h4><a href="#products">All Products</a><a href="#categories">Categories</a><a href="#deals">Deals</a><a href="#" onclick="openWishlist();return false">Wishlist</a></div>
        <div class="footer-col"><h4>Account</h4><a href="#" onclick="openAccount();return false">My Account</a><a href="#" onclick="openOrders();return false">Orders</a><a href="#" onclick="openCart();return false">Cart</a><a href="#">Help Center</a></div>
        <div class="footer-col"><h4>Company</h4><a href="#">About Us</a><a href="#">Contact</a><a href="#">Privacy</a><a href="#">Terms</a></div>
    </div>
    <div class="copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
</div>
</footer>

<div class="overlay" id="overlay"></div>

<!-- Cart drawer -->
<aside class="drawer" id="cartDrawer">
    <div class="drawer-head"><h2><i class="fas fa-bag-shopping"></i> Your Cart</h2><button class="close" onclick="closePanels()"><i class="fas fa-times"></i></button></div>
    <div class="drawer-body" id="cartBody"></div>
    <div class="drawer-foot" id="cartFoot"></div>
</aside>

<!-- Generic modal -->
<div class="modal-wrap" id="modalWrap">
    <div class="modal">
        <div class="modal-head"><h2 id="modalTitle">NexusShop</h2><button class="close" onclick="closeModal()"><i class="fas fa-times"></i></button></div>
        <div class="modal-body" id="modalBody"></div>
    </div>
</div>

<div class="toast" id="toast"><i class="fas fa-circle-check"></i><span id="toastText"></span></div>

<script>
/* =========================================================
   NEXUSSHOP — SINGLE FILE E-COMMERCE APPLICATION
   Client-side persistence uses localStorage.
   ========================================================= */

const PRODUCTS = [
 {id:1,title:"iPhone 14 Pro Max",category:"Smartphones",price:1099,oldPrice:1199,rating:5,reviews:128,stock:18,badge:"New",img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",description:"A premium smartphone with a powerful camera system, vibrant display and all-day performance."},
 {id:2,title:"MacBook Pro 14\"",category:"Laptops",price:1999,rating:5,reviews:86,stock:9,badge:"",img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",description:"A professional laptop built for demanding development, creative and productivity workloads."},
 {id:3,title:"Apple Watch Series 8",category:"Accessories",price:349,oldPrice:399,rating:5,reviews:214,stock:24,badge:"Sale",img:"https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85",description:"Smart fitness and health tracking, notifications and powerful everyday features on your wrist."},
 {id:4,title:"Nike Air Max 270",category:"Footwear",price:150,rating:4,reviews:53,stock:31,badge:"",img:"https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85",description:"Comfortable everyday sneakers with a bold silhouette and responsive cushioning."},
 {id:5,title:"Sony A7 IV Camera",category:"Gadgets",price:2499,rating:5,reviews:42,stock:7,badge:"New",img:"https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85",description:"A versatile full-frame mirrorless camera designed for professional photography and video."},
 {id:6,title:"Chanel No. 5",category:"Beauty",price:120,rating:5,reviews:189,stock:16,badge:"",img:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",description:"An iconic fragrance with a timeless character and sophisticated floral composition."},
 {id:7,title:"Travel Backpack",category:"Accessories",price:79,oldPrice:99,rating:4,reviews:67,stock:42,badge:"Sale",img:"https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85",description:"A practical travel backpack with generous storage, durable construction and modern styling."},
 {id:8,title:"Sony WH-1000XM5",category:"Gadgets",price:399,rating:5,reviews:156,stock:13,badge:"",img:"https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85",description:"Premium wireless headphones with immersive sound, active noise cancellation and long battery life."},
 {id:9,title:"MacBook Air M2",category:"Laptops",price:999,oldPrice:1199,rating:5,reviews:301,stock:12,badge:"Flash Deal",img:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85",description:"Thin, light and incredibly powerful with Apple's M2 chip."},
 {id:10,title:"Samsung Galaxy S24",category:"Smartphones",price:799,rating:5,reviews:94,stock:21,badge:"New",img:"https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?auto=format&fit=crop&w=700&q=85",description:"A flagship Android smartphone with an excellent camera and bright AMOLED display."},
 {id:11,title:"Classic Oversized Hoodie",category:"Clothing",price:59,oldPrice:79,rating:4,reviews:88,stock:36,badge:"Sale",img:"https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=700&q=85",description:"Soft premium cotton hoodie with a relaxed fit for everyday wear."},
 {id:12,title:"Minimal Leather Wallet",category:"Accessories",price:45,rating:4,reviews:72,stock:28,badge:"",img:"https://images.unsplash.com/photo-1627123424574-724758594e93?auto=format&fit=crop&w=700&q=85",description:"Slim leather wallet designed to carry essentials without bulk."}
];

const CATEGORIES = [
 {name:"Smartphones",icon:"fa-mobile-screen-button"},
 {name:"Laptops",icon:"fa-laptop"},
 {name:"Clothing",icon:"fa-shirt"},
 {name:"Gadgets",icon:"fa-headphones"},
 {name:"Footwear",icon:"fa-shoe-prints"},
 {name:"Accessories",icon:"fa-bag-shopping"},
 {name:"Beauty",icon:"fa-spray-can-sparkles"}
];

const TESTIMONIALS = [
 {name:"Ava Martin",role:"Verified Buyer",avatar:"https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80",stars:5,text:"Fast shipping and excellent support. The product exceeded my expectations!"},
 {name:"Michael Lee",role:"Frequent Shopper",avatar:"https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80",stars:4,text:"Great selection and a smooth checkout. The persistent cart makes shopping really convenient."},
 {name:"Sophia Chen",role:"Designer",avatar:"https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80",stars:5,text:"Love the quality and packaging. Everything arrived in perfect condition."},
 {name:"James Wilson",role:"Tech Enthusiast",avatar:"https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80",stars:5,text:"Amazing prices on electronics. The flash deals are actually useful."}
];

let state = {
 cart: JSON.parse(localStorage.getItem("nexus_cart") || "[]"),
 wishlist: JSON.parse(localStorage.getItem("nexus_wishlist") || "[]"),
 orders: JSON.parse(localStorage.getItem("nexus_orders") || "[]"),
 user: JSON.parse(localStorage.getItem("nexus_user") || "null"),
 category:"All", search:"", sort:"featured"
};

const $ = id => document.getElementById(id);
const money = n => "$" + Number(n).toLocaleString("en-US",{minimumFractionDigits:2,maximumFractionDigits:2});

function save(){
 localStorage.setItem("nexus_cart",JSON.stringify(state.cart));
 localStorage.setItem("nexus_wishlist",JSON.stringify(state.wishlist));
 localStorage.setItem("nexus_orders",JSON.stringify(state.orders));
 localStorage.setItem("nexus_user",JSON.stringify(state.user));
 updateHeader();
}
function product(id){return PRODUCTS.find(p=>p.id===Number(id))}
function escapeHtml(s){return String(s).replace(/[&<>"']/g,c=>({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"}[c]))}
function toast(msg){$("toastText").textContent=msg;$("toast").classList.add("show");clearTimeout(window.toastTimer);window.toastTimer=setTimeout(()=>$("toast").classList.remove("show"),2300)}
function scrollToId(id){$(id)?.scrollIntoView({behavior:"smooth",block:"start"})}
function goHome(){window.scrollTo({top:0,behavior:"smooth"})}

function updateHeader(){
 const qty=state.cart.reduce((s,i)=>s+i.qty,0);
 $("cartCount").textContent=qty;
 $("wishlistCount").textContent=state.wishlist.length;
 $("accountButton").innerHTML=state.user
  ? `<span class="user-avatar">${escapeHtml((state.user.name||"U")[0].toUpperCase())}</span>`
  : `<i class="far fa-user"></i>`;
}

function renderCategories(){
 $("categoryGrid").innerHTML=CATEGORIES.map(c=>{
   const count=PRODUCTS.filter(p=>p.category===c.name).length;
   return `<button class="category ${state.category===c.name?"active":""}" onclick="setCategory('${escapeHtml(c.name)}')">
      <div class="category-icon"><i class="fas ${c.icon}"></i></div><h4>${escapeHtml(c.name)}</h4><small>${count} products</small>
   </button>`;
 }).join("");
}

function renderFilters(){
 const cats=["All",...CATEGORIES.map(c=>c.name)];
 $("filterButtons").innerHTML=cats.map(c=>`<button class="filter ${state.category===c?"active":""}" onclick="setCategory('${escapeHtml(c)}')">${escapeHtml(c)}</button>`).join("");
}

function filteredProducts(){
 let list=[...PRODUCTS];
 if(state.category!=="All") list=list.filter(p=>p.category===state.category);
 if(state.search) {
   const q=state.search.toLowerCase();
   list=list.filter(p=>[p.title,p.category,p.description].some(v=>v.toLowerCase().includes(q)));
 }
 if(state.sort==="priceLow") list.sort((a,b)=>a.price-b.price);
 if(state.sort==="priceHigh") list.sort((a,b)=>b.price-a.price);
 if(state.sort==="rating") list.sort((a,b)=>b.rating-a.rating);
 if(state.sort==="newest") list.sort((a,b)=>b.id-a.id);
 return list;
}

function renderProducts(){
 const list=filteredProducts();
 $("productSubtext").textContent=state.search
   ? `${list.length} result${list.length!==1?"s":""} for "${state.search}"`
   : `${list.length} products available right now`;
 $("productGrid").innerHTML=list.length?list.map(p=>{
   const wished=state.wishlist.includes(p.id);
   const label=p.badge?`<span class="badge ${p.badge==="Sale"||p.badge==="Flash Deal"?"badge-sale":"badge-new"}">${escapeHtml(p.badge)}</span>`:"";
   const low=p.stock<=10;
   return `<article class="product">
      <div class="product-image" onclick="openProduct(${p.id})">
       <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
       <div class="product-label">${label}</div>
       <button class="wish ${wished?"active":""}" onclick="event.stopPropagation();toggleWishlist(${p.id})"><i class="${wished?"fas":"far"} fa-heart"></i></button>
       ${low?`<span class="stock">${p.stock} left</span>`:""}
      </div>
      <div class="product-body">
       <div class="category-name">${escapeHtml(p.category)}</div>
       <h3>${escapeHtml(p.title)}</h3>
       <div class="rating">★ ${p.rating.toFixed(1)} <span>(${p.reviews})</span></div>
       <div class="price-line"><span class="price">${money(p.price)}</span>${p.oldPrice?`<span class="old">${money(p.oldPrice)}</span>`:""}</div>
      </div>
      <div class="product-footer">
       <button class="add" onclick="addToCart(${p.id})"><i class="fas fa-cart-plus"></i> Add to Cart</button>
       <button class="quick" title="Quick view" onclick="openProduct(${p.id})"><i class="far fa-eye"></i></button>
      </div>
   </article>`;
 }).join(""):`<div class="empty"><i class="fas fa-box-open" style="font-size:35px;color:var(--accent-soft)"></i><h3 style="margin:10px 0 5px">No products found</h3><p>Try another search or category.</p><button class="btn btn-dark btn-sm" style="margin-top:12px" onclick="clearFilters()">Clear Filters</button></div>`;
}

function setCategory(category){
 state.category=category;state.search="";
 $("searchInput").value="";
 renderCategories();renderFilters();renderProducts();scrollToId("products");
}
function clearFilters(){state.category="All";state.search="";$("searchInput").value="";renderCategories();renderFilters();renderProducts()}

function search(){
 state.search=$("searchInput").value.trim();
 state.category="All";
 renderCategories();renderFilters();renderProducts();scrollToId("products");
}

function addToCart(id){
 const p=product(id);if(!p)return;
 const existing=state.cart.find(i=>i.id===p.id);
 if(existing){
   if(existing.qty>=p.stock){toast("Maximum available stock reached");return}
   existing.qty++;
 }else state.cart.push({id:p.id,qty:1});
 save();renderCart();toast(`${p.title} added to cart`);
}

function changeQty(id,delta){
 const item=state.cart.find(i=>i.id===Number(id));const p=product(id);
 if(!item||!p)return;
 item.qty+=delta;
 if(item.qty>p.stock){item.qty=p.stock;toast("Only available stock can be added")}
 if(item.qty<=0)state.cart=state.cart.filter(i=>i.id!==Number(id));
 save();renderCart();
}

function removeCart(id){state.cart=state.cart.filter(i=>i.id!==Number(id));save();renderCart();toast("Item removed")}
function cartTotals(){
 const subtotal=state.cart.reduce((s,i)=>{const p=product(i.id);return s+p.price*i.qty},0);
 const shipping=subtotal===0?0:(subtotal>=100?0:9.99);
 const tax=subtotal*.08;
 return {subtotal,shipping,tax,total:subtotal+shipping+tax};
}

function renderCart(){
 if(!state.cart.length){
  $("cartBody").innerHTML=`<div class="cart-empty"><i class="fas fa-bag-shopping"></i><h3>Your cart is empty</h3><p>Add products to start shopping.</p><button class="btn btn-primary btn-sm" style="margin-top:14px" onclick="closePanels();scrollToId('products')">Start Shopping</button></div>`;
  $("cartFoot").innerHTML="";
  return;
 }
 $("cartBody").innerHTML=state.cart.map(i=>{
   const p=product(i.id);
   return `<div class="cart-item">
     <img src="${p.img}" alt="${escapeHtml(p.title)}">
     <div><h4>${escapeHtml(p.title)}</h4><div class="cart-price">${money(p.price)}</div>
       <div class="qty"><button onclick="changeQty(${p.id},-1)">−</button><span>${i.qty}</span><button onclick="changeQty(${p.id},1)">+</button></div>
     </div>
     <button class="remove" onclick="removeCart(${p.id})"><i class="far fa-trash-can"></i></button>
   </div>`;
 }).join("");
 const t=cartTotals();
 $("cartFoot").innerHTML=`<div class="summary-row"><span>Subtotal</span><strong>${money(t.subtotal)}</strong></div>
 <div class="summary-row"><span>Shipping</span><strong>${t.shipping?money(t.shipping):"FREE"}</strong></div>
 <div class="summary-row"><span>Estimated tax</span><strong>${money(t.tax)}</strong></div>
 <div class="summary-row total"><span>Total</span><strong>${money(t.total)}</strong></div>
 <button class="btn btn-primary checkout" onclick="openCheckout()"><i class="fas fa-lock"></i> Secure Checkout</button>`;
}

function openCart(){renderCart();$("overlay").classList.add("open");$("cartDrawer").classList.add("open");document.body.classList.add("no-scroll")}
function closePanels(){$("overlay").classList.remove("open");$("cartDrawer").classList.remove("open");document.body.classList.remove("no-scroll")}
$("overlay").onclick=closePanels;

function openProduct(id){
 const p=product(id);if(!p)return;
 const wished=state.wishlist.includes(p.id);
 openModal(p.title,`<div class="product-detail">
   <div class="detail-img"><img src="${p.img}" alt="${escapeHtml(p.title)}"></div>
   <div>
    <div class="detail-category">${escapeHtml(p.category)}</div>
    <h1 class="detail-title">${escapeHtml(p.title)}</h1>
    <div class="rating">★ ${p.rating.toFixed(1)} <span>(${p.reviews} reviews)</span></div>
    <div class="detail-price">${money(p.price)} ${p.oldPrice?`<del style="font-size:14px;color:var(--muted2);font-weight:400">${money(p.oldPrice)}</del>`:""}</div>
    <p class="detail-desc">${escapeHtml(p.description)}</p>
    <div class="detail-stock"><strong>${p.stock}</strong> items currently available</div>
    <div class="detail-actions">
      <button class="btn btn-primary" onclick="addToCart(${p.id});closeModal()"><i class="fas fa-cart-plus"></i> Add to Cart</button>
      <button class="btn btn-outline" onclick="toggleWishlist(${p.id});openProduct(${p.id})"><i class="${wished?"fas":"far"} fa-heart"></i> ${wished?"Saved":"Wishlist"}</button>
    </div>
   </div>
 </div>`);
}

function toggleWishlist(id){
 const p=product(id);
 if(state.wishlist.includes(Number(id))){state.wishlist=state.wishlist.filter(x=>x!==Number(id));toast("Removed from wishlist")}
 else {state.wishlist.push(Number(id));toast(`${p.title} saved to wishlist`)}
 save();renderProducts();
}

function openWishlist(){
 const items=state.wishlist.map(product).filter(Boolean);
 openModal("My Wishlist",items.length?`<div class="product-grid" style="grid-template-columns:repeat(2,1fr)">${items.map(p=>`
   <div class="product">
    <div class="product-image" onclick="openProduct(${p.id})"><img src="${p.img}" alt="${escapeHtml(p.title)}"></div>
    <div class="product-body"><div class="category-name">${escapeHtml(p.category)}</div><h3>${escapeHtml(p.title)}</h3><div class="price-line"><span class="price">${money(p.price)}</span></div></div>
    <div class="product-footer"><button class="add" onclick="addToCart(${p.id})">Add to Cart</button><button class="quick" onclick="toggleWishlist(${p.id});openWishlist()">×</button></div>
   </div>`).join("")}</div>`:`<div class="empty"><i class="far fa-heart" style="font-size:40px;color:var(--accent-soft)"></i><h3>No saved items</h3><p>Add products to your wishlist.</p></div>`);
}

function openModal(title,body){
 $("modalTitle").textContent=title;$("modalBody").innerHTML=body;$("modalWrap").classList.add("open");document.body.classList.add("no-scroll");
}
function closeModal(){$("modalWrap").classList.remove("open");document.body.classList.remove("no-scroll")}

function openAccount(){
 if(state.user){
  openModal("My Account",`<div style="text-align:center;padding:8px 0 20px">
    <div class="user-avatar" style="width:58px;height:58px;margin:auto;font-size:20px">${escapeHtml((state.user.name||"U")[0].toUpperCase())}</div>
    <h3 style="margin-top:9px">${escapeHtml(state.user.name)}</h3><p class="muted" style="font-size:12px">${escapeHtml(state.user.email)}</p>
  </div>
  <div class="form-grid">
   <button class="btn btn-outline" onclick="openOrders()">My Orders</button>
   <button class="btn btn-outline" onclick="openWishlist()">Wishlist</button>
  </div>
  <button class="btn btn-primary" style="width:100%;margin-top:12px" onclick="logout()">Sign Out</button>`);
 }else showAuth("login");
}

function showAuth(mode){
 openModal("Welcome to NexusShop",`<div class="auth-tabs"><button class="${mode==="login"?"active":""}" onclick="showAuth('login')">Sign In</button><button class="${mode==="register"?"active":""}" onclick="showAuth('register')">Create Account</button></div>
 <form onsubmit="handleAuth(event,'${mode}')">
  ${mode==="register"?`<div class="field" style="margin-bottom:11px"><label>FULL NAME</label><input id="authName" required placeholder="Your name"></div>`:""}
  <div class="field" style="margin-bottom:11px"><label>EMAIL</label><input id="authEmail" type="email" required placeholder="you@example.com"></div>
  <div class="field"><label>PASSWORD</label><input id="authPassword" type="password" minlength="4" required placeholder="••••••••"></div>
  <div id="authMsg"></div>
  <button class="btn btn-primary" style="width:100%;margin-top:15px">${mode==="login"?"Sign In":"Create Account"}</button>
 </form>`);
}

function handleAuth(e,mode){
 e.preventDefault();
 const email=$("authEmail").value.trim(),password=$("authPassword").value;
 if(mode==="register"){
   const name=$("authName").value.trim();
   state.user={name,email,password};
   save();toast("Account created successfully");closeModal();openAccount();
 }else{
   const saved=JSON.parse(localStorage.getItem("nexus_user")||"null");
   if(saved&&saved.email===email&&saved.password===password){state.user=saved;save();toast("Welcome back!");closeModal();openAccount()}
   else $("authMsg").innerHTML=`<div class="form-error">Invalid email or password. For this demo, create an account first.</div>`;
 }
}

function logout(){state.user=null;save();closeModal();toast("Signed out successfully")}

function openCheckout(){
 if(!state.cart.length){toast("Your cart is empty");return}
 if(!state.user){closePanels();showAuth("login");return}
 closePanels();
 const t=cartTotals();
 openModal("Secure Checkout",`<form onsubmit="placeOrder(event)">
  <div class="form-grid">
   <div class="field full"><label>DELIVERY ADDRESS</label><textarea id="address" required placeholder="House number, street, city, state, PIN code"></textarea></div>
   <div class="field"><label>PHONE</label><input id="phone" required placeholder="+91 98765 43210"></div>
   <div class="field"><label>PAYMENT</label><select id="payment"><option>Card / UPI</option><option>Cash on Delivery</option></select></div>
  </div>
  <div style="background:var(--surface);border-radius:10px;padding:14px;margin-top:15px">
   <div class="summary-row"><span>Subtotal</span><strong>${money(t.subtotal)}</strong></div>
   <div class="summary-row"><span>Shipping</span><strong>${t.shipping?money(t.shipping):"FREE"}</strong></div>
   <div class="summary-row"><span>Tax</span><strong>${money(t.tax)}</strong></div>
   <div class="summary-row total"><span>Payable</span><strong>${money(t.total)}</strong></div>
  </div>
  <button class="btn btn-primary" style="width:100%;margin-top:15px"><i class="fas fa-lock"></i> Place Order</button>
 </form>`);
}

function placeOrder(e){
 e.preventDefault();
 for(const item of state.cart){
   const p=product(item.id);
   if(item.qty>p.stock){toast(`${p.title} is out of stock`);return}
   p.stock-=item.qty;
 }
 const t=cartTotals();
 const order={
   id:"NX"+Date.now().toString().slice(-8),
   date:new Date().toISOString(),
   status:"Confirmed",
   total:t.total,
   items:state.cart.map(i=>({id:i.id,qty:i.qty})),
   address:$("address").value,
   payment:$("payment").value
 };
 state.orders.unshift(order);state.cart=[];save();renderProducts();closeModal();toast(`Order ${order.id} placed successfully`);
}

function openOrders(){
 if(!state.user){showAuth("login");return}
 const orders=state.orders;
 openModal("My Orders",orders.length?orders.map(o=>`<div class="order">
   <div class="order-top"><span class="order-id">Order #${escapeHtml(o.id)}</span><span class="order-status">${escapeHtml(o.status)}</span></div>
   <div class="order-items">${o.items.map(i=>{const p=product(i.id);return `<img title="${escapeHtml(p.title)} × ${i.qty}" src="${p.img}" alt="">`}).join("")}</div>
   <div class="order-meta"><span>${new Date(o.date).toLocaleString()}</span><strong>${money(o.total)}</strong></div>
 </div>`).join(""):`<div class="empty"><i class="fas fa-receipt" style="font-size:40px;color:var(--accent-soft)"></i><h3>No orders yet</h3><p>Your completed orders will appear here.</p></div>`);
}

$("sortSelect").addEventListener("change",e=>{state.sort=e.target.value;renderProducts()});
$("searchButton").addEventListener("click",search);
$("searchInput").addEventListener("keydown",e=>{if(e.key==="Enter")search()});
$("searchInput").addEventListener("input",()=>{clearTimeout(window.searchTimer);window.searchTimer=setTimeout(search,220)});
$("cartButton").onclick=openCart;
$("wishlistButton").onclick=openWishlist;
$("accountButton").onclick=openAccount;
$("modalWrap").addEventListener("click",e=>{if(e.target===$("modalWrap"))closeModal()});

$("mobileToggle").onclick=()=>{
 const m=$("mobileMenu");const open=m.style.display==="block";
 m.style.display=open?"none":"block";$("mobileToggle").innerHTML=open?'<i class="fas fa-bars"></i>':'<i class="fas fa-times"></i>';
};
document.querySelectorAll(".mobile-menu a").forEach(a=>a.addEventListener("click",()=>{$("mobileMenu").style.display="none";$("mobileToggle").innerHTML='<i class="fas fa-bars"></i>'}));

$("newsletterForm").addEventListener("submit",e=>{
 e.preventDefault();const email=$("newsletterEmail").value.trim();
 if(!email)return;localStorage.setItem("nexus_newsletter",email);$("newsletterEmail").value="";toast("You're subscribed to NexusShop updates!");
});

function renderTestimonials(){
 $("testimonials").innerHTML=TESTIMONIALS.map(t=>`<article class="testimonial"><div class="stars">${"★".repeat(t.stars)}${"☆".repeat(5-t.stars)}</div><blockquote>“${escapeHtml(t.text)}”</blockquote><div class="author"><img src="${t.avatar}" alt="${escapeHtml(t.name)}"><div><strong>${escapeHtml(t.name)}</strong><small>${escapeHtml(t.role)}</small></div></div></article>`).join("");
}

/* Flash deal countdown — 24h 36m from first page load, persisted */
let dealEnd=Number(localStorage.getItem("nexus_deal_end")||0);
if(!dealEnd||dealEnd<Date.now()){dealEnd=Date.now()+24*60*60*1000+36*60*1000;localStorage.setItem("nexus_deal_end",dealEnd)}
function tick(){
 let diff=Math.max(0,dealEnd-Date.now());
 const d=Math.floor(diff/86400000),h=Math.floor(diff%86400000/3600000),m=Math.floor(diff%3600000/60000),s=Math.floor(diff%60000/1000);
 $("days").textContent=String(d).padStart(2,"0");$("hours").textContent=String(h).padStart(2,"0");$("minutes").textContent=String(m).padStart(2,"0");$("seconds").textContent=String(s).padStart(2,"0");
}
setInterval(tick,1000);tick();

/* Simulated live inventory pulse: demonstrates live UI without a server. */
setInterval(()=>{
 const p=PRODUCTS[Math.floor(Math.random()*PRODUCTS.length)];
 if(p.stock>3 && Math.random()<.35){
   p.stock-=1;renderProducts();
 }
},15000);

$("year").textContent=new Date().getFullYear();
renderCategories();renderFilters();renderProducts();renderTestimonials();updateHeader();renderCart();
</script>
</body>
</html>
