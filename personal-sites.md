---
layout: page
title: Personal Sites
subtitle: A curated look at the websites I built and supported
permalink: /personal-sites/
full-width: true
---

<style>
  .personal-sites-page {
    --ps-bg: linear-gradient(180deg, #f8fafc 0%, #eef2ff 100%);
    --ps-text: #182033;
    --ps-muted: #5d6577;
    --ps-border: rgba(24, 32, 51, 0.12);
    --ps-shadow: 0 18px 45px rgba(15, 23, 42, 0.12);
    --ps-carrd: linear-gradient(135deg, #fef3c7 0%, #dbeafe 100%);
    --ps-grid: linear-gradient(135deg, #fce7f3 0%, #d1fae5 100%);
    --ps-casa: linear-gradient(135deg, #e0e7ff 0%, #cffafe 100%);
    color: var(--ps-text);
  }

  .personal-sites-page .page-hero {
    background: var(--ps-bg);
    border: 1px solid var(--ps-border);
    border-radius: 28px;
    box-shadow: var(--ps-shadow);
    padding: 2rem;
    margin-bottom: 2rem;
    position: relative;
    overflow: hidden;
  }

  .personal-sites-page .page-hero::after {
    content: "";
    position: absolute;
    inset: auto -6rem -8rem auto;
    width: 18rem;
    height: 18rem;
    border-radius: 999px;
    background: radial-gradient(circle, rgba(59, 130, 246, 0.18), rgba(59, 130, 246, 0));
    pointer-events: none;
  }

  .personal-sites-page .eyebrow {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.82rem;
    font-weight: 700;
    letter-spacing: 0.08em;
    text-transform: uppercase;
    color: #4f46e5;
    background: rgba(79, 70, 229, 0.08);
    border-radius: 999px;
    padding: 0.45rem 0.8rem;
    margin-bottom: 1rem;
  }

  .personal-sites-page .hero-grid {
    display: grid;
    grid-template-columns: minmax(0, 1.35fr) minmax(280px, 0.85fr);
    gap: 1.25rem;
    align-items: center;
  }

  .personal-sites-page .hero-copy h1 {
    font-size: clamp(2rem, 4vw, 3.5rem);
    line-height: 1.02;
    margin-bottom: 0.85rem;
    letter-spacing: -0.04em;
  }

  .personal-sites-page .hero-copy p {
    font-size: 1.05rem;
    line-height: 1.75;
    color: var(--ps-muted);
    margin-bottom: 1rem;
  }

  .personal-sites-page .hero-points {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 0.85rem;
  }

  .personal-sites-page .hero-point {
    background: rgba(255, 255, 255, 0.72);
    border: 1px solid var(--ps-border);
    border-radius: 18px;
    padding: 0.9rem 1rem;
  }

  .personal-sites-page .hero-point strong {
    display: block;
    font-size: 0.95rem;
    margin-bottom: 0.2rem;
  }

  .personal-sites-page .hero-point span {
    color: var(--ps-muted);
    font-size: 0.92rem;
  }

  .personal-sites-page .hero-panel {
    background: rgba(255, 255, 255, 0.78);
    border: 1px solid var(--ps-border);
    border-radius: 24px;
    padding: 1rem;
  }

  .personal-sites-page .mini-browser {
    border-radius: 20px;
    overflow: hidden;
    border: 1px solid rgba(24, 32, 51, 0.08);
    background: #ffffff;
  }

  .personal-sites-page .browser-bar {
    display: flex;
    align-items: center;
    gap: 0.45rem;
    padding: 0.8rem 0.95rem;
    background: rgba(15, 23, 42, 0.04);
  }

  .personal-sites-page .dot {
    width: 0.75rem;
    height: 0.75rem;
    border-radius: 999px;
  }

  .personal-sites-page .dot.red { background: #fb7185; }
  .personal-sites-page .dot.yellow { background: #fbbf24; }
  .personal-sites-page .dot.green { background: #34d399; }

  .personal-sites-page .address {
    margin-left: auto;
    font-size: 0.8rem;
    color: var(--ps-muted);
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .personal-sites-page .preview-core {
    min-height: 220px;
    padding: 1.2rem;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }

  .personal-sites-page .preview-core p {
    margin-bottom: 0;
  }

  .personal-sites-page .preview-title {
    font-size: 1.55rem;
    line-height: 1.15;
    font-weight: 800;
    margin-bottom: 0.35rem;
  }

  .personal-sites-page .preview-copy {
    max-width: 28rem;
    color: rgba(24, 32, 51, 0.82);
  }

  .personal-sites-page .preview-footer {
    display: flex;
    flex-wrap: wrap;
    gap: 0.45rem;
    margin-top: 1rem;
  }

  .personal-sites-page .preview-stack {
    display: grid;
    gap: 0.8rem;
  }

  .personal-sites-page .site-screenshot {
    border-radius: 18px;
    overflow: hidden;
    background: rgba(255, 255, 255, 0.66);
    border: 1px solid rgba(24, 32, 51, 0.1);
    box-shadow: 0 12px 28px rgba(15, 23, 42, 0.14);
  }

  .personal-sites-page .site-screenshot img {
    display: block;
    width: 100%;
    height: 230px;
    object-fit: cover;
    object-position: top center;
  }

  .personal-sites-page .hero-screenshot-grid {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 0.75rem;
    margin-top: 1rem;
  }

  .personal-sites-page .hero-screenshot-grid .site-screenshot img {
    height: 130px;
  }

  .personal-sites-page .screenshot-caption {
    display: flex;
    justify-content: space-between;
    gap: 0.5rem;
    align-items: center;
    padding: 0.65rem 0.8rem;
    background: rgba(255, 255, 255, 0.84);
    font-size: 0.82rem;
    color: var(--ps-muted);
  }

  .personal-sites-page .screenshot-caption strong {
    color: var(--ps-text);
    font-size: 0.88rem;
  }

  .personal-sites-page .pill {
    display: inline-flex;
    align-items: center;
    gap: 0.35rem;
    padding: 0.42rem 0.72rem;
    border-radius: 999px;
    background: rgba(255, 255, 255, 0.66);
    border: 1px solid rgba(24, 32, 51, 0.08);
    font-size: 0.85rem;
    font-weight: 600;
  }

  .personal-sites-page .site-card {
    border: 1px solid var(--ps-border);
    border-radius: 28px;
    overflow: hidden;
    box-shadow: var(--ps-shadow);
    background: rgba(255, 255, 255, 0.86);
    height: 100%;
  }

  .personal-sites-page .site-card .card-body {
    padding: 1.35rem;
  }

  .personal-sites-page .site-topline {
    display: flex;
    justify-content: space-between;
    gap: 1rem;
    align-items: start;
    margin-bottom: 0.9rem;
  }

  .personal-sites-page .site-title {
    font-size: 1.35rem;
    margin-bottom: 0.35rem;
    letter-spacing: -0.02em;
  }

  .personal-sites-page .site-meta {
    color: var(--ps-muted);
    font-size: 0.96rem;
    margin-bottom: 0;
  }

  .personal-sites-page .site-description {
    color: var(--ps-text);
    line-height: 1.75;
    margin-bottom: 1rem;
  }

  .personal-sites-page .tech-list {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
    margin-bottom: 1.1rem;
  }

  .personal-sites-page .tech-list .badge {
    padding: 0.45rem 0.7rem;
    border-radius: 999px;
    font-weight: 600;
  }

  .personal-sites-page .site-actions {
    display: flex;
    flex-wrap: wrap;
    gap: 0.65rem;
  }

  .personal-sites-page .btn-site {
    border-radius: 999px;
    padding: 0.7rem 1rem;
    font-weight: 700;
  }

  .personal-sites-page .section-label {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.85rem;
    font-weight: 700;
    letter-spacing: 0.06em;
    text-transform: uppercase;
    color: var(--ps-muted);
    margin-bottom: 0.9rem;
  }

  .personal-sites-page .section-label::before {
    content: "";
    width: 2rem;
    height: 1px;
    background: currentColor;
    opacity: 0.45;
  }

  .personal-sites-page .preview-carrd {
    background: var(--ps-carrd);
  }

  .personal-sites-page .preview-gridfactor {
    background: var(--ps-grid);
  }

  .personal-sites-page .preview-casamica {
    background: var(--ps-casa);
  }

  .personal-sites-page .preview-hero-band {
    background: rgba(255, 255, 255, 0.7);
    border-radius: 18px;
    padding: 1rem;
    border: 1px solid rgba(24, 32, 51, 0.08);
  }

  .personal-sites-page .preview-hero-band h3 {
    margin-bottom: 0.3rem;
    font-size: 1.1rem;
  }

  .personal-sites-page .preview-grid-lines {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 0.7rem;
    margin-top: 1rem;
  }

  .personal-sites-page .preview-grid-lines > div {
    min-height: 56px;
    border-radius: 16px;
    background: rgba(255, 255, 255, 0.58);
    border: 1px solid rgba(24, 32, 51, 0.08);
    padding: 0.7rem;
    font-size: 0.85rem;
    color: rgba(24, 32, 51, 0.8);
  }

  @media (max-width: 991px) {
    .personal-sites-page .hero-grid {
      grid-template-columns: 1fr;
    }

    .personal-sites-page .hero-points {
      grid-template-columns: 1fr;
    }
  }

  @media (max-width: 575px) {
    .personal-sites-page .preview-grid-lines {
      grid-template-columns: 1fr;
    }

    .personal-sites-page .hero-screenshot-grid {
      grid-template-columns: 1fr;
    }

    .personal-sites-page .site-screenshot img {
      height: 200px;
    }

    .personal-sites-page .site-card .card-body {
      padding: 1.1rem;
    }
  }
</style>

<div class="personal-sites-page">
  <section class="page-hero">
    <div class="eyebrow">Selected web work</div>
    <div class="hero-grid">
      <div class="hero-copy">
        <h1>Web projects with different goals, but the same attention to clarity.</h1>
        <p>
          This page collects three sites that I have built or supported across very different contexts:
          a live personal CV, a technology-transfer landing page, and a charity website for Casamica Verona.
          Each project was designed to be clear, usable, and easy to share with the right audience.
        </p>
        <div class="hero-points">
          <div class="hero-point">
            <strong>Purpose first</strong>
            <span>Each site is shaped around a specific audience and a single clear message.</span>
          </div>
          <div class="hero-point">
            <strong>Visible at a glance</strong>
            <span>Visitors get a quick preview, a short description, and the main stack details.</span>
          </div>
          <div class="hero-point">
            <strong>Consistent structure</strong>
            <span>Every project is presented with the same simple format for easier comparison.</span>
          </div>
          <div class="hero-point">
            <strong>English presentation</strong>
            <span>The whole page is written in English to keep it clean and internationally readable.</span>
          </div>
        </div>
      </div>
      <div class="hero-panel">
        <div class="mini-browser">
          <div class="browser-bar">
            <span class="dot red"></span>
            <span class="dot yellow"></span>
            <span class="dot green"></span>
            <div class="address">andreabragantini.github.io/personal-sites</div>
          </div>
          <div class="preview-core preview-gridfactor">
            <div>
              <div class="section-label">Overview</div>
              <div class="preview-title">A portfolio-style window into my web projects</div>
              <p class="preview-copy">
                From no-code publishing to focused landing pages and nonprofit communication,
                these sites show how design, content, and purpose can work together.
              </p>
            </div>
            <div class="preview-footer">
              <span class="pill">Website previews</span>
              <span class="pill">Project summaries</span>
              <span class="pill">Stack notes</span>
            </div>
          </div>
        </div>
        <div class="hero-screenshot-grid">
          <div class="site-screenshot">
            <img src="{{ '/assets/img/carrd-home.png' | relative_url }}" alt="Screenshot of the Carrd personal website">
            <div class="screenshot-caption"><strong>Carrd</strong><span>Live CV</span></div>
          </div>
          <div class="site-screenshot">
            <img src="{{ '/assets/img/gridfactor-home.png' | relative_url }}" alt="Screenshot of the GridFactor landing page">
            <div class="screenshot-caption"><strong>GridFactor</strong><span>Landing page</span></div>
          </div>
          <div class="site-screenshot">
            <img src="{{ '/assets/img/casamica-home.png' | relative_url }}" alt="Screenshot of the Casamica Verona website">
            <div class="screenshot-caption"><strong>Casamica</strong><span>Charity site</span></div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <div class="row">
    <div class="col-12 mb-4">
      <div class="section-label">Featured sites</div>
    </div>

    <div class="col-lg-4 mb-4">
      <article class="site-card">
        <div class="site-screenshot preview-carrd">
          <img src="{{ '/assets/img/carrd-home.png' | relative_url }}" alt="Screenshot of the Andrea Bragantini personal website on Carrd">
        </div>
        <div class="card-body">
          <div class="site-topline">
            <div>
              <h2 class="site-title">Personal website on Carrd</h2>
              <p class="site-meta">Live curriculum vitae and personal web presence.</p>
            </div>
          </div>
          <p class="site-description">
            This is my personal website, built on Carrd as a lightweight and flexible online CV.
            It brings together my profile, background, and contact points in a format that is quick
            to read and easy to keep current.
          </p>
          <div class="tech-list">
            <span class="badge badge-primary">Carrd</span>
            <span class="badge badge-secondary">One-page layout</span>
            <span class="badge badge-info">Live CV</span>
            <span class="badge badge-light">Social links</span>
          </div>
          <div class="site-actions">
            <a class="btn btn-primary btn-site" href="https://andreabragantini.carrd.co/" target="_blank" rel="noopener noreferrer">Visit site</a>
          </div>
        </div>
      </article>
    </div>

    <div class="col-lg-4 mb-4">
      <article class="site-card">
        <div class="site-screenshot preview-gridfactor">
          <img src="{{ '/assets/img/gridfactor-home.png' | relative_url }}" alt="Screenshot of the GridFactor landing page">
        </div>
        <div class="card-body">
          <div class="site-topline">
            <div>
              <h2 class="site-title">Technology-transfer landing page</h2>
              <p class="site-meta">GridFactor: AI-enhanced low-voltage digital twins.</p>
            </div>
          </div>
          <p class="site-description">
            This landing page was created to support the GridFactor initiative and to communicate
            the technology-transfer story in a direct, modern way. It is structured to help visitors
            understand the idea, the opportunity, and the next step.
          </p>
          <div class="tech-list">
            <span class="badge badge-primary">Static landing page</span>
            <span class="badge badge-secondary">HTML / CSS / JS</span>
            <span class="badge badge-info">GitHub Pages</span>
            <span class="badge badge-light">Responsive design</span>
          </div>
          <div class="site-actions">
            <a class="btn btn-primary btn-site" href="https://gridfactor.tech/" target="_blank" rel="noopener noreferrer">Visit site</a>
          </div>
        </div>
      </article>
    </div>

    <div class="col-lg-4 mb-4">
      <article class="site-card">
        <div class="site-screenshot preview-casamica">
          <img src="{{ '/assets/img/casamica-home.png' | relative_url }}" alt="Screenshot of the Casamica Verona website">
        </div>
        <div class="card-body">
          <div class="site-topline">
            <div>
              <h2 class="site-title">Charity project website</h2>
              <p class="site-meta">Web development and digital channel support.</p>
            </div>
          </div>
          <p class="site-description">
            Casamica Verona is a volunteer-driven initiative connected to the parish of Santa Maria
            Ausiliatrice in Verona. The website communicates the mission, the people involved, and
            the practical support available to families in a difficult moment.
          </p>
          <div class="tech-list">
            <span class="badge badge-primary">Public-facing website</span>
            <span class="badge badge-secondary">Content-led structure</span>
            <span class="badge badge-info">Web development</span>
            <span class="badge badge-light">Digital channels</span>
          </div>
          <div class="site-actions">
            <a class="btn btn-primary btn-site" href="https://www.casamicaverona.it/" target="_blank" rel="noopener noreferrer">Visit site</a>
          </div>
        </div>
      </article>
    </div>
  </div>
</div>
