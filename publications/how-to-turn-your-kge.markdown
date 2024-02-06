---
published: 2023-09-22
title: How to Turn Your Knowledge Graph Embeddings into Generative Models
fauthors: L. Loconte
rauthors: N. Di Mauro, R. Peharz, A. Vergari
tldr: KGE models such as CP, RESCAL, TuckER, ComplEx can be re-interpreted as circuits to unlock their generative capabilities, scaling up learning and guaranteeing the satisfaction of logical constraints by design.
venue: NeurIPS 2023
award: Oral (top 0.6%)
abstract: Some of the most successful knowledge graph embedding (KGE) models for link prediction -- CP, RESCAL, TuckER, ComplEx -- can be interpreted as energy-based models. Under this perspective they are not amenable for exact maximum-likelihood estimation (MLE), sampling and struggle to integrate logical constraints. This work re-interprets the score functions of these KGEs as circuits -- constrained computational graphs allowing efficient marginalisation. Then, we design two recipes to obtain efficient generative circuit models by either restricting their activations to be non-negative or squaring their outputs. Our interpretation comes with little or no loss of performance for link prediction, while the circuits framework unlocks exact learning by MLE, efficient sampling of new triples, and guarantee that logical constraints are satisfied by design. Furthermore, our models scale more gracefully than the original KGEs on graphs with millions of entities.
spotlink: /static/publications/how-to-turn-your-kge/spot.png
paperlink: https://openreview.net/forum?id=RSGNGiB1q4
posterlink: /static/publications/how-to-turn-your-kge/poster.pdf
talklink: https://nips.cc/virtual/2023/oral/73848
slideslink: /static/publications/how-to-turn-your-kge/slides.pdf
bibtexsource: /static/publications/how-to-turn-your-kge/loconte2023how.bib
---
