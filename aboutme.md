---
layout: page
title: About me
subtitle: My life in a glance through career and education
---

<style>
  .about-page {
    --about-border: rgba(24, 32, 51, 0.12);
    --about-shadow: 0 18px 45px rgba(15, 23, 42, 0.11);
    --about-muted: #5d6577;
  }

  .about-page p {
    line-height: 1.8;
  }

  .about-page .about-image-pair {
    display: grid;
    grid-template-columns: minmax(0, 1.05fr) minmax(0, 0.95fr);
    gap: 1rem;
    margin: 1.6rem 0 1.8rem;
    clear: both;
  }

  .about-page .about-image-pair figure,
  .about-page .about-inline-photo figure {
    margin: 0;
  }

  .about-page .about-image-pair img,
  .about-page .about-inline-photo img {
    display: block;
    width: 100%;
    object-fit: cover;
    border-radius: 26px;
    box-shadow: var(--about-shadow);
    border: 1px solid var(--about-border);
  }

  .about-page .about-image-pair img {
    aspect-ratio: 4 / 5;
    min-height: 420px;
    object-position: center top;
  }

  .about-page .about-inline-photo {
    float: right;
    width: min(38%, 340px);
    margin: 0.2rem 0 1rem 1.2rem;
  }

  .about-page .about-inline-photo img {
    aspect-ratio: 4 / 5;
    min-height: 300px;
    object-position: center top;
  }

  .about-page .about-image-pair .tall-left {
    min-height: 480px;
  }

  .about-page .about-image-pair .tall-right {
    min-height: 420px;
  }

  @media (max-width: 991px) {
    .about-page .about-image-pair {
      grid-template-columns: 1fr;
    }

    .about-page .about-inline-photo {
      float: none;
      width: 100%;
      margin: 1rem 0 1.2rem;
    }

    .about-page .about-image-pair img,
    .about-page .about-inline-photo img {
      min-height: 320px;
    }
  }

  @media (max-width: 575px) {
    .about-page .about-image-pair img,
    .about-page .about-inline-photo img {
      min-height: 260px;
      border-radius: 20px;
    }
  }
</style>

<div class="about-page" markdown="1">
I have spent probably too much time in academia (BSc+MSc1+MSc2+PhD), building a well-rounded, heterogeneous profile in Energy. 

Throughout my research, I have made significant scientific contributions to the fields of smart grids and artificial intelligence, with several peer-reviewed publications in top-tier scientific journals. 


<div class="about-image-pair" style="justify-content: center;">
  <figure style="margin: 0 auto; display: flex; justify-content: center;">
    <img class="tall-center" style="margin: 0 auto; display: block;" src="{{ '/assets/img/personal_picture_1.jpg' | relative_url }}" alt="Andrea Bragantini portrait">
  </figure>
</div>

My career has also been deeply international, shaped by experiences in both Northern Europe (Germany, Denmark, Switzerland) and Southern Europe (Italy, Spain), demonstrating adaptability and effective communication across cultures. Making me, in many ways, a true citizen of Europe.

Known for combining scientific precision with strong interpersonal and networking skills, I bring a rare balance of technical expertise and social intelligence.  

<div class="about-inline-photo">
  <figure>
    <img src="{{ '/assets/img/personal_picture_3.jpg' | relative_url }}" alt="Andrea Bragantini portrait in a relaxed pose">
  </figure>
</div>

Beyond my professional life, I have maintained a high personal standard through consistent engagement in sports, music, and friendships, reflecting resilience, curiosity, and a well-rounded, balanced character.

### My story

My journey began at Politecnico di Milano, where I earned two separate Master’s degrees: one in Energy Engineering and another in Management Engineering. This distinctive dual path for selected students was designed to train a new generation of professionals capable of seamlessly blending technical and managerial skills, a profile increasingly needed in today’s interconnected industrial and economic context. It provided me with a strong foundation in energy technologies, thermodynamics, energy conversion, and electrical systems, while also exposing me to economics, finance, project management, and business strategy.

During my studies, I pursued a series of international experiences that reflect a consistent theme of innovation and global exposure. At ETH Zurich, I developed my Master’s thesis on optimization and control tools for smart grids. I also worked as an R&D Engineer at Siemens Gamesa, one of the world’s largest wind-turbine manufacturers, where I gained hands-on experience in big industrial projects and renewable energy technologies. After graduation, I joined RWTH Aachen University as a research assistant, deepening my expertise in data-driven engineering and artificial intelligence, paving the way for a doctoral research plan and a future career in research. These experiences strengthened my global career orientation, reinforcing both my technical expertise and my ability to adapt and thrive in multicultural environments.


<div class="about-inline-photo" style="float: left; margin-right: 1.2rem; margin-left: 0;">
  <figure>
    <img src="{{ '/assets/img/personal_picture_2.jpg' | relative_url }}" alt="Andrea Bragantini seated portrait">
  </figure>
</div>

Since 2021, I have been pursuing my Ph.D. at UPC in Barcelona, exploring the intersection between data science and power systems. I focus on developing AI-based models to enhance the observability, reliability of electrical networks. This work allows me to merge rigorous engineering principles with digital innovation, always aiming for practical applications and tangible impact.

Beyond academia, I have cultivated an entrepreneurial mindset and a strong interest in innovation and technology transfer. 
I am passionate about bridging the gap between engineering, data, and innovation, transforming complex ideas into real-world impact.

I define myself as a curious, communicative, and proactive individual. I enjoy connecting ideas across disciplines and collaborating with people from different backgrounds. My heterogeneous education and international experiences have taught me to feel comfortable in dynamic and uncertain environments, where creativity and structure must coexist.

Looking back, my path reflects a continuous evolution: from energy to data science, from engineering to research, and from academia to entrepreneurial exploration. What unites all these stages is a constant drive for learning, connection, and meaningful impact. My goal is to use technology, data, and innovation to help shape a smarter, more efficient, and sustainable world.
</div>
