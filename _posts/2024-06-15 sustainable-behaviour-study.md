---
layout: post
title: Sustainable Behaviours Study
subtitle: Un'analisi esplorativa dei comportamenti di risparmio energetico e idrico sui microdati AVQ 2021
cover-img: /assets/img/sustainable_behaviour_background.jpg
thumbnail-img: /assets/img/sustainable_behaviour_thumb.jpg
share-img: /assets/img/sustainable_behaviour_background.jpg 
gh-repo: andreabragantini/sustainable_behaviours_study
gh-badge: [star, fork, follow]
tags: [Machine Learning, Python, Scikit-learn]
comments: true
---

This project is an exploratory data science study on sustainable behaviours using the 2021 AVQ survey microdata. 
The broader objective of the work is to understand the human characteristics that contribute to develop eco-friendly attitudes and behaviors.
The main research question is whether attention to water saving and energy saving can be linked to a broader set of everyday behaviours, attitudes, and socio-demographic characteristics.

The data used originate from the survey «Aspects of Daily Life» of 2021 (2021 AVQ microdata), a survey that is part of the Istat (Italian Institute of Statistics) integrated system of Multi-purpose-household-surveys and that has been carried out every year since 1993. The survey is conducted on approximately 25,000 households residing in around 800 Italian municipalities, representing various demographic sizes. Supporting survey documentation stored in the project materials. Starting from the raw dataset, two target variables are available from surbay data: `SPRACQUA` for attention to water-saving behaviours and `SPRENER` for attention to energy-saving behaviours. Both targets are ordinal, where `1` corresponds to high care and `4` corresponds to low or no care. 

The dataset is very broad and includes:
• family structure and population characteristics. Education and training, private courses, and lessons;
• daily commuting for study or work purposes;
• weekly activities: domestic and non-domestic work;
• leisure time: sports, socializing with friends, reading, media consumption, cinema, theater, shows, etc;
• use of new technologies: Internet and personal computers;
• social and political participation (involvement in associations, etc.);
• citizen and services: utilization and satisfaction with hospitals and other healthcare services, registry and administrative offices,post offices, local health authorities, banks, transportation, electricity and gas services, and waste recycling services;
• lifestyles: eating habits, beverages, smoking;
• health conditions and chronic diseases, medication usage, domestic accidents;
• housing and living area, changes in housing;
• family’s economic situation;
• satisfaction with the past year;
• subjective well-being and trust.

The methodology combines preprocessing, exploratory analysis, dimensionality reduction, clustering, and a final Random Forest stage. In this project, Random Forest is not used primarily for prediction. Instead, it is used as an exploratory tool to rank features by their association with the two targets and to identify the variables that are consistently important across both outcomes.

The main result is that the two targets share a very similar set of top-ranked features. The overall pattern is consistent with a broader sustainability profile: attention to energy and water saving is associated with attention to other sustainable consumption and behavior choices.
The current analysis therefore suggests that water-saving care and energy-saving care are strongly related to a common behavioural profile.
The final conclusion is that attention to saving water and energy does not behave like an isolated outcome. Instead, it appears to be embedded in a broader pattern involving sustainable consumption, everyday habits, and some socio-demographic variables.
