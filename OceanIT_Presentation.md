![](OceanIT_Presentation_img%5COceanIT_Presentation_0.png)

# SaaS-R: Software as a Solution for Roots

# Kinjalk Parth
Research Assistant at Leakey lab

![](OceanIT_Presentation_img%5COceanIT_Presentation_1.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_2.png)

<span style="color:#ffffff"> __Data Collection \(2009\-2011\)__ </span>

Our group has been highly active in root analysis\.

We collect over 100k images each field season\.

![](OceanIT_Presentation_img%5COceanIT_Presentation_3.png)

Image Acquisition through minirhizotron

<span style="color:#2c5f2d"> __Manual Root Analysis:__ </span>

<span style="color:#1f2937">• Labor\-intensive & time\-consuming</span>

<span style="color:#1f2937">• Inter\-observer variability</span>

<span style="color:#1f2937">• Limits study scalability</span>

<span style="color:#2c5f2d"> __Training Data Constraints:__ </span>

<span style="color:#1f2937">• Only length and area available from </span>  <span style="color:#1f2937"> __WinRHIZO Tron __ </span>  <span style="color:#1f2937">tracings</span>

<span style="color:#1f2937">• File format inaccessible due to proprietary nature</span>

<span style="color:#ffffff"> __Proposed Solution__ </span>

<span style="color:#1f2937">• Inception\-ResNet\-v2 architecture</span>

<span style="color:#1f2937">• Transfer learning from ImageNet</span>

<span style="color:#1f2937">• </span>  <span style="color:#1f2937">Custom dual\-output regression head</span>

<span style="color:#1f2937">• Huber loss for robust regression</span>

<span style="color:#1f2937">• Predicts length & area simultaneously</span>

![](OceanIT_Presentation_img%5COceanIT_Presentation_4.jpg)

![](OceanIT_Presentation_img%5COceanIT_Presentation_5.jpg)

Innovation lies in adapting pre‑trained models to noisy\, zero‑inflated biological data

Results And Impact

__Model Performance__

__Dataset Collection & Annotation__

![](OceanIT_Presentation_img%5COceanIT_Presentation_6.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_7.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_8.png)

Used for primary training

<span style="color:#2c5f2d"> __Dataset: __ </span>  <span style="color:#1f2937">18257 images</span>

<span style="color:#2c5f2d"> __Period: __ </span>  <span style="color:#1f2937">2016; 2019–20</span>

<span style="color:#2c5f2d"> __Dataset: __ </span>  <span style="color:#1f2937">99\,917 images</span>

<span style="color:#2c5f2d"> __Period: __ </span>  <span style="color:#1f2937">2009\-2011</span>

![](OceanIT_Presentation_img%5COceanIT_Presentation_9.png)

__Original model on Maize__

![](OceanIT_Presentation_img%5COceanIT_Presentation_10.png)

__Model finetuned on Maize__

Used for fine\-tuning

Universal backbone for root phenotyping: fine\-tune on your species with minimal trait data\.

![](OceanIT_Presentation_img%5COceanIT_Presentation_11.png)

# The Need



* __Current Limitations in Annotation__
  * __Lack of Specialized Tools:__
    * Existing platforms do not provide binary mask generation specifically optimized for plant imagery\.
  * __User Preference Mismatch:__
  * Research \(e\.g\.\, Ayesha et al\.\, SMILE Lab\, UF\) indicates that annotators significantly 	prefer  __brush 	tools__  over polygonal tools for comfort\, ease of use\, and efficacy\.
* __Gaps in Analysis & Refinement__
  * __Visualization Deficit:__  No existing tools support the dual requirement of  __Exploratory__  and  __Explanatory__  data analysis in a single workflow\.
  * __Skeletal Inaccuracy:__  Current software lacks the ability to refine  __root skeletons__ \, which is critical for accurate root length measurement and phenotyping\.
* __The Objective__
  * To develop optimized tools that enhance  __Ground Truth \(GT\)__  generation and root visibility\, streamlining the entire phenotyping pipeline\.


![](OceanIT_Presentation_img%5COceanIT_Presentation_12.png)

# The Solution



