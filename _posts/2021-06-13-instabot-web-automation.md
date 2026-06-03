---
layout: post
title: Instagram Bot 
subtitle: Learning Project for Web Automation
cover-img: /assets/img/fucsia-landscape.jpg
thumbnail-img: /assets/img/instabot-thumb.jpg
share-img: /assets/img/instabot-thumb.jpg  
gh-repo: andreabragantini/insta-bot-simple
gh-badge: [star, fork, follow]
tags: [Python, Selenium, Web Automation]
comments: true
---

This project was born as a learning exercise to explore how browser automation works in practice. The goal was not to build a commercial tool, but to understand how a sequence of online actions can be translated into code and repeated automatically.

Working on it was useful because it showed both the potential and the limits of this kind of experimentation. On one side, it offered a concrete way to study automation, web interaction with Selenium, and project organization. On the other, it made clear that modern online platforms are dynamic, protected, and increasingly resistant to simple bots.

This repository started as an older learning experiment, and it intentionally keeps part of its original setup to preserve that context. For this reason, it still uses some legacy components, including Selenium 3, which were common at the time the project was created. Keeping this older stack helps document the project’s evolution and the lessons learned, even if newer tools and patterns would be preferable for a modern production-ready bot. 

## Tech Stack (Simple Overview)

The project was built with a small but practical stack:

- **Python** as the main language for scripting and orchestration.
- **Selenium WebDriver** to control browser actions (open pages, click, type, navigate).
- **Chrome + ChromeDriver** (managed with `webdriver-manager`) to run browser automation locally.
- **Pandas** to export and track activity results in CSV format.
- **python-dotenv** and environment variables to keep credentials private and out of source code.
- **GitHub** for version control and project documentation.

## What I Learned (Technical, but Practical)

From a learning perspective, this project helped me understand:

- how to structure a small automation script from login to output generation;
- how fragile web selectors can be when platforms update their interface;
- why reproducibility matters (virtual environments, pinned dependencies, clear README setup);
- why secret management is essential even in small personal projects;
- how anti-bot protections can affect automation reliability in real-world scenarios.

For that reason, I see this repository as an educational project rather than a finished usable software product. It documents a phase of exploration, curiosity, and hands-on learning. It also reflects an important lesson: sometimes the value of a project is not in having a perfect final tool, but in understanding the problem space, the constraints, and the evolution of the technology around it.

Feel free to explore the code and contribute to the project on [GitHub](https://github.com/andreabragantini/insta-bot-simple).  
