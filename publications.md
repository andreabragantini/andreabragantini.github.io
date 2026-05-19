---
layout: page
title: Scientific Publications
subtitle: Paper works published in peer-reviewed Journals
---

<style>
  .research-page {
    --rp-text: #182033;
    --rp-muted: #5d6577;
    --rp-border: rgba(24, 32, 51, 0.12);
    --rp-shadow: 0 18px 45px rgba(15, 23, 42, 0.11);
  }

  .research-page .note {
    background: linear-gradient(135deg, rgba(79, 70, 229, 0.08), rgba(14, 165, 233, 0.08));
    border: 1px solid var(--rp-border);
    border-radius: 22px;
    padding: 1rem 1.15rem;
    margin-bottom: 1.5rem;
    color: var(--rp-text);
  }

  .research-page .paper-card {
    background: rgba(255, 255, 255, 0.92);
    border: 1px solid var(--rp-border);
    border-radius: 24px;
    box-shadow: var(--rp-shadow);
    padding: 1.35rem 1.4rem;
    margin-bottom: 1.15rem;
  }

  .research-page .paper-header {
    display: flex;
    justify-content: space-between;
    gap: 1rem;
    align-items: flex-start;
    margin-bottom: 0.6rem;
  }

  .research-page .paper-title {
    font-size: 1.25rem;
    line-height: 1.25;
    margin-bottom: 0.35rem;
    letter-spacing: -0.02em;
  }

  .research-page .paper-meta {
    color: var(--rp-muted);
    font-size: 0.95rem;
    margin-bottom: 0;
  }

  .research-page .paper-summary {
    color: var(--rp-text);
    line-height: 1.75;
    margin: 1rem 0 1rem;
  }

  .research-page .paper-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
    margin-bottom: 1rem;
  }

  .research-page .paper-links {
    display: flex;
    flex-wrap: wrap;
    gap: 0.65rem;
  }

  .research-page .paper-links a {
    border-radius: 999px;
    padding: 0.65rem 0.95rem;
    font-weight: 700;
  }

  .research-page .section-label {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.85rem;
    font-weight: 700;
    letter-spacing: 0.06em;
    text-transform: uppercase;
    color: var(--rp-muted);
    margin: 0.25rem 0 1rem;
  }

  .research-page .section-label::before {
    content: "";
    width: 2rem;
    height: 1px;
    background: currentColor;
    opacity: 0.45;
  }
</style>

<div class="research-page">
  <div class="note">
    A compact list of my selected journal papers published in open-science, with direct links to the official repository page and DOI when available.
    A brief summary is added for a non-technical audience to better understand the topic and the contents.
  </div>

  <div class="section-label">Journal articles</div>

  <article class="paper-card">
    <div class="paper-header">
      <div>
        <h2 class="paper-title">Impact of bad and partial input data on neural network-based low voltage state estimation</h2>
        <p class="paper-meta">Sustainable Energy, Grids and Networks, 2026, Article 102327</p>
      </div>
      <span class="badge badge-success">Latest journal paper</span>
    </div>
    <p class="paper-summary">
      This paper studies what happens when the input data used to estimate the state of a low-voltage grid is incomplete or partly wrong.
      It explains how neural-network-based methods behave in these imperfect conditions and why that matters for making grid monitoring more reliable in real life.
    </p>
    <div class="paper-tags">
      <span class="badge badge-primary">Low-voltage grids</span>
      <span class="badge badge-secondary">Imperfect data</span>
      <span class="badge badge-info">Neural networks</span>
    </div>
    <div class="paper-links">
      <a class="btn btn-primary" href="https://doi.org/10.1016/j.segan.2026.102327" target="_blank" rel="noopener noreferrer">Paper page</a>
    </div>
  </article>

  <article class="paper-card">
    <div class="paper-header">
      <div>
        <h2 class="paper-title">Neural network-based three-phase state estimation for unobservable low voltage grids</h2>
        <p class="paper-meta">International Journal of Electrical Power &amp; Energy Systems, Vol. 167, Article 110568, 2025</p>
      </div>
      <span class="badge badge-success">Journal article</span>
    </div>
    <p class="paper-summary">
      This paper shows how artificial intelligence can help make low-voltage grids easier to understand even when the network has only a limited number of sensors.
      It focuses on a practical three-phase estimator that can detect voltage changes and improve visibility in unobserved parts of the grid.
    </p>
    <div class="paper-tags">
      <span class="badge badge-primary">Open access</span>
      <span class="badge badge-secondary">Low-voltage grids</span>
      <span class="badge badge-info">State estimation</span>
    </div>
    <div class="paper-links">
      <a class="btn btn-primary" href="https://upcommons.upc.edu/entities/publication/aeefb1dc-16fd-4bfb-92c1-4f7d19ba46d0" target="_blank" rel="noopener noreferrer">Repository</a>
      <a class="btn btn-outline-primary" href="https://doi.org/10.1016/j.ijepes.2025.110568" target="_blank" rel="noopener noreferrer">DOI</a>
    </div>
  </article>

  <article class="paper-card">
    <div class="paper-header">
      <div>
        <h2 class="paper-title">Design and evaluation of low voltage neural network-based state estimators in scenarios with minimal measurement infrastructure</h2>
        <p class="paper-meta">IEEE Access, Vol. 12, pp. 27180-27198, 2024</p>
      </div>
      <span class="badge badge-success">Journal article</span>
    </div>
    <p class="paper-summary">
      This work compares different learning-based approaches for estimating grid conditions when the measurement infrastructure is very limited.
      The goal is to find a practical and cost-effective way to monitor distribution grids without overcomplicating the system.
    </p>
    <div class="paper-tags">
      <span class="badge badge-primary">IEEE Access</span>
      <span class="badge badge-secondary">Practical monitoring</span>
      <span class="badge badge-info">Machine learning</span>
    </div>
    <div class="paper-links">
      <a class="btn btn-primary" href="https://upcommons.upc.edu/entities/publication/7a94fd93-7dee-4d86-b623-5c4997e1c3de" target="_blank" rel="noopener noreferrer">Repository</a>
      <a class="btn btn-outline-primary" href="https://doi.org/10.1109/ACCESS.2024.3366337" target="_blank" rel="noopener noreferrer">DOI</a>
    </div>
  </article>

  <div class="section-label mt-4">PhD thesis</div>

  <article class="paper-card">
    <div class="paper-header">
      <div>
        <h2 class="paper-title">Learning-based state estimation for low voltage distribution grids using neural networks</h2>
        <p class="paper-meta">PhD thesis, Universitat Polit&egrave;cnica de Catalunya, 2026</p>
      </div>
      <span class="badge badge-success">Doctoral thesis</span>
    </div>
    <p class="paper-summary">
      This thesis explores how neural networks can be used to estimate and monitor the state of low-voltage distribution grids when the available measurement infrastructure is limited.
      In practical terms, it studies how to make the grid easier to observe, more reliable, and more useful for real operational decisions.
    </p>
    <div class="paper-tags">
      <span class="badge badge-primary">Doctoral thesis</span>
      <span class="badge badge-secondary">Low-voltage grids</span>
      <span class="badge badge-info">AI for grid monitoring</span>
    </div>
    <div class="paper-links">
      <a class="btn btn-primary" href="https://upcommons.upc.edu/entities/publication/fdc256db-ac07-44f9-a081-5246ff6edb3d" target="_blank" rel="noopener noreferrer">Repository</a>
    </div>
  </article>
</div>