* __Enhanced Interface & Workflow__
  * __Hardware\-Optimized Tracing:__  A custom tracing interface with integrated shortcuts mapped to  __Huion tablets__  for a seamless\, high\-efficiency workflow\.
  * __Interactive Visualization Toolbox:__  A specialized module for root trait visualization that facilitates deep data exploration and iterative refinement\.
* __Advanced Machine Learning Framework__
  * __Dual\-Model Architecture:__  Implementation of two distinct ML models to independently generate  __binary masks__  and  __root skeletons__ \.
  * __Bias Reduction:__  By separating the skeletonization model from the masking process\, we eliminate the cumulative biases found in traditional pipelines\.
  * __Specialized Skeletonization:__  Addresses the failure of standard skeletonizers to accurately represent complex\, non\-linear root structures\.


![](OceanIT_Presentation_img%5COceanIT_Presentation_13.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_14.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_15.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_16.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_17.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_18.png)

__      Root traits modeling: __  __RootSeg\-ResNet__

![](OceanIT_Presentation_img%5COceanIT_Presentation_19.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_20.png)

Root Painter: U\-net

RootSeg\-ResNet\(Ours\)

![](OceanIT_Presentation_img%5COceanIT_Presentation_21.png)

# Root traits modeling: RootSeg-ResNet

| __Area Metrics__ |  |  |
| :-: | :-: | :-: |
| __Metric__ | __RootSeg\-ResNet__ | __RootPainter__  __\(U\-net\)__ |
| Mean Absolute Error \(MAE\) | __2\.44 mm__  __2__ | 5\.70 mm2 |
| R\-squared \(R²\) | __0\.912__ | 0\.825 |

![](OceanIT_Presentation_img%5COceanIT_Presentation_22.png)

__      Root traits modeling: __  __RootSeg__  __\-ResNet__

Visualized Mask Predictions

![](OceanIT_Presentation_img%5COceanIT_Presentation_23.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_24.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_25.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_26.png)

__Step 1: Import & Organize__

![](OceanIT_Presentation_img%5COceanIT_Presentation_27.png)

Automatic hierarchical organization and visualization of minirhizotron imagery based on date\, tube number\, and soil depth position

Step 2:  __Interactive Image Color Enhancement and Human Annotation __

![](OceanIT_Presentation_img%5COceanIT_Presentation_28.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_29.png)

Dark CID image with poor contrast obscures root structures\, increasing missed detections during tracing\.

Contrast stretching or CLAHE enhances root visibility\, aiding human annotator in precise mask generation\.

Step 4:  __Visualize\, Analyze & Discover__

__Total Root Productivity: __ Cumulative root length by tube and date

__Colored segments__  show growth contributions from each measurement period

__Quickly identifies__  high\-performing tubes

__Assesses overall__  field productivity at a glance

![](OceanIT_Presentation_img%5COceanIT_Presentation_30.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_31.png)

Overview of all images of a plot in terms of length\.

Drag and Scroll these tubes

![](OceanIT_Presentation_img%5COceanIT_Presentation_32.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_33.png)

RootSeg\-ResNet: Root Area –  __mIoU =__  0\.73

Step 3:  __AI Powered Trait Extraction__

__Spatial Root Growth and Colonization : __ Detailed Time\-Course Analysis of Root Growth

__Reveals growth patterns__  and depth\-specific growth dynamics\, and promotes  __exploratory analysis__  for root development patterns

__Interactive hover__  reveals all images from a selected depth and date

![](OceanIT_Presentation_img%5COceanIT_Presentation_34.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_35.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_36.png)

Hovering shows related images

![](OceanIT_Presentation_img%5COceanIT_Presentation_37.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_38.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_39.png)

Root tracing is extremely time‑consuming\. In fact\, even widely used datasets like PRMI from UF did not manually annotate switchgrass\. Instead\, they relied on fine‑tuning machine‑learning outputs to generate ground truth labels\.

However\, this workaround introduces major issues—especially for fibrous and very thin root systems like switchgrass—resulting in annotations that are ultimately unreliable and unusable\.

![](OceanIT_Presentation_img%5COceanIT_Presentation_40.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_41.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_42.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_43.png)

Indicated Missed Roots

Indicates Inference artifacts

Conclusion: We need end to end solution with constant user intervention

