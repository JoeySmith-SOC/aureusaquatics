#!/usr/bin/env bash
set -euo pipefail

mkdir -p css js assets

# ---------- index.html ----------
cat > index.html <<'EOF'
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Home | Aureus Aquatics</title>
  <meta name="description" content="Aureus Aquatics — Luxury custom aquariums, design & build, and white-glove maintenance with IoT monitoring in San Antonio, Austin, and the Hill Country.">
  <meta name="google-site-verification" content="google-site-verification=YOUR_SEARCH_CONSOLE_TOKEN">
  <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/css/styles.css">
  <link rel="icon" href="/assets/favicon.svg" type="image/svg+xml">
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
  <script>window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)};gtag('js',new Date());gtag('config','G-XXXXXXXXXX');</script>
  <script type="application/ld+json">
  {
    "@context":"https://schema.org","@type":"LocalBusiness","name":"Aureus Aquatics",
    "image":"/assets/og-cover.jpg","url":"https://www.aureusaquatics.com","telephone":"+1-210-000-0000",
    "address":{"@type":"PostalAddress","addressLocality":"San Antonio","addressRegion":"TX","addressCountry":"US"},
    "areaServed":["San Antonio metro","Austin","Texas Hill Country"],
    "openingHoursSpecification":[
      {"@type":"OpeningHoursSpecification","dayOfWeek":["Monday","Tuesday","Wednesday","Thursday","Friday"],"opens":"09:00","closes":"18:00"},
      {"@type":"OpeningHoursSpecification","dayOfWeek":["Saturday"],"opens":"09:00","closes":"18:00","description":"By appointment only"}
    ],
    "description":"Luxury custom aquariums, design & build, and white-glove maintenance with IoT monitoring."
  }
  </script>
</head>
<body class="theme">
<header class="site-header">
  <div class="container nav">
    <a class="brand wordmark" href="/index.html" aria-label="Aureus Aquatics">Aureus Aquatics</a>
    <nav class="primary-nav" id="nav">
      <a href="/design-build.html">Design &amp; Build</a>
      <a href="/services.html">Services</a>
      <a href="/gallery.html">Gallery</a>
      <a href="/about.html">About</a>
      <a class="btn btn-gold" href="/contact.html">Request a Quote</a>
    </nav>
    <button class="hamburger" aria-label="Open navigation" onclick="toggleNav()"><span></span><span></span><span></span></button>
  </div>
</header>

<section class="hero">
  <div class="container hero-inner">
    <div class="hero-copy">
      <h1>Living art, engineered with precision.</h1>
      <p>Custom 100–1,000+ gallon installations with silent life-support, engineered cabinetry, and proactive IoT monitoring. Bespoke design. Impeccable execution.</p>
      <div class="cta-row">
        <a class="btn btn-gold" href="/design-build.html">Start a Custom Tank</a>
        <a class="btn btn-ghost" href="/services.html">Maintenance &amp; IoT</a>
      </div>
      <ul class="trust">
        <li>San Antonio • Austin • Hill Country</li>
        <li>Licensed • Insured • Discreet</li>
      </ul>
    </div>
    <div class="hero-media">
      <img src="/assets/hero.svg" alt="Luxury reef aquarium">
    </div>
  </div>
</section>

<section class="promises container">
  <ul class="promise-list">
    <li>Whisper-quiet life-support, engineered for your space</li>
    <li>Discreet white-glove installation &amp; care</li>
    <li>Proactive IoT monitoring (Tier 2+), with alerts &amp; dosing automation</li>
  </ul>
</section>

<section class="pillars container">
  <div class="pillar">
    <h3>Design &amp; Build</h3>
    <p>Six tiers from 100–150g entry to flagship 1,000g+. Structural, electrical, and acoustics handled end-to-end.</p>
    <a href="/design-build.html" class="link">Explore builds →</a>
  </div>
  <div class="pillar">
    <h3>White-Glove Service</h3>
    <p>Discreet maintenance plans with water chemistry management, livestock care, and emergency callouts.</p>
    <a href="/services.html" class="link">View plans →</a>
  </div>
  <div class="pillar">
    <h3>IoT Monitoring</h3>
    <p>Apex or GHL controllers from Tier 2+. Remote alerts, dosing automation, and health dashboards.</p>
    <a href="/services.html#iot" class="link">How it works →</a>
  </div>
</section>

<section class="band band-dark">
  <div class="container band-grid">
    <div>
      <h2>Quiet power. Museum-grade clarity.</h2>
      <p>We standardize on best-in-class pumps, skimmers, and lighting, tuned for near-silent operation and perfect PAR across your aquascape.</p>
    </div>
    <ul class="spec-list">
      <li>Schedule 80 plumbing with true-union valves</li>
      <li>GFCI/AFCI electrical, drip loops, and surge protection</li>
      <li>Leak &amp; flow sensors with SMS/email alerts</li>
    </ul>
  </div>
</section>

<section class="cta container center">
  <h2>Ready to design your statement piece?</h2>
  <p>Tell us your vision. We’ll engineer the rest.</p>
  <div class="cta-row center">
    <a class="btn btn-gold" href="/contact.html">Request a Design Consult</a>
    <a class="btn btn-ghost" href="https://checkout.stripe.com/pay/YOUR_CHECKOUT_LINK">Pay Design Retainer</a>
  </div>
