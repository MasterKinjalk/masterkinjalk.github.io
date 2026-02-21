__RootSAM: Adapting SAM2\.1 for Root Segmentation in Minirhizotron Imagery__

Kinjalk Parth1\,3\, Sebastian Varela1\,2\, Samuel Walker 1\,3\,4\, Nadia Shakoor 5 \, Andrew D\.B\. Leakey 1\,3\,4

1Center for Advanced Bioenergy and Bioproducts Innovation\, Urbana\, IL 61801\, USA\, 2Independent Researcher\, Canelones 15800\, Uruguay\,

3Institute for Genomic Biology\, University of Illinois at Urbana Champaign\, Urbana\, IL 61801\, USA\, University of Illinois at Urbana Champaign\, Urbana\, IL 61801\, USA\,

4Department of Plant Biology\, University of Illinois at Urbana Champaign\, 5Urbana\, IL 61801\, USA\, Donald Danforth Plant Science Center\, Olivette\, MO\, USA

__Background and Objectives__

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_0.png)

Root systems play a critical role in plant adaptation to environmental stress and are key to improving agricultural productivity\. Minirhizotron imaging enables non\-destructive observation of root architecture in field\-grown crops\, but manual annotation of these images is labor\-intensive and limits the scalability of root phenotyping\.

Foundation models like SAM2\.1 offer general\-purpose segmentation capabilities\, but struggle with the fine\, low\-contrast structures of roots embedded in complex soil backgrounds\. This limits their utility in automated root analysis workflows\.

To address this challenge\, we adapted SAM2\.1 for root segmentation using a novel two\-stage fine\-tuning strategy\. Our approach leverages realistic prompt simulation and hierarchical learning to improve segmentation accuracy while reducing manual annotation effort\.

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_1.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_2.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_3.png)

__Quantitative evaluation __ at 512×512px shows mIoU and Dice\.  <span style="color:#0056a4"> __Blue__ </span> : SAM2\.1;  <span style="color:#94c11f"> __Green__ </span> : SAM2\.1 Stage 1;  <span style="color:#e84a27"> __Orange__ </span> :  __RootSAM__  \(Stage 2\)\. Based on a fixed\-point prompts with no human intervention\.

__Prompt Generation__

__Qualitative evaluation: __ Prompt points \(left\)\, predictions \(right\)\. Top: SAM2\.1; Bottom: fine\-tuned RootSAM\.

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_4.png)

__EDT Probability Map__

__Manual Annotation__

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_5.jpg)

Two\-stage fine\-tuning strategy markedly improves root identification compared to baseline SAM2\.1:

RootSAM achieves a mIoU 66\.0% — a 37% relative gain over SAM2\.1 baseline\.

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_6.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_7.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_8.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_9.png)

EDT map weights are used for selecting each pixel  \( <span style="color:#94c11f"> __Green__ </span>  = foreground\,  <span style="color:#e84a27"> __Red__ </span>  = background\) and are  then  used as a prompt\.

Automation Slashed Projected Costs by  __91%__

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_10.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_11.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_12.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_13.png)

_PVC tube underground_

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_14.png)

Euclidean Distance Transform \(EDT\) weights to each pixel inside the foreground’s \(root\) boundary

Description of the proposed approach: \(A\) input image\, \(B\) SAM2\.1 Image Encoder and Decoder\,  \(C\) Prompting strategy\, and \(D\) output prediction\.

Data collection of maize root images using CID camera system\.

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_15.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_16.png)

__Training Details & Optimization__

__Integrated Prompting Strategy__

Simulate realistic human annotation behavior: EDT probability map of foreground root pixels is implemented; points are selected based on weighted random sampling based on distance from object boundaries\.

__Hybrid Loss Function:__  A custom loss function was designed to address the unique challenges of root segmentation:

__Focal Tversky Loss:__  To handle the extreme class imbalance between sparse root pixels and the abundant soil background\.

__Boundary Loss:__  To enforce sharp\,  edges\, which is critical for fine root structures\.

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_17.png)

__Model Fine\-Tuning:__

We adapt the pre\-trained SAM2\.1 foundation model\.

The large Image Encoder is frozen \(❄️\) to retain its general\-purpose feature extraction capabilities\.

Only the lightweight Prompt Encoder and Mask Decoder are trained \(🔥\) on our root imagery\.

This partial fine\-tuning strategy enables rapid adaptation to a new domain\.

Cost analysis for processing 700 images\, estimates based on a $16/hour wage

Cost per image cut by  __91% __ \(right\)\, saving  __$8\,527 __ when scaled to 700 images\( __based on $16/hr wages__ \)\. Annotation time dropped from  __~50 __ min to  __4\.5__  min per image\, boosting productivity  __11\.2x\.__

__Conclusions and Future Direction__

Our two\-stage fine\-tuning strategy successfully adapts SAM2\.1 to the complex domain of root imagery\, demonstrating a robust method for specializing foundation models\.

Human\-in\-the\-loop workflow provides rapid corrective prompts\, resulting in superior masks than manual annotations\.

__Future Work:__  We aim to further refine the model to reduce the need for corrective prompts\, moving closer to a fully automated pipeline for root analysis\.

__Two\-stage Sequential Training Strategy:__

__Stage 1: Local Feature Learning__

The model is trained on  __512 × 512 px patches\.__

__Goal:__  Force the model to learn relevant features at a local level\.

__Stage 2: Global Context Refinement__

The Stage 1 model is then further trained on  __1024x1024 px patches\.__

__Goal:__  Allow the model to learn higher\-level spatial relationships\, such as root connectivity and branching patterns\.

__Learning Rate:__

__Stage 1: __ Started at 1e\-4 for initial adaptation\.

__Stage 2: __ Reduced to 1e\-5 for finer\, more stable adjustments\.

A  __ReduceLROnPlateau__  scheduler was used to automatically lower the learning rate if validation performance stalled\.

__Data Augmentation:__  including geometric transformations\, color jitter\, noise\, elastic transforms\, and occlusions was applied during training to build a robust model and prevent overfitting\.

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_18.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_19.png)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_20.jpg)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_21.jpg)

![](RootSAM_Final_Poster_img%5CRootSAM_Final_Poster_22.png)

