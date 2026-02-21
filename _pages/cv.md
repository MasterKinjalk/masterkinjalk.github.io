---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* M.C.S. (Master of Computer Science), University of Illinois Urbana-Champaign (UIUC) — GPA 3.93/4.00
* B.Tech. CSE (AI & ML), SRM Institute of Science and Technology (2019–2023)

Work experience
======
* **Present:** Research / Lab member — Leakey Lab, Carl R. Woese Institute for Genomic Biology, University of Illinois Urbana-Champaign  
  * Focus: Computer vision for plant biology, plant phenotyping, and trait quantification  
  * Building software solutions to help plant biologists work with increased data  
  * Deep learning for root and minirhizotron image analysis  
  * Key projects: **RootQuant** — automated root length/area from minirhizotron images (Inception-ResNet-v2, universal backbone; R² ≈ 0.90). **SPROUTS** — integrated desktop app for root phenotyping (Pix2PixRoot, RootSeg-ResNet mIoU 0.73; single-session workflow). **RootSAM** — SAM2.1 adapted for root segmentation (two-stage fine-tuning; mIoU 66%, 37% gain over baseline; 91% cost reduction, ~11× faster annotation).  

Skills
======
* Computer vision and machine learning for plant phenotyping  
* Trait quantification and image-based analysis  
* Software and pipelines for data-driven plant biology  
* Python, R, MySQL, C, C++, Dart — data science, ML, and development  
* PyTorch, TensorFlow, Scikit-Learn, Pandas — ML and data stacks  
* SaaS development, business analytics, Android / mobile application development  
* Google Cloud, Azure, AWS  
* **Code:** [GitHub](https://github.com/MasterKinjalk) — transport apps, sentiment analysis, object recognition, Hadoop/Spark on Docker, and more  

Certifications
======
* NPTEL: Advanced Probability Theory, Computer Vision, Natural Language Processing, Statistical Inference  
* Coursera: Image Classification with CNNs using Keras  
* University of Illinois Urbana-Champaign: Applying Data Analytics in Finance  
* HackerRank: Python (Basic), SQL (Basic & Intermediate), Problem Solving (Basic)  

Languages
======
* **English** — Native or bilingual proficiency  
* **Hindi** — Native or bilingual proficiency  

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Talks
======
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html  %}
  {% endfor %}</ul>
