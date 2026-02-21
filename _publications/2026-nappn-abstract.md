---
title: "RootQuant: Automated Root Trait Quantification from Minirhizotron Images Using Deep Learning"
collection: publications
category: conferences
permalink: /publication/2026-nappn-rootquant
excerpt: 'Deep learning for automated prediction of root length and area from minirhizotron images. In NAPPN 2026 Program & Abstract Book.'
date: 2026-02-01
venue: 'NAPPN 2026'
paperurl: 'https://static1.squarespace.com/static/5fb2e0b25364a76eaf3ad318/t/698b6fd85b938a0fe8c337ba/1770745816704/NAPPN+2026+Program+Book+-+updated.pdf'
citation: 'Kinjalk Parth. (2026). RootQuant: Automated Root Trait Quantification from Minirhizotron Images Using Deep Learning. <i>NAPPN 2026 Program & Abstract Book</i>.'
---

**RootQuant: Automated Root Trait Quantification from Minirhizotron Images Using Deep Learning**

Manual quantification of root system architecture from minirhizotron images is labor-intensive and limits the scalability of phenotyping studies. We present RootQuant, a deep learning approach for automated prediction of root length and area.

Using 99,917 DRIFACE system images spanning soybean and maize datasets collected between 2009 and 2011, the dataset exhibits significant class imbalance (72% of images containing no visible roots) and highly skewed distributions for non-zero measurements (length: mean 4.20 mm, range 0–161.18 mm; area: mean 4.89 mm², range 0–369.14 mm²). We use transfer learning with Inception-ResNet-v2, adapting pre-trained ImageNet weights through selective parameter freezing of early convolutional layers while fine-tuning deeper layers with a custom regression head and progressive dropout regularization. A loss function combining Huber losses for both metrics provides robustness to annotation outliers. With stratified train/validation/test splits (80/10/10) and data augmentation (random flips, color jittering, Gaussian blur), the model achieved strong performance on held-out test data: **R² = 0.903**, RMSE = 2.82 mm for length; **R² = 0.880**, RMSE = 4.15 mm² for area (maize length R² = 0.944, soybean length R² = 0.887). The model serves as a universal backbone for root phenotyping: researchers can fine-tune on their own species with minimal trait data, supporting scalability across crops and environments.

Presented as a fast-forward talk and poster at [NAPPN 2026](https://www.plantphenotyping.org/) (February 9–12, 2026, Michigan State University).

**Links:** [NAPPN 2026 Program & Abstract Book (PDF)](https://static1.squarespace.com/static/5fb2e0b25364a76eaf3ad318/t/698b6fd85b938a0fe8c337ba/1770745816704/NAPPN+2026+Program+Book+-+updated.pdf)