</section>

<footer class="site-footer">
  <div class="container footer-grid">
    <div>
      <div class="wordmark-foot">Aureus Aquatics</div>
      <p>Luxury custom aquariums &amp; white-glove services in San Antonio, TX.</p>
    </div>
    <div>
      <h4>Explore</h4>
      <ul>
        <li><a href="/design-build.html">Design &amp; Build</a></li>
        <li><a href="/services.html">Maintenance &amp; IoT</a></li>
        <li><a href="/gallery.html">Gallery</a></li>
        <li><a href="/about.html">About</a></li>
      </ul>
    </div>
    <div>
      <h4>Contact</h4>
      <ul>
        <li>San Antonio, Texas — By appointment only</li>
        <li><a href="tel:+12100000000">(210) 000-0000</a></li>
        <li><a href="mailto:hello@aureusaquatics.com">hello@aureusaquatics.com</a></li>
      </ul>
      <p class="service-area">San Antonio • Austin • Hill Country</p>
    </div>
    <div>
      <h4>Stay in touch</h4>
      <form class="subscribe" action="https://YOUR_DC.list-manage.com/subscribe/post?u=YOUR_U_ID&amp;id=YOUR_LIST_ID" method="post" target="_blank" novalidate>
        <input type="email" name="EMAIL" placeholder="Your email" required>
        <button class="btn btn-gold" type="submit">Subscribe</button>
        <small class="note">We send occasional updates only.</small>
      </form>
    </div>
  </div>
  <div class="container fineprint">
    <p>© <span id="year"></span> Aureus Aquatics. All rights reserved.</p>
    <p><a href="/privacy.html">Privacy</a> • <a href="/terms.html">Terms</a></p>
  </div>
</footer>
<script src="/js/main.js"></script>
</body>
</html>
EOF

# ---------- design-build.html ----------
cat > design-build.html <<'EOF'
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Design & Build | Aureus Aquatics</title>
  <meta name="description" content="Custom aquariums from concept to commissioning: structural, electrical, cabinetry, aquascape, and silent life-support.">
  <link rel="stylesheet" href="/css/styles.css"><link rel="icon" href="/assets/favicon.svg" type="image/svg+xml">
</head><body class="theme">
<header class="site-header"><div class="container nav">
  <a class="brand wordmark" href="/index.html">Aureus Aquatics</a>
  <nav class="primary-nav" id="nav">
    <a href="/design-build.html" aria-current="page">Design &amp; Build</a>
    <a href="/services.html">Services</a>
    <a href="/gallery.html">Gallery</a>
    <a href="/about.html">About</a>
    <a class="btn btn-gold" href="/contact.html">Request a Quote</a>
  </nav><button class="hamburger" onclick="toggleNav()"><span></span><span></span><span></span></button>
</div></header>

<section class="page-hero container">
  <h1>Custom Design &amp; Build</h1>
  <p>From concept to commissioning: structural, electrical, cabinetry, aquascape, and silent life-support.</p>
</section>

<section class="container grid-2">
  <div>
    <h2>Tiered Builds</h2>
    <p>Six engineered tiers starting at 100–150g through 1,000g+ flagship installations. Every project is designed for safety, silence, and long-term stability.</p>
    <ul class="check">
      <li>Factory Acceptance Test (FAT)</li>
      <li>Incoming QA &amp; Site Acceptance Test (SAT)</li>
      <li>24-hour leak check, GFCI test, PAR map</li>
    </ul>
  </div>
  <div class="card">
    <h3>Typical Timeline</h3>
    <ol class="timeline">
      <li>Design consult &amp; site survey</li>
      <li>Engineering &amp; approvals</li>
      <li>Fabrication &amp; QA</li>
      <li>Delivery &amp; installation</li>
      <li>Commissioning &amp; handover</li>
    </ol>
  </div>
</section>

<section class="container">
  <h2>Featured Specifications</h2>
  <div class="spec-cards">
    <article class="card"><h3>Glass &amp; Acrylic</h3><p>Low-iron glass, polished seams; acrylic for complex curves. Euro-brace and external overflows for clean lines.</p></article>
    <article class="card"><h3>Life Support</h3><p>Oversized skimmers, silent DC returns, redundant heaters, UV sterilization, and media reactors where needed.</p></article>
    <article class="card"><h3>Lighting</h3><p>Ecotech/Kessil arrays tuned to target PAR, spectrum plans per biotope, sunrise/sunset programming.</p></article>
  </div>
</section>

<section class="container center">
  <a class="btn btn-gold" href="/contact.html">Request a Quote</a>
</section>

