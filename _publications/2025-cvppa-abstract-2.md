---
title: "RootSAM: Adapting SAM2.1 for Root Segmentation in Minirhizotron Imagery"
collection: publications
category: conferences
permalink: /publication/2025-cvppa-rootsam
excerpt: 'Two-stage fine-tuning of SAM2.1 for root segmentation in minirhizotron imagery: 37% mIoU gain, 91% cost reduction. CVPPA 2025 (ICCV Workshop).'
date: 2025-10-01
venue: 'CVPPA 2025, ICCV 2025 Workshop (Extended Abstracts)'
paperurl: 'https://cvppa2025.github.io/assets/ExtendedAbstracts/19.pdf'
citation: 'Kinjalk Parth, Sebastian Varela, Samuel Walker, Nadia Shakoor, Andrew D.B. Leakey. (2025). RootSAM: Adapting SAM2.1 for Root Segmentation in Minirhizotron Imagery. <i>CVPPA 2025 — ICCV 2025 Workshop (Extended Abstracts)</i>.'
---

**RootSAM: Adapting SAM2.1 for Root Segmentation in Minirhizotron Imagery**

Root systems are critical for plant adaptation and productivity; minirhizotron imaging allows non-destructive observation of root architecture in the field, but manual annotation is labor-intensive and limits scalability. Foundation models like SAM2.1 offer general-purpose segmentation but struggle with fine, low-contrast root structures in complex soil. We adapted **SAM2.1** for root segmentation using a **two-stage fine-tuning** strategy: (1) **Stage 1** on 512×512 px patches for local feature learning; (2) **Stage 2** on 1024×1024 px patches for global context (connectivity, branching). We use an **EDT (Euclidean Distance Transform) probability map** to simulate realistic prompt sampling and a **hybrid loss** (Focal Tversky for class imbalance, Boundary loss for sharp edges). The image encoder is frozen; only the prompt encoder and mask decoder are trained. **RootSAM** achieves **mIoU 66.0%**—a **37% relative gain** over the SAM2.1 baseline—and slashes annotation cost by **91%** (annotation time from ~50 min to ~4.5 min per image, ~11× productivity gain). A human-in-the-loop workflow allows rapid corrective prompts for high-quality masks.

With Sebastian Varela, Samuel Walker (UIUC), and Nadia Shakoor (Donald Danforth Plant Science Center). Presented as an extended abstract at the [Computer Vision for Plant Phenotyping and Agriculture (CVPPA) workshop](https://cvppa2025.github.io/proceedings/) at ICCV 2025 (October 20, 2025).

**Links:** [CVPPA 2025 Proceedings](https://cvppa2025.github.io/assets/ExtendedAbstracts/19.pdf) (Extended Abstracts)
