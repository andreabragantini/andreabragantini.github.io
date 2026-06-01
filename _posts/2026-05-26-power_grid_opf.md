---
layout: post
title: Power Grid OPF With Gurobi
subtitle: From thesis prototype to a modular OPF research codebase
thumbnail-img: /assets/img/gurobi_thumb.png
share-img: /assets/img/gurobi_thumb.png 
cover-img: /assets/img/power_grid.jpeg
gh-repo: andreabragantini/power-grid-opf-gurobi
gh-badge: [star, fork, follow]
tags: [Power Systems, Optimization, OPF, Gurobi, Python]
comments: true
---

This project started from the practical side of my master thesis work: I needed a way to test OPF ideas quickly, compare case studies, and keep the implementation flexible enough to evolve formulation by formulation.

What is inside the repository right now is a modular OPF framework in Python using Gurobi, with a clean split between data loading, variables, constraints, objective, result extraction, and output reporting. That modular structure made it much easier to move from a single baseline model to multiple formulations without rewriting everything.

At the moment, two formulations are usable:

- DC OPF
- AC LP lossless

I also scaffolded additional formulations (active-loss, active/reactive-loss, and FBS-oriented variants) so the codebase is ready for the next development steps.

A big part of the recent work was not only coding the model, but also debugging case-study realism. For example, on the ZUG network, the math was helpful to spot data issues and bottlenecks in the dataset itself. That kind of iteration, model plus data validation together, is exactly the workflow I wanted from thesis work and now from this repository.

If you want to explore the code, case datasets, and generated outputs, check the GitHub repo linked above. It includes architecture notes, smoke-test scripts, and saved run artifacts to reproduce the experiments.