_RootSAM: Adapting SAM2\.1 for Root Segmentation in Minirhizotron Imagery _

The Challenge: A Slow\, Manual Process\, Standard “out\-of\-box” AI failure

The Manual Bottleneck

![](OceanIT_Presentation_img%5COceanIT_Presentation_44.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_45.png)

~ 50 mins per image

We annotated these images using  _SPROUTS_  manual annotation

Data collection of maize root images using CID camera system\.

![](OceanIT_Presentation_img%5COceanIT_Presentation_46.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_47.jpg)

![](OceanIT_Presentation_img%5COceanIT_Presentation_48.png)

_PVC tube underground_

![](OceanIT_Presentation_img%5COceanIT_Presentation_49.png)

_RootSAM: Adapting SAM2\.1 for Root Segmentation in Minirhizotron Imagery _

__Insight: __ Normal prompting approaches do not account for the way a human running though 100 images in one hour would prompt\, they would never select the most important centerline as prompt\. Therefore\, we created our novel distance\-based prompting to mimic a real human interaction\.

![](OceanIT_Presentation_img%5COceanIT_Presentation_50.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_51.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_52.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_53.png)

__Prompt Generation__

__EDT Probability Map__

__Manual Annotation__

![](OceanIT_Presentation_img%5COceanIT_Presentation_54.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_55.png)

EDT map weights are used for selecting each pixel  \( __Green__  = foreground\,  __Red__  = background\) then  used as a prompt\.

![](OceanIT_Presentation_img%5COceanIT_Presentation_56.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_57.png)

Euclidian Distance Transform \(EDT\) weights to each pixel inside the foreground’s \(root\) boundary

_RootSAM: Adapting SAM2\.1 for Root Segmentation in Minirhizotron Imagery _

![](OceanIT_Presentation_img%5COceanIT_Presentation_58.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_59.png)

__SAM2\.1__  although very powerful\, is not domain adaptable out of box\.

Comparison of segmentation performance

![](OceanIT_Presentation_img%5COceanIT_Presentation_60.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_61.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_62.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_63.png)

__RootSAM__  can segment roots with much better accuracy accurately\.

Cost per image cut by  __91% __ \(right\)\, saving  __$8\,527 __ when scaled to 700 images\( __based on $16/hr wages__ \)\. Annotation time dropped from  __~50 __ min to  __4\.5__  min per image\, boosting productivity  __11\.2x\.__

# RootSAM Distribution Solution

![](OceanIT_Presentation_img%5COceanIT_Presentation_64.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_65.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_66.png)

# RootSD-NeXT

![](OceanIT_Presentation_img%5COceanIT_Presentation_67.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_68.png)

# When SAM2 Talks to DINOv3 Magic Happens

![](OceanIT_Presentation_img%5COceanIT_Presentation_69.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_70.png)

Dual Encoder Cross\-Attention Fusion

Simplified Model Architecture

Simple U\-Net style decoder architecture with Spatial Attention Gates

Model is trained with Deep Supervision

The Model was trained as an SOD \+ Topology preservation task\.

![](OceanIT_Presentation_img%5COceanIT_Presentation_71.png)

# Results

![](OceanIT_Presentation_img%5COceanIT_Presentation_72.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_73.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_74.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_75.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_76.png)

---

E-Measure Better aligns with human perception, especially for fine details and boundaries. Preferred for more refined evaluation of saliency maps where boundary quality is critical.

S-measure Captures overall structural quality. Evaluation of general salient object detection.

Also for this evaluation keep in mind that it has been evaluated on as many images as the model has been trained on and not 10 percent.  We are working to train the model on this new annotation data that we have generated.

![](OceanIT_Presentation_img%5COceanIT_Presentation_77.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_78.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_79.png)

Cross Attention has been Used in Image generation tasks to fuse the modality of text and image domain for conditioned  generation\.

__Prompt: __ Create an image of a horse pulling a chariot which is ridden by a roman king

Since DINOv3’s zero\-shot performance was much better than SAM2 we conditioned SAM2’s generation on DINO features

![](OceanIT_Presentation_img%5COceanIT_Presentation_80.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_81.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_82.png)

![](OceanIT_Presentation_img%5COceanIT_Presentation_83.png)

