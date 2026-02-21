---
layout: single
title: "Demos"
permalink: /demos/
author_profile: true
---

Visual demos from my root phenotyping work: **RootQuant** (automated length/area regression), **SPROUTS** (integrated desktop app with enhancement and AI), and **RootSAM** (SAM2.1 adapted for root segmentation). Images below are from minirhizotron field data. Use the sliders to compare before/after or baseline vs model.

## RootQuant: automated root length and area

RootQuant predicts root length and area directly from minirhizotron images using Inception-ResNet-v2 and transfer learning. The model serves as a *universal backbone*: fine-tuned on maize (and similar species) it generalizes well; researchers can fine-tune on their own species with minimal trait data. Below: *original (pre–fine-tuning) vs fine-tuned model* on maize.

{% include image-comparison.html image_left="demo-rootquant-original.png" image_right="demo-rootquant-finetuned.png" label_left="Original model (Maize)" label_right="Fine-tuned model (Maize)" %}

## SPROUTS: integrated workflow and enhancement

SPROUTS is a desktop app that brings import, enhancement, annotation, and AI trait extraction into one workflow. Poor contrast in raw minirhizotron (CID) images often obscures roots; interactive contrast stretching or CLAHE in SPROUTS improves visibility and helps annotators trace roots more accurately. The app then runs Pix2PixRoot and RootSeg-ResNet (mIoU 0.73) for trait extraction in the same session.

{% include image-comparison.html image_left="demo-sprouts-dark.png" image_right="demo-sprouts-enhanced.png" label_left="Raw (poor contrast)" label_right="Enhanced (CLAHE)" %}

## RootSAM: SAM2.1 adapted for root segmentation

RootSAM adapts the Segment Anything Model (SAM2.1) to minirhizotron root imagery via two-stage fine-tuning and EDT-based prompt simulation. It achieves **mIoU 66%** (37% relative gain over the baseline) and cuts annotation cost by **91%** (~50 min → ~4.5 min per image). Below: qualitative comparison of baseline SAM2.1 vs fine-tuned RootSAM predictions (same prompts).

![RootSAM qualitative evaluation]({{ site.baseurl }}/images/demo-rootsam-qualitative.png)

*Qualitative evaluation: prompt points and predictions. Top: SAM2.1 baseline; Bottom: RootSAM (fine-tuned).*
