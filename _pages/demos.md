---
layout: single
title: "Demos"
permalink: /demos/
author_profile: true
---

Short visual demos of segmentation and detection results. Add your own images under `/images/` to showcase before/after comparisons.

## Before / after comparisons

Use the slider to compare input images with model outputs (e.g. segmentation or detection). Replace the placeholder paths below with your own images in `/images/` (e.g. `demo-input.jpg`, `demo-segmentation.jpg`).

{% include image-comparison.html image_left="demo-input.jpg" image_right="demo-segmentation.jpg" label_left="Input" label_right="Segmentation" %}

You can add more comparisons on this page by reusing the include with different images:

{% include image-comparison.html image_left="baseline.jpg" image_right="ours.jpg" label_left="Baseline" label_right="Ours" %}

To add real demos, place your images in the `images/` folder and update the paths in this page’s source (e.g. in `_pages/demos.md`).
