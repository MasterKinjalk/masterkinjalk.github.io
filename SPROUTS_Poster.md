__SPROUTS: An Integrated Desktop Application for High\-Throughput Root Phenotyping__

Kinjalk Parth1\,3\, Sebastian Varela1\,2\, Andrew D\.B\. Leakey 1\,3\,4

1Center for Advanced Bioenergy and Bioproducts Innovation\, Urbana\, IL 61801\, USA\, 2Independent Researcher\, Canelones 15800\, Uruguay\,

3Institute for Genomic Biology\, University of Illinois at Urbana Champaign\, Urbana\, IL 61801\, USA\, University of Illinois at Urbana Champaign\, Urbana\, IL 61801\, USA\,

4Department of Plant Biology\, University of Illinois at Urbana Champaign\, 5Urbana\, IL 61801\, USA

__Background and Objectives__

__User Interface \(cont\.\)__

Long\-term challenges with phenotyping plant roots in the field have limited our understanding of vegetation form and function\, along with efforts to improve crops to achieve food security\, biofuel production and bio\-based product manufacture\. Researchers typically rely on multiple\, disconnected software for tasks like image segmentation and data analysis\, which slows down research\. Furthermore\, many advanced deep learning tools require specialized programming skills\, creating a significant accessibility barrier for many biologists\. This cumbersome process can also introduce and propagate errors\, compromising the quality of the final data\. Therefore\, there is a critical need for an integrated\, user\-friendly approach that efficiently transforms the massive volumes of field\-collected imagery into accurate and readily available biological insights\.

This project aims to streamline root data exploration by developing SPROUTS \( __S__ mart  __P__ henotyping of  __R__ oots:  __O__ ptimized  __U__ ser\-friendly  __T__ ools\)—to eliminate this friction\)\, a unified and accessible desktop application\. Our primary objectives are:

__To Simplify and Integrate:__  Combine a state\-of\-the\-art deep learning analysis pipeline with interactive data visualization into a single\, seamless workflow\, eliminating the need for multiple tools\.

__To Enhance Visual Exploration:__  Provide an intuitive\, user\-friendly interface with interactive dashboards and editing tools\, allowing researchers to easily visualize\, verify\, and correct analytical results in real\-time\.

__To Increase Accessibility:__  Empower biologists of all technical skill levels to perform high\-throughput root analysis without the need for programming expertise or complex server setups\.

Step 4:  __Visualize\, Analyze & Discover:__

<span style="color:#1a1c1e"> __Go from raw image to biological discovery in a single__ </span>  <span style="color:#1a1c1e"> __ __ </span>  <span style="color:#1a1c1e"> __session\.__ </span>

__Total Root Productivity: __ Cumulative root length by tube and date

__Step 1: Import & Organize__

![](SPROUTS_Poster_img%5CSPROUTS_Poster_0.png)

__Colored segments__  show growth contributions from each measurement period

__Quickly identifies__  high\-performing tubes

__Assesses overall__  field productivity at a glance

![](SPROUTS_Poster_img%5CSPROUTS_Poster_1.png)

Automatic hierarchical organization and visualization of minirhizotron imagery based on date\, tube number\, and soil depth position

![](SPROUTS_Poster_img%5CSPROUTS_Poster_2.png)

Drag and Scroll these tubes

Overview of all images of a plot in terms of length\.

__Spatial Root Growth and Colonization : __ Detailed Time\-Course Analysis of Root Growth

Step 2:  __Interactive Image Color __  __Enhacement__  __ and Human Annotation __

![](SPROUTS_Poster_img%5CSPROUTS_Poster_3.png)

![](SPROUTS_Poster_img%5CSPROUTS_Poster_4.png)

![](SPROUTS_Poster_img%5CSPROUTS_Poster_5.png)

__Reveals growth patterns__  and depth\-specific growth dynamics\, and promotes  __exploratory analysis__  for root development patterns

__Interactive hover__  reveals all images from a selected depth and date

Dark CID image with poor contrast obscures root structures\, increasing missed detections during tracing\.

![](SPROUTS_Poster_img%5CSPROUTS_Poster_6.png)

![](SPROUTS_Poster_img%5CSPROUTS_Poster_7.png)

![](SPROUTS_Poster_img%5CSPROUTS_Poster_8.png)

![](SPROUTS_Poster_img%5CSPROUTS_Poster_9.png)

![](SPROUTS_Poster_img%5CSPROUTS_Poster_10.png)

Contrast stretching or CLAHE enhances root visibility\, aiding human annotator in precise mask generation\.

Hovering shows related images

RootSeg\-ResNet: Root Area –  __mIoU =__  0\.73

__Conclusions and Future Direction__

Step 3:  __AI Powered Trait Extraction__

We have  developed  __SPROUTS__ \, a standalone application that transforms root phenotyping by delivering state\-of\-the\-art deep learning models within an intuitive desktop workflow\.

Using  __Pix2PixRoot__  for direct image\-to\-skeleton translation\, SPROUTS avoids error\-prone multi\-step pipelines\, delivering more accurate and reliable data\.

Its human\-in\-the\-loop design combines AI speed with expert validation\, ensuring high data quality __\. __

SPROUTS streamlines the entire image to trait workflow\, enabling accessible high\-throughput phenotyping for large\-scale studies without requiring computational expertise\.

Our vision for the future is to evolve SPROUTS into a one\-stop software for plant root analysis\. Next level of development will focus on integration pre\-planting plot data to unlock spatially\-aware\, and genotype\-specific insights\, and will bring support for fine\-tunable models on user provided data\.

![](SPROUTS_Poster_img%5CSPROUTS_Poster_11.png)

![](SPROUTS_Poster_img%5CSPROUTS_Poster_12.png)

![](SPROUTS_Poster_img%5CSPROUTS_Poster_13.png)

![](SPROUTS_Poster_img%5CSPROUTS_Poster_14.jpg)

