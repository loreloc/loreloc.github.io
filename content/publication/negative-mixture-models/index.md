---
title: 'Negative Mixture Models via Squaring: Representation and Learning'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - admin
  - Stefan Mengel
  - Nicolas Gillis
  - Antonio Vergari

# Author notes (optional)
#author_notes:
#  - 'Equal contribution'

date: '2023-07-13T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2023-07-13T00:00:00Z'

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent; 9 = Workshop paper
publication_types: ['9']

# Publication name and optional abbreviated publication name.
publication: 6th Workshop on Tractable Probabilistic Modeling at UAI (TPM 2023)
publication_short: TPM 2023

abstract: Negative mixture models (NMMs) can potentially be more expressive than classical non-negative ones by allowing negative coefﬁcients, thus greatly reducing the number of components and parameters to ﬁt. However, modeling NMMs features a number of challenges, from ensuring that negative combinations still encode valid densities or masses, to effectively learning them from data. In this paper, we investigate how we can model both shallow and hierarchical NMMs in a generic framework, via squaring. We do so by representing NMMs as probabilistic circuits (PCs) – structured computational graphs that ensure tractability. Then, we show when and how we can represent these squared NMMs as tensorized computational graphs efﬁciently, while theoretically proving that for certain function classes including negative parameters can exponentially reduce the model size.

# Summary. An optional shortened abstract.
#summary:

tags:
  - Tractable Inference
  - Probabilistic Circuits

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://openreview.net/forum?id=uTAzte88a2'
url_code: ''
url_dataset: ''
url_poster: 'poster.pdf'
url_project: ''
url_slides: ''
url_source: ''
url_video: 'https://www.youtube.com/watch?v=kVqYnrUV3y8&list=PLhxphuSjWkTnjT_iTlEdggV5htPp5UvKD&index=13'

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

