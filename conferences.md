---
layout: page
title: Scientific Conferences
subtitle: Paper works published in scientific conferences
---

<style>
  .research-page {
    --rp-text: #182033;
    --rp-muted: #5d6577;
    --rp-border: rgba(24, 32, 51, 0.12);
    --rp-shadow: 0 18px 45px rgba(15, 23, 42, 0.11);
  }

  .research-page .note {
    background: linear-gradient(135deg, rgba(16, 185, 129, 0.08), rgba(59, 130, 246, 0.08));
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
    font-size: 1.2rem;
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
    A compact list of my published conference papers, with direct links to the official repository page and DOI when available.
	A brief summary is added for a non-technical audience to better understand the topic and the contents.
  </div>

  <div class="section-label">Conference papers</div>

  <article class="paper-card">
    <div class="paper-header">
      <div>
        <h2 class="paper-title">Neural-Network-based State Estimation: the effect of pseudo-measurements</h2>
        <p class="paper-meta">2021 IEEE 30th International Symposium on Industrial Electronics (ISIE)</p>
      </div>
      <span class="badge badge-success">Conference paper</span>
    </div>
    <p class="paper-summary">
      This paper looks at how adding estimated measurements can improve the quality of a neural-network-based estimator for low-voltage grids.
      The main idea is to make the grid easier to understand when only a limited number of real sensors are available.
    </p>
    <div class="paper-tags">
      <span class="badge badge-primary">IEEE ISIE</span>
      <span class="badge badge-secondary">Pseudo-measurements</span>
      <span class="badge badge-info">Grid monitoring</span>
    </div>
    <div class="paper-links">
      <a class="btn btn-outline-primary" href="https://doi.org/10.1109/ISIE45552.2021.9576442" target="_blank" rel="noopener noreferrer">DOI</a>
    </div>
  </article>

  <article class="paper-card">
    <div class="paper-header">
      <div>
        <h2 class="paper-title">Flexibility Management For Enhanced Distribution Grid Control And Operation - The Case of FEVER Project</h2>
        <p class="paper-meta">2023 IEEE PES Innovative Smart Grid Technologies Europe (ISGT Europe)</p>
      </div>
      <span class="badge badge-success">Conference paper</span>
    </div>
    <p class="paper-summary">
      This paper explains how flexibility in the grid can help operators manage energy more intelligently and keep the system running smoothly.
      It focuses on a real project case where data and control strategies are used to improve distribution-grid operation.
    </p>
    <div class="paper-tags">
      <span class="badge badge-primary">ISGT Europe</span>
      <span class="badge badge-secondary">Grid flexibility</span>
      <span class="badge badge-info">Project case study</span>
    </div>
    <div class="paper-links">
      <a class="btn btn-primary" href="https://upcommons.upc.edu/entities/publication/3bdc6d9f-7a42-4994-921a-375c8adc434a" target="_blank" rel="noopener noreferrer">Repository</a>
      <a class="btn btn-outline-primary" href="https://doi.org/10.1109/ISGTEUROPE56780.2023.10407697" target="_blank" rel="noopener noreferrer">DOI</a>
    </div>
  </article>

  <article class="paper-card">
    <div class="paper-header">
      <div>
        <h2 class="paper-title">Learning-based state estimation in low voltage grids: a performance comparison</h2>
        <p class="paper-meta">2024 IEEE 22nd Mediterranean Electrotechnical Conference (MELECON)</p>
      </div>
      <span class="badge badge-success">Conference paper</span>
    </div>
    <p class="paper-summary">
      This study compares different learning-based methods to see which ones are most effective for estimating the state of low-voltage grids.
      The focus is on practical performance, so the results are useful for real-world monitoring decisions.
    </p>
    <div class="paper-tags">
      <span class="badge badge-primary">MELECON</span>
      <span class="badge badge-secondary">Performance comparison</span>
      <span class="badge badge-info">Low-voltage networks</span>
    </div>
    <div class="paper-links">
      <a class="btn btn-primary" href="https://upcommons.upc.edu/entities/publication/43321c2f-0eff-45bc-aa61-95991f35a3c9" target="_blank" rel="noopener noreferrer">Repository</a>
    </div>
  </article>

  <article class="paper-card">
    <div class="paper-header">
      <div>
        <h2 class="paper-title">Enhancing monitoring of unobserved low voltage grids: an application case study of neural network based state estimation</h2>
        <p class="paper-meta">CIRED 2024 Vienna Workshop, IET Conference Proceedings</p>
      </div>
      <span class="badge badge-success">Conference paper</span>
    </div>
    <p class="paper-summary">
      This paper shows how a neural-network-based estimator can be applied in a real low-voltage pilot site where only limited data is available.
      In simple terms, it is a practical demonstration of how modern AI tools can help monitor parts of the grid that are otherwise hard to observe.
    </p>
    <div class="paper-tags">
      <span class="badge badge-primary">CIRED 2024</span>
      <span class="badge badge-secondary">Pilot site</span>
      <span class="badge badge-info">Open access</span>
    </div>
    <div class="paper-links">
      <a class="btn btn-primary" href="https://upcommons.upc.edu/entities/publication/e75c8413-6ec5-49ec-b39d-0ad50019b8e3" target="_blank" rel="noopener noreferrer">Repository</a>
      <a class="btn btn-outline-primary" href="https://doi.org/10.1049/icp.2024.1997" target="_blank" rel="noopener noreferrer">DOI</a>
    </div>
  </article>
</div>