<footer class="site-footer"><div class="container footer-grid">
  <div><div class="wordmark-foot">Aureus Aquatics</div><p>Luxury custom aquariums &amp; white-glove services in San Antonio, TX.</p></div>
  <div><h4>Explore</h4><ul><li><a href="/design-build.html">Design &amp; Build</a></li><li><a href="/services.html">Maintenance &amp; IoT</a></li><li><a href="/gallery.html">Gallery</a></li><li><a href="/about.html">About</a></li></ul></div>
  <div><h4>Contact</h4><ul><li>San Antonio, Texas — By appointment only</li><li><a href="tel:+12100000000">(210) 000-0000</a></li><li><a href="mailto:hello@aureusaquatics.com">hello@aureusaquatics.com</a></li></ul><p class="service-area">San Antonio • Austin • Hill Country</p></div>
  <div><h4>Stay in touch</h4><form class="subscribe" action="https://YOUR_DC.list-manage.com/subscribe/post?u=YOUR_U_ID&amp;id=YOUR_LIST_ID" method="post" target="_blank" novalidate><input type="email" name="EMAIL" placeholder="Your email" required><button class="btn btn-gold" type="submit">Subscribe</button><small class="note">We send occasional updates only.</small></form></div>
</div><div class="container fineprint"><p>© <span id="year"></span> Aureus Aquatics. All rights reserved.</p><p><a href="/privacy.html">Privacy</a> • <a href="/terms.html">Terms</a></p></div></footer>
<script src="/js/main.js"></script>
</body></html>
EOF

# ---------- services.html ----------
cat > services.html <<'EOF'
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Services & Maintenance | Aureus Aquatics</title>
  <meta name="description" content="White-glove maintenance and IoT monitoring: Essential, Premier, Concierge, and Signature plans.">
  <link rel="stylesheet" href="/css/styles.css"><link rel="icon" href="/assets/favicon.svg" type="image/svg+xml">
</head><body class="theme">
<header class="site-header"><div class="container nav">
  <a class="brand wordmark" href="/index.html">Aureus Aquatics</a>
  <nav class="primary-nav" id="nav">
    <a href="/design-build.html">Design &amp; Build</a>
    <a href="/services.html" aria-current="page">Services</a>
    <a href="/gallery.html">Gallery</a>
    <a href="/about.html">About</a>
    <a class="btn btn-gold" href="/contact.html">Request a Quote</a>
  </nav><button class="hamburger" onclick="toggleNav()"><span></span><span></span><span></span></button>
</div></header>

<section class="page-hero container">
  <h1>White-Glove Maintenance &amp; IoT Monitoring</h1>
  <p>Discreet weekly/bi-weekly plans, water chemistry stewardship, livestock care, and 24/7 alerting from Tier 2+.</p>
</section>

<section class="container grid-2">
  <div>
    <h2>Membership Plans</h2>
    <div class="card"><h3>Essential Care</h3><ul class="check"><li>Bi-weekly visits</li><li>Core water chemistry checks</li><li>Glass and substrate cleaning</li></ul></div>
    <div class="card"><h3>Premier Care</h3><ul class="check"><li>Weekly visits</li><li>Advanced testing &amp; dosing adjustments</li><li>Livestock health checks</li></ul></div>
    <div class="card"><h3>Concierge Care</h3><ul class="check"><li>Weekly visits with IoT integration (Tier 2+)</li><li>Equipment monitoring &amp; backup gear management</li><li>Priority response support</li></ul></div>
    <div class="card"><h3>Signature Care</h3><ul class="check"><li>24/7 standby &amp; emergency callouts</li><li>Quarterly aquascape refresh</li><li>White-glove livestock sourcing &amp; acclimation</li></ul></div>
  </div>
  <div id="iot" class="card">
    <h3>IoT Monitoring</h3>
    <p>Smart-ready controllers with remote alerts, dosing automation, and performance dashboards.</p>
    <ul class="dash"><li>Neptune Apex or GHL Profilux</li><li>Leak sensors &amp; flow meters</li><li>pH, ORP, salinity, temperature</li><li>Dosing schedules &amp; reagent tracking</li></ul>
    <div class="brand-logos small"><img src="/assets/logo-apex.svg" alt="Neptune Apex"><img src="/assets/logo-ghl.svg" alt="GHL Profilux"></div>
  </div>
</section>

<section class="container center">
  <a class="btn btn-gold" href="/contact.html">Request a Maintenance Assessment</a>
</section>

<footer class="site-footer"><div class="container footer-grid">
  <div><div class="wordmark-foot">Aureus Aquatics</div><p>Luxury custom aquariums &amp; white-glove services in San Antonio, TX.</p></div>
  <div><h4>Explore</h4><ul><li><a href="/design-build.html">Design &amp; Build</a></li><li><a href="/services.html">Maintenance &amp; IoT</a></li><li><a href="/gallery.html">Gallery</a></li><li><a href="/about.html">About</a></li></ul></div>
  <div><h4>Contact</h4><ul><li>San Antonio, Texas — By appointment only</li><li><a href="tel:+12100000000">(210) 000-0000</a></li><li><a href="mailto:hello@aureusaquatics.com">hello@aureusaquatics.com</a></li></ul><p class="service-area">San Antonio • Austin • Hill Country</p></div>
  <div><h4>Stay in touch</h4><form class="subscribe" action="https://YOUR_DC.list-manage.com/subscribe/post?u=YOUR_U_ID&amp;id=YOUR_LIST_ID" method="post" target="_blank" novalidate><input type="email" name="EMAIL" placeholder="Your email" required><button class="btn btn-gold" type="submit">Subscribe</button><small class="note">We send occasional updates only.</small></form></div>
