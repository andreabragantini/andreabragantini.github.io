---
layout: post
title: Predicting AVRO Issue Resolution Time
subtitle: A simple machine learning study on how long an issue stays open
gh-repo: andreabragantini/AVRO-case
cover-img: /assets/img/apache_avro_background.png
thumbnail-img: /assets/img/Apache_Avro_Logo_2023.png
share-img: /assets/img/Apache_Avro_Logo_2023.png
gh-badge: [star, fork, follow]
tags: [Data Science, Python, Machine Learning]
comments: true
---

How long will an issue stay open? That was the main question behind this study.

The dataset comes from the AVRO issue tracker and contains 1,458 issues. The goal was to predict the time needed to close an issue using only the information that is available while the issue is still open. That means the model must learn from the issue details, not from the answer itself.

### Context

This kind of problem is practical because project teams often want a quick estimate of how long a new issue may stay open. A short estimate helps with planning, prioritization, and communication. A long estimate is also useful, because it can highlight issues that may need more attention.

### Data and preparation

Not every row can be used to train the model. Only issues with a known `created` date and `resolutiondate` can give a real resolution time.

After cleaning the data:

- 1,134 issues were used for training.
- 324 issues were kept for validation.
- The target variable was the time between creation and resolution.

Some fields were removed because they would leak the answer or are not available for a future issue. I removed `status`, `resolution`, `assignee`, and the date fields used to compute the target.

I also simplified the categorical variables:

- Rare reporters were grouped into `Other`.
- `issue_type` was reduced to two groups: `Short` and `Long`.
- Numeric variables with strong skew were transformed with a log scale.

### What I found

The first clear result is that the target is very uneven. Most issues are solved quickly, but a small number stay open for months or even years. Those long cases are important because they pull the prediction problem away from the average case.

The features that helped the most were:

- `comment_count`
- `watch_count`
- `vote_count`
- `issue_type`
- a few frequent reporters

This makes sense. Issues that attract more comments, votes, and watchers often have more activity around them, and that activity can be related to longer or more complex resolution paths.

The linear regression model was useful as a baseline and as an explanation tool. In the saved OLS summary, it reached an R-squared of about 0.336, so it captured part of the signal but not all of it. The tree-based models handled the extreme cases better. A single decision tree overfit easily, while the random forest was more stable.

### Exercise answers

The exercise can be summarized in a few practical answers:

1. Train only on issues that already have a known resolution date.
2. Remove features that would not be available for a new issue.
3. Keep the features that describe the issue itself and the community reaction around it.
4. Use a simple linear model for interpretation, then compare it with tree-based models for better prediction on difficult cases.

### Final thought

The main lesson from this study is simple: issue resolution time is not random, but it is also not easy to predict with a straight line.

A clean preprocessing pipeline, a careful choice of features, and a mix of linear and tree-based models give a much clearer picture of the problem. The best model is not only the one with the best score, but also the one that behaves sensibly on real, messy issues.

Check out the [GitHub repository](https://github.com/andreabragantini/AVRO-case) for more details and to contribute to the project!
