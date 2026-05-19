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
    A compact list of selected journal papers written in plain language, with direct links to the official repository page and DOI when available.
    The newest journal paper is included here even if it has not fully propagated to Google Scholar yet.
  </div>

  <div class="section-label">Journal articles</div>

  <article class="paper-card">
    <div class="paper-header">
      <div>
        <h2 class="paper-title">Neural network-based three-phase state estimation for unobservable low voltage grids</h2>
        <p class="paper-meta">International Journal of Electrical Power &amp; Energy Systems, Vol. 167, Article 110568, 2025</p>
      </div>
      <span class="badge badge-success">Latest journal paper</span>
    </div>
    <p class="paper-summary">
      This paper shows how a neural network can help understand what is happening inside low-voltage electrical grids even when only a small amount of measurement data is available.
      In simple terms, it is about making the grid more visible and easier to monitor without requiring a huge number of sensors everywhere.
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
</div>