</div><div class="container fineprint"><p>© <span id="year"></span> Aureus Aquatics. All rights reserved.</p><p><a href="/privacy.html">Privacy</a> • <a href="/terms.html">Terms</a></p></div></footer>
<script src="/js/main.js"></script>
</body></html>
EOF

# ---------- gallery.html ----------
cat > gallery.html <<'EOF'
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Gallery | Aureus Aquatics</title>
  <meta name="description" content="Selected work and concept renders. Your project deserves the spotlight next.">
  <link rel="stylesheet" href="/css/styles.css"><link rel="icon" href="/assets/favicon.svg" type="image/svg+xml">
</head><body class="theme">
<header class="site-header"><div class="container nav">
  <a class="brand wordmark" href="/index.html">Aureus Aquatics</a>
  <nav class="primary-nav" id="nav">
    <a href="/design-build.html">Design &amp; Build</a>
    <a href="/services.html">Services</a>
    <a href="/gallery.html" aria-current="page">Gallery</a>
    <a href="/about.html">About</a>
    <a class="btn btn-gold" href="/contact.html">Request a Quote</a>
  </nav><button class="hamburger" onclick="toggleNav()"><span></span><span></span><span></span></button>
</div></header>

<section class="page-hero container"><h1>Gallery</h1><p>Selected work and concept renders. Your project deserves the spotlight next.</p></section>
<section class="container gallery-grid">
  <img src="/assets/gallery-1.svg" alt="Aquarium 1">
  <img src="/assets/gallery-2.svg" alt="Aquarium 2">
  <img src="/assets/gallery-3.svg" alt="Aquarium 3">
  <img src="/assets/gallery-4.svg" alt="Aquarium 4">
</section>

<footer class="site-footer"><div class="container footer-grid">
  <div><div class="wordmark-foot">Aureus Aquatics</div><p>Luxury custom aquariums &amp; white-glove services in San Antonio, TX.</p></div>
  <div><h4>Explore</h4><ul><li><a href="/design-build.html">Design &amp; Build</a></li><li><a href="/services.html">Maintenance &amp; IoT</a></li><li><a href="/gallery.html">Gallery</a></li><li><a href="/about.html">About</a></li></ul></div>
  <div><h4>Contact</h4><ul><li>San Antonio, Texas — By appointment only</li><li><a href="tel:+12100000000">(210) 000-0000</a></li><li><a href="mailto:hello@aureusaquatics.com">hello@aureusaquatics.com</a></li></ul><p class="service-area">San Antonio • Austin • Hill Country</p></div>
  <div><h4>Stay in touch</h4><form class="subscribe" action="https://YOUR_DC.list-manage.com/subscribe/post?u=YOUR_U_ID&amp;id=YOUR_LIST_ID" method="post" target="_blank" novalidate><input type="email" name="EMAIL" placeholder="Your email" required><button class="btn btn-gold" type="submit">Subscribe</button><small class="note">We send occasional updates only.</small></form></div>
</div><div class="container fineprint"><p>© <span id="year"></span> Aureus Aquatics. All rights reserved.</p><p><a href="/privacy.html">Privacy</a> • <a href="/terms.html">Terms</a></p></div></footer>
<script src="/js/main.js"></script>
</body></html>
EOF

# ---------- about.html ----------
cat > about.html <<'EOF'
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>About | Aureus Aquatics</title>
  <meta name="description" content="Quiet engineering, clean aesthetics, and stewardship of living systems.">
  <link rel="stylesheet" href="/css/styles.css"><link rel="icon" href="/assets/favicon.svg" type="image/svg+xml">
</head><body class="theme">
<header class="site-header"><div class="container nav">
  <a class="brand wordmark" href="/index.html">Aureus Aquatics</a>
  <nav class="primary-nav" id="nav">
    <a href="/design-build.html">Design &amp; Build</a>
    <a href="/services.html">Services</a>
    <a href="/gallery.html">Gallery</a>
    <a href="/about.html" aria-current="page">About</a>
    <a class="btn btn-gold" href="/contact.html">Request a Quote</a>
  </nav><button class="hamburger" onclick="toggleNav()"><span></span><span></span><span></span></button>
</div></header>

<section class="page-hero container">
  <h1>About Aureus Aquatics</h1>
  <p>Founded in San Antonio by Joseph Smith and Hanna Smith to bring museum-grade aquariums to private residences and discerning commercial spaces.</p>
</section>

<section class="container grid-2">
  <div class="card">
    <h3>Our Ethos</h3>
    <p>Quiet engineering, clean aesthetics, and stewardship of living systems. We partner with architects and interior designers to deliver statement pieces that thrive.</p>
  </div>
  <div class="card">
    <h3>Credentials</h3>
    <ul class="check">
      <li>Licensed &amp; insured</li>
      <li>Trade partners: electrical &amp; plumbing</li>
      <li>Eco-conscious sourcing</li>
    </ul>
  </div>
</section>

