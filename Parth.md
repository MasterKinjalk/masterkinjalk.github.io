![](Parth_img%5CParth_0.png)

__RootQuant__ : Automated Root Trait Quantification from Minirhizotron Images Using Deep Learning

__Kinjalk Parth__

University of Illinois Urbana\-Champaign

![](Parth_img%5CParth_1.png)

![](Parth_img%5CParth_2.jpg)

![](Parth_img%5CParth_3.png)

![](Parth_img%5CParth_4.png)

Automated Root Trait Quantification Using Deep Learning

<span style="color:#ffffff"> __Data Collection \(2009\-2011\)__ </span>

Our group has been highly active in root analysis\.

We collect over 100k images each field season\.

<span style="color:#ffffff"> __Proposed Solution__ </span>

Image Acquisition through minirhizotron

![](Parth_img%5CParth_5.png)

<span style="color:#1f2937">• Inception\-ResNet\-v2 architecture</span>

<span style="color:#1f2937">• Transfer learning from ImageNet</span>

<span style="color:#1f2937">• </span>  <span style="color:#1f2937">Custom dual\-output regression head</span>

<span style="color:#1f2937">• Huber loss for robust regression</span>

<span style="color:#1f2937">• Predicts length & area simultaneously</span>

![](Parth_img%5CParth_6.png)

<span style="color:#2c5f2d"> __Manual Root Analysis:__ </span>

<span style="color:#1f2937">• Utilizing regression‑only data for length and area prediction</span>

<span style="color:#1f2937">• Innovation lies in adapting pre‑trained models to noisy\, zero‑inflated biological data</span>

<span style="color:#1f2937">• Labor\-intensive & time\-consuming</span>

<span style="color:#1f2937">• Inter\-observer variability</span>

<span style="color:#1f2937">• Limits study scalability</span>

![](Parth_img%5CParth_7.jpg)

![](Parth_img%5CParth_8.jpg)

<span style="color:#2c5f2d"> __Training Data Constraints:__ </span>

<span style="color:#1f2937">• Only length and area available from </span>  <span style="color:#1f2937">WinRHIZO</span>  <span style="color:#1f2937"> Tron tracings</span>

<span style="color:#1f2937">• File format inaccessible due to proprietary nature</span>

![](Parth_img%5CParth_9.png)

![](Parth_img%5CParth_10.png)

![](Parth_img%5CParth_11.png)

![](Parth_img%5CParth_12.png)

Results And Impact

__Model Performance__

__Dataset Collection & Annotation__

![](Parth_img%5CParth_13.png)

![](Parth_img%5CParth_14.png)

![](Parth_img%5CParth_15.png)

Original model on Maize

Used for primary training

![](Parth_img%5CParth_16.png)

![](Parth_img%5CParth_17.png)

<span style="color:#2c5f2d"> __Dataset: __ </span>  <span style="color:#1f2937">99\,917 images</span>

<span style="color:#2c5f2d"> __Period: __ </span>  <span style="color:#1f2937">2009\-2011</span>

<span style="color:#2c5f2d"> __Dataset: __ </span>  <span style="color:#1f2937">18257 images</span>

<span style="color:#2c5f2d"> __Period: __ </span>  <span style="color:#1f2937">2016; 2019–20</span>

Model finetuned on Maize

Used for fine\-tuning

Universal backbone for root phenotyping: fine\-tune on your species with minimal trait data\.

