---
layout: page
title: About me
subtitle: My life in a glance through career and education
---

<style>
  .about-page {
    --about-text: #182033;
    --about-muted: #5d6577;
    --about-border: rgba(24, 32, 51, 0.12);
    --about-shadow: 0 18px 45px rgba(15, 23, 42, 0.11);
    --about-soft: linear-gradient(135deg, rgba(79, 70, 229, 0.08), rgba(14, 165, 233, 0.08));
    color: var(--about-text);
  }

  .about-page .intro-panel,
  .about-page .story-panel,
  .about-page .balance-panel {
    background: rgba(255, 255, 255, 0.94);
    border: 1px solid var(--about-border);
    border-radius: 28px;
    box-shadow: var(--about-shadow);
    overflow: hidden;
    margin-bottom: 1.5rem;
  }

  .about-page .intro-inner,
  .about-page .story-inner,
  .about-page .balance-inner {
    display: grid;
    grid-template-columns: minmax(0, 1.15fr) minmax(290px, 0.85fr);
    gap: 1.35rem;
    align-items: center;
    padding: 1.4rem;
  }

  .about-page .section-label {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.82rem;
    font-weight: 700;
    letter-spacing: 0.08em;
    text-transform: uppercase;
    color: var(--about-muted);
    margin-bottom: 0.9rem;
  }

  .about-page .section-label::before {
    content: "";
    width: 2rem;
    height: 1px;
    background: currentColor;
    opacity: 0.45;
  }

  .about-page h2 {
    font-size: clamp(1.8rem, 3vw, 2.7rem);
    line-height: 1.06;
    letter-spacing: -0.04em;
    margin-bottom: 0.8rem;
  }

  .about-page p {
    line-height: 1.8;
    color: var(--about-text);
  }

  .about-page .lede {
    font-size: 1.08rem;
    color: var(--about-muted);
    max-width: 58rem;
  }

  .about-page .about-facts {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 0.85rem;
    margin-top: 1.15rem;
  }

  .about-page .fact {
    background: var(--about-soft);
    border: 1px solid var(--about-border);
    border-radius: 18px;
    padding: 0.95rem 1rem;
  }

  .about-page .fact strong {
    display: block;
    margin-bottom: 0.2rem;
  }

  .about-page .fact span {
    color: var(--about-muted);
    font-size: 0.95rem;
  }

  .about-page .portrait-stack {
    display: grid;
    gap: 0.75rem;
  }

  .about-page .media-card {
    border-radius: 22px;
    overflow: hidden;
    border: 1px solid rgba(24, 32, 51, 0.1);
    box-shadow: 0 14px 28px rgba(15, 23, 42, 0.12);
    background: linear-gradient(180deg, #ffffff 0%, #f8fafc 100%);
  }

  .about-page .media-card img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  .about-page .portrait-card img {
    height: 100%;
    min-height: 460px;
    object-position: center top;
  }

  .about-page .caption {
    display: flex;
    justify-content: space-between;
    gap: 0.5rem;
    align-items: center;
    padding: 0.7rem 0.9rem;
    font-size: 0.84rem;
    color: var(--about-muted);
    background: rgba(255, 255, 255, 0.9);
  }

  .about-page .caption strong {
    color: var(--about-text);
  }

  .about-page .split-note {
    margin-top: 1rem;
    padding: 1rem 1.1rem;
    border-radius: 20px;
    background: rgba(79, 70, 229, 0.08);
    border: 1px solid rgba(79, 70, 229, 0.12);
    color: var(--about-text);
  }

  .about-page .journey-band {
    display: grid;
    grid-template-columns: minmax(0, 0.9fr) minmax(0, 1.1fr);
    gap: 1rem;
    align-items: center;
  }

  .about-page .journey-image img {
    height: 280px;
    object-position: center;
  }

  .about-page .quote-box {
    background: linear-gradient(135deg, rgba(248, 250, 252, 0.8), rgba(236, 253, 245, 0.8));
    border: 1px solid var(--about-border);
    border-radius: 22px;
    padding: 1.1rem 1.2rem;
    margin-top: 1rem;
  }

  .about-page .quote-box p {
    margin-bottom: 0;
    color: var(--about-muted);
  }

  .about-page .balance-grid {
    display: grid;
    grid-template-columns: 0.95fr 1.05fr;
    gap: 1rem;
    align-items: center;
  }

  .about-page .lifestyle-grid {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 0.75rem;
  }

  .about-page .lifestyle-grid .media-card img {
    height: 180px;
  }

  .about-page .insight-card {
    border-radius: 22px;
    border: 1px solid rgba(24, 32, 51, 0.1);
    box-shadow: 0 14px 28px rgba(15, 23, 42, 0.12);
    background: linear-gradient(135deg, rgba(255, 255, 255, 0.96), rgba(240, 253, 250, 0.96));
    padding: 1rem 1.05rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }

  .about-page .insight-card h3 {
    font-size: 1.1rem;
    margin-bottom: 0.65rem;
    letter-spacing: -0.02em;
  }

  .about-page .insight-card ul {
    margin: 0;
    padding-left: 1.1rem;
    color: var(--about-muted);
  }

  .about-page .insight-card li + li {
    margin-top: 0.45rem;
  }

  .about-page .closing-panel {
    padding: 1.25rem 1.4rem;
    background: var(--about-soft);
    border-top: 1px solid var(--about-border);
  }

  .about-page .closing-panel p {
    margin-bottom: 0;
    color: var(--about-muted);
  }

  @media (max-width: 991px) {
    .about-page .intro-inner,
    .about-page .story-inner,
    .about-page .balance-inner,
    .about-page .journey-band,
    .about-page .balance-grid {
      grid-template-columns: 1fr;
    }

    .about-page .portrait-card img {
      min-height: 360px;
    }
  }

  @media (max-width: 575px) {
    .about-page .about-facts,
    .about-page .lifestyle-grid {
      grid-template-columns: 1fr;
    }

    .about-page .intro-inner,
    .about-page .story-inner,
    .about-page .balance-inner {
      padding: 1rem;
    }

    .about-page .portrait-card img {
      min-height: 300px;
    }
  }
</style>

<div class="about-page">
  <section class="intro-panel">
    <div class="intro-inner">
      <div>
        <div class="section-label">About me</div>
        <h2>Engineer, researcher, and connector of ideas.</h2>
        <p class="lede">
          I have spent a long time in academia, but what has always driven me is not just the
          technical side. I enjoy turning complex ideas into something useful, human, and easy to share.
        </p>
        <p>
          Throughout my research, I have made contributions to smart grids and artificial intelligence,
          with peer-reviewed publications in top scientific journals.
        </p>
        <p>
          My career has also been deeply international, shaped by experiences in Northern Europe
          and Southern Europe. That mix taught me how to adapt, communicate, and work comfortably
          across cultures.
        </p>
        <div class="about-facts">
          <div class="fact">
            <strong>Scientific side</strong>
            <span>Research in smart grids, AI, and data-driven engineering.</span>
          </div>
          <div class="fact">
            <strong>Human side</strong>
            <span>Strong interpersonal skills and a genuine interest in people.</span>
          </div>
          <div class="fact">
            <strong>International profile</strong>
            <span>Experiences across Italy, Germany, Denmark, Switzerland, and Spain.</span>
          </div>
          <div class="fact">
            <strong>Outside work</strong>
            <span>Sports, music, friendships, and a healthy amount of curiosity.</span>
          </div>
        </div>
      </div>

      <div class="portrait-stack">
        <div class="media-card portrait-card">
          <img src="{{ '/assets/img/personal_picture_1.jpg' | relative_url }}" alt="Andrea Bragantini portrait">
          <div class="caption">
            <strong>Personal snapshot</strong>
            <span>A calm, professional first impression</span>
          </div>
        </div>
        <div class="split-note">
          I like pages that feel structured but still personal. That is the same balance I try to bring
          to research, collaboration, and everyday work.
        </div>
      </div>
    </div>
  </section>

  <section class="story-panel">
    <div class="story-inner">
      <div class="journey-band">
        <div class="journey-image media-card">
          <img src="{{ '/assets/img/personal_picture_2.jpg' | relative_url }}" alt="Andrea Bragantini in a relaxed seated portrait">
          <div class="caption">
            <strong>My path</strong>
            <span>From energy to data science</span>
          </div>
        </div>
        <div>
          <div class="section-label">My story</div>
          <p>
            My journey began at Politecnico di Milano, where I earned two separate master's degrees:
            one in Energy Engineering and another in Management Engineering. That dual path gave me
            both technical depth and a broader view of how organizations, projects, and decisions work.
          </p>
          <p>
            During my studies, I moved through several international experiences that kept expanding my
            perspective. At ETH Zurich, I developed my master's thesis on optimization and control tools
            for smart grids. I also worked as an R&D Engineer at Siemens Gamesa, where I gained hands-on
            exposure to large industrial projects and renewable energy technologies.
          </p>
          <p>
            After graduation, I joined RWTH Aachen University as a research assistant, strengthening my
            expertise in data-driven engineering and artificial intelligence. Since 2021, I have been
            pursuing my PhD at UPC in Barcelona, focusing on the intersection between data science and
            power systems.
          </p>
          <div class="quote-box">
            <p>
              I am especially interested in ideas that move easily between engineering, innovation,
              and real-world impact.
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="balance-panel">
    <div class="balance-inner">
      <div>
        <div class="section-label">Beyond academia</div>
        <p>
          Beyond research, I have cultivated an entrepreneurial mindset and a strong interest in
          technology transfer. I enjoy bridging the gap between engineering, data, and innovation,
          transforming complex ideas into things that can actually be used.
        </p>
        <p>
          I define myself as a curious, communicative, and proactive person. I enjoy connecting ideas
          across disciplines and collaborating with people from different backgrounds. That combination
          keeps me comfortable in dynamic and uncertain environments, where creativity and structure
          must coexist.
        </p>
        <p>
          Looking back, my path reflects a continuous evolution: from energy to data science, from
          engineering to research, and from academia to entrepreneurial exploration. What ties it all
          together is a constant drive for learning, connection, and meaningful impact.
        </p>
      </div>

      <div class="lifestyle-grid">
        <div class="media-card">
          <img src="{{ '/assets/img/personal_picture_3.jpg' | relative_url }}" alt="Andrea Bragantini in a second portrait pose">
          <div class="caption">
            <strong>Life outside work</strong>
            <span>Warm, informal, approachable</span>
          </div>
        </div>
        <div class="insight-card">
          <h3>What I try to keep in balance</h3>
          <ul>
            <li>Technical rigor and human communication</li>
            <li>Academic depth and practical impact</li>
            <li>Focus, curiosity, and a healthy social life</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="closing-panel">
      <p>
        My goal is to use technology, data, and innovation to help shape a smarter, more efficient,
        and sustainable world.
      </p>
    </div>
  </section>
</div>