<footer class="site-footer"><div class="container footer-grid">
  <div><div class="wordmark-foot">Aureus Aquatics</div><p>Luxury custom aquariums &amp; white-glove services in San Antonio, TX.</p></div>
  <div><h4>Explore</h4><ul><li><a href="/design-build.html">Design &amp; Build</a></li><li><a href="/services.html">Maintenance &amp; IoT</a></li><li><a href="/gallery.html">Gallery</a></li><li><a href="/about.html">About</a></li></ul></div>
  <div><h4>Contact</h4><ul><li>San Antonio, Texas — By appointment only</li><li><a href="tel:+12100000000">(210) 000-0000</a></li><li><a href="mailto:hello@aureusaquatics.com">hello@aureusaquatics.com</a></li></ul><p class="service-area">San Antonio • Austin • Hill Country</p></div>
  <div><h4>Stay in touch</h4><form class="subscribe" action="https://YOUR_DC.list-manage.com/subscribe/post?u=YOUR_U_ID&amp;id=YOUR_LIST_ID" method="post" target="_blank" novalidate><input type="email" name="EMAIL" placeholder="Your email" required><button class="btn btn-gold" type="submit">Subscribe</button><small class="note">We send occasional updates only.</small></form></div>
</div><div class="container fineprint"><p>© <span id="year"></span> Aureus Aquatics. All rights reserved.</p><p><a href="/privacy.html">Privacy</a> • <a href="/terms.html">Terms</a></p></div></footer>
<script src="/js/main.js"></script>
</body></html>
EOF

# ---------- contact.html ----------
cat > contact.html <<'EOF'
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Contact & Quote | Aureus Aquatics</title>
  <meta name="description" content="Request a quote for custom aquariums or maintenance plans in San Antonio, Austin, and the Hill Country.">
  <link rel="stylesheet" href="/css/styles.css"><link rel="icon" href="/assets/favicon.svg" type="image/svg+xml">
</head><body class="theme">
<header class="site-header"><div class="container nav">
  <a class="brand wordmark" href="/index.html">Aureus Aquatics</a>
  <nav class="primary-nav" id="nav">
    <a href="/design-build.html">Design &amp; Build</a>
    <a href="/services.html">Services</a>
    <a href="/gallery.html">Gallery</a>
    <a href="/about.html">About</a>
    <a class="btn btn-gold" href="/contact.html" aria-current="page">Request a Quote</a>
  </nav><button class="hamburger" onclick="toggleNav()"><span></span><span></span><span></span></button>
</div></header>

<section class="page-hero container">
  <h1>Request a Quote</h1>
  <p>Tell us about your space, vision, and target size. We’ll follow up to schedule a site survey.</p>
</section>

<section class="container grid-2">
  <div class="card form">
    <div class="hs-embed">
      <!-- HubSpot form embed placeholder: add your portalId and formId here -->
    </div>
    <hr class="or">
    <form class="fallback" method="post" action="https://formspree.io/f/YOUR_FORM_ID" onsubmit="return validateForm(this)">
      <div class="field"><label>Full Name</label><input name="name" required></div>
      <div class="field"><label>Email</label><input name="email" type="email" required></div>
      <div class="field"><label>Phone</label><input name="phone" type="tel"></div>
      <div class="field"><label>Service</label>
        <select name="service">
          <option>Custom Design & Build</option>
          <option>Maintenance & IoT</option>
          <option>Both</option>
        </select>
      </div>
      <div class="field"><label>Estimated Tank Size</label>
        <select name="size">
          <option>100–150 gallons</option>
          <option>150–300 gallons</option>
          <option>300–600 gallons</option>
          <option>600–1,000+ gallons</option>
        </select>
      </div>
      <div class="field"><label>Project Location (City)</label><input name="city" required></div>
      <div class="field"><label>Message</label><textarea name="message" rows="5"></textarea></div>
      <button class="btn btn-gold">Send Request</button>
    </form>
    <!-- Optional booking button — uncomment when ready -->
    <!-- <p><a class="btn btn-ghost" href="https://calendly.com/YOUR_LINK/30min">Schedule a Design Consult</a></p> -->
  </div>
  <div class="card">
    <h3>Contact</h3>
    <p>San Antonio, Texas — By appointment only.</p>
    <p><a href="tel:+12100000000">(210) 000-0000</a><br><a href="mailto:hello@aureusaquatics.com">hello@aureusaquatics.com</a></p>
    <h3>Service Area</h3>
    <p>San Antonio • Austin • Hill Country</p>
    <h3>Design Retainer</h3>
    <p>Secure your design consultation with a refundable retainer.</p>
    <a class="btn btn-gold" href="https://checkout.stripe.com/pay/YOUR_CHECKOUT_LINK" target="_blank" rel="noopener">Pay Design Retainer</a>
  </div>
</section>

