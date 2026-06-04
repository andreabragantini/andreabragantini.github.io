---
layout: post
title: Power Grid OPF With Gurobi
subtitle: From thesis prototype to a modular OPF research codebase
thumbnail-img: /assets/img/gurobi_thumb.png
share-img: /assets/img/gurobi_thumb.png 
cover-img: /assets/img/powergrid_landscape.png
gh-repo: andreabragantini/power-grid-opf-gurobi
gh-badge: [star, fork, follow]
tags: [Optimization, Python, Gurobi, Power Systems, Operations Research]
comments: true
---


## Project Overview

This project focuses on Optimal Power Flow (OPF) for electrical transmission networks, implemented in Python with Gurobi. The goal is to compute economically efficient generation dispatch while respecting network constraints such as line limits, power balance, and operating bounds.

I started this work as an academic prototype and progressively refactored it into a formulation-driven codebase that is easier to maintain, extend, and benchmark. Beyond solving OPF instances, the project emphasizes reproducibility, clean architecture, and structured result reporting for research and portfolio use.

The framework currently includes two operational formulations:

- dc_opf
- ac_lp_lossless
- ...

The linearized AC OPF formulation is based on the methodology presented in:

P. Fortenbacher and T. Demiray, “Linear/quadratic programming-based optimal power flow using linear power flow and absolute loss approximations,” International Journal of Electrical Power and Energy Systems, vol. 107, pp. 680-689, 2019.
DOI: [10.1016/j.ijepes.2018.12.008](https://doi.org/10.1016/j.ijepes.2018.12.008)

Other additional formulations are available in the scientific paper and are already scaffolded for future expansion.

## Why This Project

I chose OPF because it sits at the intersection of optimization, energy engineering, and software architecture. It is mathematically rich, practically relevant, and a strong testbed for scalable model design.

My core objectives were:

- build a reusable OPF framework instead of a one-off script
- support multiple case studies from small to large grids
- separate data loading, model formulation, and output generation
- make runs easy to compare through consistent KPIs and artifacts

## Technical Approach

The project follows a modular pipeline:

1. ingest and harmonize network datasets from heterogeneous schemas  
2. build a formulation-specific optimization model  
3. solve with Gurobi  
4. export structured artifacts including tables, plots, and KPI summaries

A key component is schema harmonization in the data layer. Different datasets often use different column names or conventions, so the loader maps aliases into a canonical internal representation before model construction. This allows the same formulation code to run across custom and MATPOWER-style case exports with minimal case-specific logic.

Architecturally, the model factory and formulation registry make it straightforward to add new OPF variants while keeping entrypoint orchestration stable.

## Case Studies

The framework is tested on a range of networks with very different scales:

- IEEE_3bus: compact validation case for quick checks
- custom_6bus: small custom network useful for tuning and debugging
- IEEE_118bus: medium-scale benchmark for realistic behavior
- ZUG_1600bus: large-scale case to study scalability and feasibility sensitivity

These cases reveal practical trade-offs between formulation choice, data quality, and computational behavior under different loading conditions.

## Results and Outputs

Each run generates a complete artifact bundle for inspection and comparison, including:

- a run summary page
- KPI tables with model status and system metrics
- tabular dispatch and network flow results
- network visualization plots

This structure makes it easy to document experiments, compare formulations, and present outcomes in a portfolio-friendly format.

## What I Learned

It was fun to go back to my thesis topic and refresh my basics of optimization with gurobi and power system modelling.
The idea was to transform a thesis prototype into a production-grade software package.
This project reinforced that optimization quality depends on both mathematics and software design. A strong formulation is essential, but so are consistent data handling, transparent model-building logic, and reproducible outputs.

Key lessons:

- formulation modularity significantly improves experimentation speed
- robust data normalization is crucial for multi-case reliability
- clear separation of concerns improves maintainability and validation
- scalable benchmarking requires standardized reporting, not just solver logs

## Future Work

Planned next steps include:

- implementing additional AC formulations with losses
- extending radial-network methods through forward-backward sweep variants
- improving benchmarking depth with runtime and model-size tracking
- expanding automated tests for data harmonization and end-to-end solve paths

If you want, I can also generate a second version with a more personal tone and stronger storytelling for recruiter-facing portfolios.

## Repository

Check out the [GitHub repository](https://github.com/andreabragantini/power-grid-opf-gurobi) for more details and to contribute to the project!
