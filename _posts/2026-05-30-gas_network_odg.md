---
layout: post
title: Gas Network Optimization with Gurobi
subtitle: From thesis prototype to a modular gas dispatch codebase
thumbnail-img: /assets/img/gurobi_thumb.png
share-img: /assets/img/gurobi_thumb.png
cover-img: /assets/img/gas-grid-landscape.jpg
gh-repo: gas-grid-ogd-gurobi
gh-badge: [star, fork, follow]
tags: [Optimization, Python, Gurobi, Operations Research, Linear Programming]
comments: true
---

This project studies the Optimal Gas Dispatch (OGD) problem for natural gas transmission and distribution networks. The goal is to decide how gas should be injected, routed, and distributed through a network while respecting physical limits and minimizing operating cost.

I started this work to better understand how gas network optimization is modeled in practice, and to turn a thesis-style prototype into a cleaner and more modular Python codebase. The focus was not only on solving the problem, but also on making the implementation easier to test, extend, and present as a research project.

The main technical challenge was the Weymouth equation, the constitutive equation which links flow and pressure in gas pipelines through a nonlinear relationship. I implemented two formulations:

- `weymouth_ogd`, a quadratic MIQCP formulation that keeps the physics closer to the original model
- `weymouth_lp_ogd`, a linearized version based on piecewise linear tangent-plane approximations

This linear approximation follows the approach presented in:

A. Tomasgard, F. Rømo, M. Fodstad, and K. Midthun, “Optimization models for the natural gas value chain,” in *Geometric Modelling, Numerical Simulation, and Optimization*, pp. 521–558, Springer, 2007.  
DOI: [10.1007/978-3-540-68783-2_25](https://doi.org/10.1007/978-3-540-68783-2_25)

While the Weymouth equation is popular and widely used in modelling transmission-like gas systems, in the future it is expected to implemet as well gas dispatch formulation that are more appropriate for distribution networks. 
One of these implementation is the Renouard equation. A linearized version of it could be also interesting to explore.

## Why This Project

I chose this topic because gas dispatch is a good example of how optimization, engineering physics, and software design meet in the same application. It is a realistic industrial problem, but it also has enough structure to be modeled clearly and studied in a reproducible way.

My main reasons were:

- to study how OGD formulations are built and solved with Gurobi
- to implement a linearized alternative to the nonlinear Weymouth model
- to support multiple case studies with different network sizes and topologies
- to build a modular architecture that can be reused in future research work

## Technical Approach

The project is written in Python and uses Gurobi as the optimization solver. The code is organized into small modules so that each part of the workflow has a clear responsibility.

The pipeline is:

1. load and harmonize the input data
2. validate the network structure and units
3. build the chosen formulation
4. solve the optimization model with Gurobi
5. write tables, KPIs, charts, and an HTML report

A key part of the implementation is the data loader. Different case studies can use slightly different column names and file layouts, so the loader applies alias-based schema harmonization before building the model. This makes the code more flexible and reduces case-specific hardcoding.

The project also includes:

- a quadratic formulation for more exact physics
- a linear piecewise approximation for faster or larger runs
- automatic result generation in HTML, CSV, and JSON formats
- tests for data normalization and a small end-to-end solve path

## Case Studies

I tested the model on several case studies with different sizes and network structures:

- `custom_MP_4nodes`: a small multi-pressure case used as a compact starting point and validation example
- `ringed_LP_7nodes`: a 7-node ring network that works well for the linear approximation
- `ringed_MP_7nodes`: a similar 7-node case with a multi-pressure structure, useful for comparing formulations
- `ZUG_1300nodes`: a much larger real-world style case that shows why a linearized formulation can be important for scalability

These cases are useful because they highlight different trade-offs. Small networks are easier to inspect and debug, while larger networks make performance and formulation choice more important.

## What I Learned

This project showed me how important model structure is in optimization software. A mathematically correct model is not enough on its own; the surrounding code also needs to be readable, testable, and adaptable to new data sources.

The most valuable lessons were:

- how to express gas dispatch constraints clearly in code
- how to linearize a nonlinear physics relation without losing the core behavior
- how to design a data pipeline that can handle multiple case formats
- how to separate solver logic, data loading, and reporting into maintainable components

Overall, this project was a strong exercise in combining operations research, numerical modeling, and practical software engineering.

## Future Work

Possible next steps include:

- adding more gas flow formulations (Renouard)
- extending support for compressors and valves in more detail
- improving visualization for large networks
- comparing solve quality and runtime across formulations
- expanding the test suite with more challenging network cases


## Repository

Full code, case study data, and detailed documentation available on GitHub.
Check out the [GitHub repository](https://github.com/andreabragantini/gas-grid-ogd-gurobi) for more details and to contribute to the project!