<footer class="site-footer"><div class="container footer-grid">
  <div><div class="wordmark-foot">Aureus Aquatics</div><p>Luxury custom aquariums &amp; white-glove services in San Antonio, TX.</p></div>
  <div><h4>Explore</h4><ul><li><a href="/design-build.html">Design &amp; Build</a></li><li><a href="/services.html">Maintenance &amp; IoT</a></li><li><a href="/gallery.html">Gallery</a></li><li><a href="/about.html">About</a></li></ul></div>
  <div><h4>Contact</h4><ul><li>San Antonio, Texas — By appointment only</li><li><a href="tel:+12100000000">(210) 000-0000</a></li><li><a href="mailto:hello@aureusaquatics.com">hello@aureusaquatics.com</a></li></ul><p class="service-area">San Antonio • Austin • Hill Country</p></div>
  <div><h4>Stay in touch</h4><form class="subscribe" action="https://YOUR_DC.list-manage.com/subscribe/post?u=YOUR_U_ID&amp;id=YOUR_LIST_ID" method="post" target="_blank" novalidate><input type="email" name="EMAIL" placeholder="Your email" required><button class="btn btn-gold" type="submit">Subscribe</button><small class="note">We send occasional updates only.</small></form></div>
</div><div class="container fineprint"><p>© <span id="year"></span> Aureus Aquatics. All rights reserved.</p><p><a href="/privacy.html">Privacy</a> • <a href="/terms.html">Terms</a></p></div></footer>
<script src="/js/main.js"></script>
</body></html>
EOF

# ---------- privacy.html ----------
cat > privacy.html <<'EOF'
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Privacy Policy | Aureus Aquatics</title>
  <meta name="description" content="Privacy policy including Data & IoT Privacy for Apex/GHL monitoring.">
  <link rel="stylesheet" href="/css/styles.css"><link rel="icon" href="/assets/favicon.svg" type="image/svg+xml">
</head><body class="theme">
<header class="site-header"><div class="container nav">
  <a class="brand wordmark" href="/index.html">Aureus Aquatics</a>
  <nav class="primary-nav" id="nav">
    <a href="/design-build.html">Design &amp; Build</a>
    <a href="/services.html">Services</a>
    <a href="/gallery.html">Gallery</a>
    <a href="/about.html">About</a>
    <a class="btn btn-gold" href="/contact.html">Request a Quote</a>
  </nav><button class="hamburger" onclick="toggleNav()"><span></span><span></span><span></span></button>
</div></header>

<section class="container page-legal">
  <h1>Privacy Policy</h1>
  <p>This Privacy Policy explains how Aureus Aquatics collects, uses, and safeguards information.</p>

  <h2>Website Data</h2>
  <p>We collect basic analytics (page views, device info) to improve the site. We may use cookies for functionality and analytics.</p>

  <h2>Quotes & Communication</h2>
  <p>When you submit a quote request, we collect contact details and project information to respond and prepare a proposal. We never sell your information.</p>

  <h2>Data &amp; IoT Privacy</h2>
  <p>For clients who enable monitoring (Apex or GHL), aquarium sensors may collect pH, ORP, salinity, temperature, water level, leak and flow events. This data is used to generate alerts, support proactive maintenance, and ensure system stability.</p>
  <ul>
    <li><strong>Personal data:</strong> We do not collect personal or biometric data via aquarium sensors.</li>
    <li><strong>Access:</strong> Remote access is limited to authorized Aureus technicians and can be revoked at any time.</li>
    <li><strong>Storage:</strong> Data may be stored by the controller vendor (Apex/GHL) and/or Aureus for the period necessary to provide services.</li>
    <li><strong>Opt-in:</strong> IoT monitoring is optional and can be disabled on request.</li>
  </ul>

  <h2>Your Choices</h2>
  <p>Contact us at <a href="mailto:privacy@aureusaquatics.com">privacy@aureusaquatics.com</a> to access, correct, or delete your information.</p>
</section>

<footer class="site-footer"><div class="container fineprint"><p>© <span id="year"></span> Aureus Aquatics. All rights reserved.</p><p><a href="/privacy.html">Privacy</a> • <a href="/terms.html">Terms</a></p></div></footer>
<script src="/js/main.js"></script>
</body></html>
EOF

# ---------- terms.html ----------
cat > terms.html <<'EOF'
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Terms of Service | Aureus Aquatics</title>
  <meta name="description" content="Terms of service for Aureus Aquatics website and services.">
  <link rel="stylesheet" href="/css/styles.css"><link rel="icon" href="/assets/favicon.svg" type="image/svg+xml">
</head><body class="theme">
<header class="site-header"><div class="container nav">
  <a class="brand wordmark" href="/index.html">Aureus Aquatics</a>
  <nav class="primary-nav" id="nav">
    <a href="/design-build.html">Design &amp; Build</a>
    <a href="/services.html">Services</a>
    <a href="/gallery.html">Gallery</a>
    <a href="/about.html">About</a>
    <a class="btn btn-gold" href="/contact.html">Request a Quote</a>
  </nav><button class="hamburger" onclick="toggleNav()"><span></span><span></span><span></span></button>
</div></header>

<section class="container page-legal">
  <h1>Terms of Service</h1>
  <p>These terms govern your use of Aureus Aquatics’ website and services. Project work is covered by a written agreement that defines scope, pricing, payment milestones, warranty, and limits of liability. IoT services require client consent and network access.</p>
</section>

<footer class="site-footer"><div class="container fineprint"><p>© <span id="year"></span> Aureus Aquatics. All rights reserved.</p><p><a href="/privacy.html">Privacy</a> • <a href="/terms.html">Terms</a></p></div></footer>
<script src="/js/main.js"></script>
</body></html>
EOF

