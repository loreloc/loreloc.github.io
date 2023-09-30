---
title: 'Your Knowledge Graph Embeddings are Secretly Circuits and You Should Treat Them as Such'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - admin
  - Nicola Di Mauro
  - Robert Peharz
  - Antonio Vergari

# Author notes (optional)
#author_notes:
#  - 'Equal contribution'

date: '2022-08-31T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2022-09-16T00:00:00Z'

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent; 9 = Workshop paper
publication_types: ['9']

# Publication name and optional abbreviated publication name.
publication: 5th Workshop on Tractable Probabilistic Modeling at UAI (TPM 2022)
publication_short: TPM 2022

abstract: Some of the most popular and successful knowledge graph embedding (KGE) models---CP, ComplEx, RESCAL and TuckER---encode tensor factorizations that define an energy-based score over subject-relation-object triples. As such, they are not amenable to efficient maximum-likelihood training, and do not easily allow to sample triples nor answering complex queries in a principled probabilistic way. In this paper, we show how all these models can be readily interpreted as constrained computational graphs---circuits---and show how, by some minor modifications, one can turn them into tractable generative models of triples. This novel perspective not only fixes many of the aforementioned shortcomings of KGE models, but helps understand why recent learning strategies for KGE are successful while suggesting interesting new ones.

# Summary. An optional shortened abstract.
#summary:

tags:
  - Statistical Relational Learning
  - Tractable Inference
  - Probabilistic Circuits

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://openreview.net/forum?id=2bjCZdGyEGE'
url_code: ''
url_dataset: ''
url_poster: 'poster.pdf'
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
#image:
#  caption: ''
#  focal_point: ''
#  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
#projects:
#  - example

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
#slides: example
---

