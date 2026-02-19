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
* M.S., University of Illinois Urbana-Champaign (UIUC)

Work experience
======
* **Present:** Research / Lab member — Leakey Lab, University of Illinois Urbana-Champaign  
  * Focus: Computer vision for plant biology, plant phenotyping, and trait quantification  
  * Building software solutions to help plant biologists work with increased data

Skills
======
* Computer vision and machine learning for plant phenotyping  
* Trait quantification and image-based analysis  
* Software and pipelines for data-driven plant biology  

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