# ---------- sitemap.xml ----------
cat > sitemap.xml <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url><loc>https://www.aureusaquatics.com/</loc></url>
  <url><loc>https://www.aureusaquatics.com/design-build.html</loc></url>
  <url><loc>https://www.aureusaquatics.com/services.html</loc></url>
  <url><loc>https://www.aureusaquatics.com/gallery.html</loc></url>
  <url><loc>https://www.aureusaquatics.com/about.html</loc></url>
  <url><loc>https://www.aureusaquatics.com/contact.html</loc></url>
  <url><loc>https://www.aureusaquatics.com/privacy.html</loc></url>
  <url><loc>https://www.aureusaquatics.com/terms.html</loc></url>
</urlset>
EOF

# ---------- robots.txt ----------
cat > robots.txt <<'EOF'
User-agent: *
Allow: /
Sitemap: https://www.aureusaquatics.com/sitemap.xml
EOF

# ---------- css/styles.css ----------
cat > css/styles.css <<'EOF'
:root{--navy:#0B1220;--navy2:#0F1A2B;--gold:#C9A227;--gold2:#B28F24;--sand:#F6F4EE;--ink:#0E0F14;--slate:#465368;--white:#FFFFFF}
*{box-sizing:border-box}html,body{margin:0;padding:0;background:var(--sand);color:var(--ink)}
body{font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Arial,sans-serif;line-height:1.6}
h1,h2,h3,h4{font-family:"Playfair Display",Georgia,serif;margin:0 0 .5rem;color:var(--ink)}
a{color:var(--ink);text-decoration:none}a:hover{text-decoration:underline}
.container{max-width:1200px;padding:0 24px;margin:0 auto}
.site-header{position:sticky;top:0;z-index:10;background:linear-gradient(180deg,var(--navy),var(--navy2))}
.site-header .nav{display:flex;align-items:center;justify-content:space-between;height:72px}
.brand.wordmark{color:#fff;font-family:"Playfair Display",Georgia,serif;font-size:22px;letter-spacing:.6px}
.primary-nav a{color:#fff;margin-left:24px}
.btn{display:inline-block;padding:12px 18px;border-radius:8px;border:1px solid transparent;font-weight:600}
.btn-gold{background:var(--gold);color:var(--ink)}.btn-gold:hover{background:var(--gold2)}
.btn-ghost{border-color:rgba(255,255,255,.3);color:#fff}.btn-ghost:hover{background:rgba(255,255,255,.1)}
.hamburger{display:none;background:none;border:none}.hamburger span{display:block;width:24px;height:2px;background:#fff;margin:5px 0}
.hero{background:linear-gradient(90deg,var(--navy),var(--navy2));color:#fff;padding:64px 0}
.hero-inner{display:grid;gap:40px;grid-template-columns:1.2fr 1fr;align-items:center}
.hero-copy h1{color:#fff;font-size:clamp(32px,4vw,56px);line-height:1.05}
.hero-copy p{color:#E6E9F2;font-size:18px}
.cta-row{display:flex;gap:14px;margin:12px 0 8px}
.trust{list-style:none;padding:0;margin:10px 0 0;display:flex;gap:18px;color:#C7CEDB;font-size:14px}
.hero-media img{width:100%;border-radius:16px;box-shadow:0 20px 60px rgba(0,0,0,.35)}
.promises{padding:10px 0 0}
.promise-list{list-style:none;display:flex;flex-wrap:wrap;gap:16px 28px;padding:0;margin:12px 0 0}
.promise-list li::before{content:"• ";color:var(--gold)}
.pillars{display:grid;grid-template-columns:repeat(3,1fr);gap:22px;padding:48px 0}
.pillar{background:#fff;padding:22px;border-radius:14px;box-shadow:0 10px 30px rgba(0,0,0,.06)}
.link{color:var(--gold);font-weight:600}
.band{padding:56px 0}
.band-dark{background:var(--navy);color:#fff}.band-dark h2{color:#fff}
.band-grid{display:grid;grid-template-columns:1.1fr .9fr;gap:28px}
.spec-list{list-style:none;padding-left:0}.spec-list li::before{content:"• ";color:var(--gold)}
.center{text-align:center}.cta{padding:56px 0}.page-hero{padding:40px 0}
.grid-2{display:grid;grid-template-columns:1fr 1fr;gap:24px}
.card{background:#fff;padding:22px;border-radius:14px;box-shadow:0 10px 30px rgba(0,0,0,.06)}
.check{list-style:none;padding-left:0}.check li::before{content:"✓ ";color:var(--gold);font-weight:700}
.timeline{padding-left:18px}
.spec-cards{display:grid;grid-template-columns:repeat(3,1fr);gap:20px}
.gallery-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:10px;padding-bottom:40px}
.gallery-grid img{width:100%;border-radius:10px}
.form .field{display:flex;flex-direction:column;gap:6px;margin-bottom:14px}
.form input,.form select,.form textarea{padding:12px;border:1px solid #D8DEE8;border-radius:10px;font-size:16px}
.form button{margin-top:8px}
.site-footer{background:var(--navy);color:#fff;padding-top:36px}
.footer-grid{display:grid;grid-template-columns:1.2fr 1fr 1fr 1fr;gap:20px;padding-bottom:16px}
.site-footer a{color:#D8DFF1}
.wordmark-foot{font-family:"Playfair Display",Georgia,serif;font-size:20px;margin-bottom:8px}
.subscribe input{width:100%;margin-bottom:8px}
.fineprint{display:flex;justify-content:space-between;border-top:1px solid rgba(255,255,255,.1);padding:10px 0 18px;color:#A9B2C6}
.note{color:var(--slate);font-size:12px;display:block;margin-top:6px}
.page-legal{padding:40px 0 80px}
@media (max-width:980px){
  .hero-inner{grid-template-columns:1fr}
  .promise-list{display:block}
  .pillars{grid-template-columns:1fr}
  .spec-cards{grid-template-columns:1fr}
  .band-grid{grid-template-columns:1fr}
  .gallery-grid{grid-template-columns:repeat(2,1fr)}
  .grid-2{grid-template-columns:1fr}
  .primary-nav{display:none;position:absolute;top:72px;left:0;right:0;background:var(--navy2);padding:16px 24px}
  .primary-nav a{display:block;margin:10px 0}
  .hamburger{display:block}
}
EOF

# ---------- js/main.js ----------
cat > js/main.js <<'EOF'
function toggleNav(){
  const nav=document.getElementById('nav');
  nav.style.display=(nav.style.display==='block')?'none':'block';
}
function validateForm(form){
  if(!form.name.value||!form.email.value){alert('Please enter name and email.');return false;}
  return true;
}
document.addEventListener('DOMContentLoaded',()=>{const y=document.getElementById('year');if(y){y.textContent=new Date().getFullYear();}});
EOF

# ---------- assets ----------
cat > assets/favicon.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"><circle cx="16" cy="16" r="14" fill="#C9A227"/></svg>
EOF

cat > assets/wordmark.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 340 32">
  <text x="0" y="24" font-family="Georgia, 'Playfair Display', serif" font-size="24" fill="#FFFFFF">Aureus Aquatics</text>
</svg>
EOF

cat > assets/wordmark-foot.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 340 32">
  <text x="0" y="24" font-family="Georgia, 'Playfair Display', serif" font-size="24" fill="#FFFFFF">Aureus Aquatics</text>
</svg>
EOF

for n in apex ghl ecotech kessil; do
  cat > assets/logo-$n.svg <<EOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 140 28"><rect width="140" height="28" rx="6" fill="#F6F4EE"/><text x="10" y="19" font-family="Inter, Arial" font-size="12" fill="#0E0F14">$(tr '[:lower:]' '[:upper:]' <<< $n)</text></svg>
EOF
done

cat > assets/hero.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1600 900">
  <rect width="1600" height="900" fill="#0B1220"/>
  <text x="50%" y="50%" dominant-baseline="middle" text-anchor="middle" fill="#FFFFFF" font-size="48" font-family="Inter, Arial">Aureus Aquatics — Hero</text>
</svg>
EOF

for i in 1 2 3 4; do
cat > assets/gallery-$i.svg <<EOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1600 900">
  <rect width="1600" height="900" fill="#102030"/>
  <text x="50%" y="50%" dominant-baseline="middle" text-anchor="middle" fill="#FFFFFF" font-size="48" font-family="Inter, Arial">Gallery $i</text>
</svg>
EOF
done

# ---------- README ----------
cat > README.md <<'EOF'
# Aureus Aquatics Website

Static site (HTML/CSS/JS) built for GitHub Pages + Cloudflare.

## Customize
- **GA4**: Replace `G-XXXXXXXXXX` in `<head>` across pages with your GA4 Measurement ID.
- **Google Search Console**: Replace `YOUR_SEARCH_CONSOLE_TOKEN`.
- **Mailchimp**: Replace the footer form `action` URL with your **Embedded form action** from Mailchimp (Audience → Signup forms → Embedded forms).
- **HubSpot**: In `contact.html`, paste your embed snippet (portalId + formId) into the placeholder comment.
- **Stripe**: Replace the “Pay Design Retainer” Checkout link.

## Deploy on GitHub Pages
1. Repo Settings → Pages → Source: `Deploy from a branch`
2. Branch: `main` • Folder: `/ (root)` → Save.
3. Your site will publish at `https://<username>.github.io/<repo>/` (or custom domain).

## Connect Custom Domain (Cloudflare)
- In repo Settings → Pages → **Custom domain**: `www.yourdomain.com` (creates `CNAME`).
- Cloudflare DNS:
  - `www` → **CNAME** → `<username>.github.io` (Proxy **OFF** recommended).
  - Apex `yourdomain.com` → **A** records to GitHub Pages IPs:
    - 185.199.108.153
    - 185.199.109.153
    - 185.199.110.153
    - 185.199.111.153
- Turn on **Always Use HTTPS** in Cloudflare.

## OneDrive → GitHub workflow
- Keep this folder in OneDrive.
- Use GitHub Desktop or the web UI to upload/commit files from your OneDrive folder.
EOF

echo "✅ Site files created. Next: git add/commit/push, then enable GitHub Pages."
