---
title: Freiberg MTEX Workshop 2023
keywords: workshop, 2023
sidebar: workshops_sidebar
permalink: workshop23
folder: workshops
toc: false
---

The workshop extends over two weeks and is part of the master course {%
include reference.html link="" content="Introduction into crystallographic
texture analysis" %} and counts for **5 ECTS** points. While the first week is
mainly devoted to beginners in MTEX and/or texture analysis, the second week
is a meeting of MTEX users with different experiences to share specific use
cases, tips and tricks and discuss recent and upcoming developments in MTEX. A
special focus will be the new features of **MTEX 6.0** which will include
pseudo 3d functionality for EBSD and grains and multiple spatial reference
systems.

{% include note.html content="The workshop will be held primarily in
**presence**. Although we will provide online access to all lectures and
presentations we encourage everybody to come to Freiberg to have the best
possible training and discussions. We also encourage the participants to send
data files to the organiziers prior to the workshop which will than be
discussed during the exercises." %}

<!--To stimulate this we made the fee for online
participation higher then the fee for participation in pretense.-->

<!--
{% capture par_default %}
	Every registered participant should now have received an email with a password in order to see the course materials. If you have not yet received this email please contact one of the organizers.
{% endcapture %}
{% capture par_access %}
	You are logged in.
	{% include reference.html link="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09" content="Enter Workshop zoom session" %}
{% endcapture %}
{% include password_access_restriction.html content_default=par_default content_access=par_access %}
-->

## Week 1: Learning Crystallographic Texture Analysis with MTEX 
Date: 06.03.2023 - 10.03.2023

During the first week we provide on a daily basis two morning lectures covering the basic theoretical principles of crystallography, diffraction and texture analysis. During the two afternoon exercises the theoretical concepts will be demonstrated via practical examples within MTEX.

<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse"
    data-parent="#accordion" href="#collapseMonday"><b>Monday:</b> Crystal
    Lattices, Crystal Symmetry and Orientations</a>
            </h4>
        </div>
        <div id="collapseMonday" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
<!--Monday-->
**Lecture 1 - Crystal Geometry:**
<!--{% include reference.html link="https://videocampus.sachsen.de/m/24eab5953e110fa2eae768bd31eb70d0877d914d403d14f25f5aec82d082bf2186b107e2797207d5f29883543711d151840d694f65eb99b7b2ea687318f2b212" content="video" %}-->
<span class="course_material">, </span>{% include reference.html link="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/Q5bs5ykaBn2pJLy" content="slides" class="course_material" %}
<!--<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/1_basics.pdf" class="course_material" content="slides" %}-->
<br>
crystal lattice, direct and reciprocal coordinate system, Miller indices, zonal axes, crystal shapes
<!--Matlab basics and general concepts of MTEX, the class vector3d, spherical coordinates-->
<br>
<br>
**Exercise 1:**
{% include reference.html link="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/GfH27MesxNek5sA" content="slides" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://videocampus.sachsen.de/m/0a9313e8625de72815e1d0bb4b28e33fb24b0e2643fa22c5340b3004bd1ce4c809cbf0aa0ccf64bc3c76138bdaad195fdd612ce0864d9e50aca50b82d788d031" content="video 1" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://videocampus.sachsen.de/m/ea4c0b7d65042571665ea24fce9b2ad8ea6aa7701abe2a772191e2ccef8e26b65e2659ca4163301a71ba93217e14c0c6df33db04dfe8c0b6b7dfc3040b3b9177" content="video 2" class="course_material" %}
<br>
<br>

*Lunch*
<br>
<br>
**Lecture 2 - Crystal Symmetries and Orientations:**
{% include reference.html link="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/G9GonnGyx7reBaN" content="slides" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09" content="zoom seesion" class="course_material" %}
<br>
point groups, Laue groups, symmetrically equivalent orientations, 
pole figures, inverse pole figures, fundamental sectors
<br>
<br>
**Exercise 2:**
{% include reference.html link="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09" content="zoom session 13:00-14:00" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_1.m" content="exercises" class="course_material" download=true %}
</div>
			</div>
        </div>
    </div>
    <!-- TUESDAY -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse"
				data-parent="#accordion"
				href="#collapseTuesday"><b>Tuesday:</b> Electron Backscatter
				Diffraction (EBSD) and Grains</a>
            </h4>
        </div>
        <div id="collapseTuesday" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
**Lecture 3 - EBSD:**
{% include reference.html link="https://videocampus.sachsen.de/m/421bcadc047032bb32346b3fbdf3bf197a0275d9565684740f8063457c5f4e7f60d2261891651cc669dc7f33af6d33b17f63de47f4e364ab6e7bba846d9d374b" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/4_orientations.pdf" content="slides" class="course_material" %}
<br>
data import, reference frame alignment, color keys, data cleaning
<br>
<br>
**Exercise 3:**
{% include reference.html link="https://videocampus.sachsen.de/m/6da6baa2b4ddcacf4a917e7dbf0fa2a4c55f28724d45013e5ffce765e343f2e4763d63b593841287c1155fbb4a5bdadf53dd25e79cd2f80766227fa8244e6572" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/5_DensityEstimation.pdf" content="slides" class="course_material" %}
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 4 - Grains:**
{% include reference.html link="https://videocampus.sachsen.de/m/3e27654ede4be88745fe1dfb40aeee376d1d53bc66af7d0163429e6806777d0828e70f9f05e943ddef1cb5ade6fc23ee1b6ad7ddab30fb15f7a631278274097e" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/6_XRD2ODF.pdf" content="slides" class="course_material" %}
<br>
segmentation, shape properties, orientation properties, grain selection, grain statistics
<br>
<br>
**Exercise 4:**
{% include reference.html link="https://videocampus.sachsen.de/m/41db5e863ee56757f807c5abb62d9a044ea97aa17003e48ea91cb73869b275861b04a0a55b3203bca46ea099be5d80d2cf148c3bd7ba724a5176c203d1f80f8c" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_2.m" content="exercises" class="course_material" download=true %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_2_solution.m" content="solutions" class="course_material" download=true %}
</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse"
				data-parent="#accordion"
				href="#collapseWednesday"><b>Wednesday:</b> Misorientations,
				Grainboundaries and Density Functions</a>
            </h4>
        </div>
        <div id="collapseWednesday" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
**Lecture 5 - Misorientations and Grain Boundaries:**
{% include reference.html link="https://videocampus.sachsen.de/m/dbbed72f78fb34b3f13d9b51f9ea98f0a6ebb2b8f7e91ebd491518a9d812dc1ade9bc92e19d065e2d4c82460fa690ab490db50e4aa86a42def070f9fc6f6783c" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/7_EBSD.pdf" content="slides" class="course_material" %}
<br>
grain boundary misorientations, misorientation axis, misorientation angle, KAM, GOS, twin boundaries, tilt vs. twist
boundaries, phase transition, orientation
gradients,  statistics of boundary networks, habit planes
<br>
<br>
**Exercise 5:**
{% include reference.html link="https://videocampus.sachsen.de/m/d214f14e430d85e00322a414d89a7700214214a3460572420f9272b82753d47fe1ffe354cd2a2c1ef95e92d6dd1d97966cbf77b07a288801886d9a7a690fbca7" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/8_grains.pdf" content="slides" class="course_material" %}
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 6 - Density Functions:**
{% include reference.html link="https://videocampus.sachsen.de/m/05fc744d727ec467e3abcc1692813a1fd1763667e9e07339b5fda50e26043b367657f938b05ffb3af67176b1969627d9c2b8dc915591a21a27758ae95acc2725" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_3.m" content="exercises" class="course_material" download=true %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/data_3_4.zip" content="data" class="course_material" download=true %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_3_solution.m" content="solutions" class="course_material" download=true %}
<br>
kernel density estimation, orientation density function, pole density
function, inverse pole density function, model ODFs, ODF characteristics,
random sampling, ODF reconstuction from XRD data
<br>
<br>
**Exercise 6:**
{% include reference.html link="https://videocampus.sachsen.de/m/eea272365fb2437a9073691a60421874e1f689087ba8480f7d8198c47fa0e173881c5e3fdae4b085e48c4870c30e62211589f689782dfac0a344edede2c69b28" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_4.m" content="exercises" class="course_material" download=true %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_4_solution.m" content="solutions" class="course_material" download=true %}
</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse"
				data-parent="#accordion"
				href="#collapseThursday"><b>Thursday:</b> Tensorial Properties
				and Excursion</a>
            </h4>
        </div>
        <div id="collapseThursday" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
**Lecture 7 - Tensorial Properties:**
{% include reference.html link="https://videocampus.sachsen.de/m/adcd4b546858da0304f30a54a9851abf5ba73acd09804d9c07f94eadad4ce40e8ced9d893d140ce363fe2a9a0fbe00463db07dc3cd2447d48ef172c4913615cf" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/9_misori.pdf" content="slides" class="course_material" %}
<br>
tensor arithmetic, visualization, effect of symmetry, thermal expansion, stress and strain
tensors, piezoelectricity, elasticity, wave velocities
<br>
<br>
**Exercise 7:**
{% include reference.html link="https://videocampus.sachsen.de/m/92c31e9508c2a525a8b0f4ccfe8e104f5253cedaf569364fda6bb4aecadbfcd3f6ef30e8e5fc7281d4af76a0c0bbd5188334a91b664bc8cc725a5090d0072152" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/10_grainBoundaries.pdf" content="slides" class="course_material" %}
<br>
<br>
*Lunch*
<br>
<br>
**Excursion: Freiberg Silver Mine**
<!--
{% include reference.html link="https://videocampus.sachsen.de/m/b5fd43361bdedd4a1c98574b472417246eb938d1fd70d07c942568a82ca264ef1e681aed6a31ca0517bf5502de4f6127e6c20124c7b1f1923e9912cd53e8de18" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_5.m" content="exercises" class="course_material" download=true %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exp_qtz_crop.mat" content="data" class="course_material" download=true %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_5_solution.m" content="solutions" class="course_material" download=true %}-->
<br>
<!--
**Exercise 6 - Denoising EBSD Data and Misorientations:**
{% include reference.html link="https://videocampus.sachsen.de/m/3889ae54285956da464ca17e979058652aea4f73d4eb16024f0c830309f5caff4e7397bc8d149d3a066cbb845338fbc5f2ab814088648ebe9a2015500fac269f" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/talk.pdf" content="slides" class="course_material" %}
<span class="course_material">, </span>{% include reference.html
link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/fast_PTP_2_samll_big_grains.ang"
content="data" class="course_material" download=true %}
-->
</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse"
				data-parent="#accordion" href="#collapseFriday"><b>Friday:</b>
				Elastic and Plastic Deformations</a>
            </h4>
        </div>
        <div id="collapseFriday" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
**Lecture 8 - From Single Grain to Bulk Tensors:**
{% include reference.html link="https://videocampus.sachsen.de/m/2921dd50a0350caef9b3b8157e9598e2f4662457d3880fd275521795af9225b519c0aa8b9bc92588d38e43b87068a19ce953b280372296989cf0e2fb2750946c" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/11_plasticity.pdf" content="slides" class="course_material" %}
<br>
  average tensors (Voigt, Reuss, Hill) from EBSD and ODF
<br>
<br>
**Exercise 8:**
{% include reference.html link="https://videocampus.sachsen.de/m/f1fe97bdb09cf362099b852cfc52b9214d2c3eaaf5d75dcad8179b844e06b65eea6fffb143642514dfb85d88d75ee99edec3c8546f4cfe1f00b200efb42bc8ce" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/12_physical_properties.pdf" content="slides" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/12_physical_properties.mlx" content="m-file" class="course_material" download=true %}
<br>
<br>
*lunch*
<br>
<br>
**Lecture 9 - Plastic Deformation:**
{% include reference.html link="https://videocampus.sachsen.de/video/MTEX-Exercise-7/0759a254a946d4048df3c45f13cd64fc" content="video" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_7.m" content="exercises" class="course_material" download=true %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/mtex_2021_physical_properties.zip" content="data" class="course_material" download=true %}
<span class="course_material">, </span>{% include reference.html
link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_7_solution.m"
content="solutions" class="course_material" download=true %}
<br>
deformation tensors, slip systems, Schmid Factor, Taylor factor, simulation, dislocation systems,
dislocation density estimation
<br>
<br>
**Excercise 9 - Free Discussion of Personal Data Sets:**
</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
</div>
<!-- /.panel-group -->

**Times:** Lecture 1: 8:00 - 9:30, Exercise 1: 10:00 - 11:30, Lecture 2: 13:00-14:30, Exercise 2: 15:00 - 16:30

## Week 2: MTEX in Applications

Date: 13.03.2023 - 15.03.2023

The second week will consist of lectures by invited experts that explain in detail the application of MTEX to specific problems as listed below. Furthermore, current or future users of MTEX are invited to share their experiences with MTEX or ask questions about specific use cases. To encourage discussions we plan with slots of 20 minutes talk given by the participants followed by 10 minute discussions. As we expect a very heterogeneous auditorium we kindly ask the participant to keep their talks as simple as possible.

### Keynote Speakers


- **{% include reference.html link="https://www.ippt.pan.pl/en/staff/?osoba=kfryd"
  content="Karol Frydrych" %}** (Polish Academy of Science): *Crystal
  Plasticity Simulation with MTEX*

- **{% include reference.html
  link="https://geodynamics.geo.uni-halle.de/rebecca-kuehn/"
  content="Rebeca Kühn" %}** (Universität Halle): *Analyzing X-ray diffraction data of polyphase rocks using MTEX*

- **{% include reference.html
  link="https://marcoalopez.github.io/"
  content="Marco A. Lopez-Sanchez" %}** (Universidad de Oviedo): *Seismic Modeling Using EBSD*

- **{% include reference.html
  link="https://www.researchgate.net/profile/Manuel-Petersmann"
  content="Manuel Petersmann" %}** (Infineon Technologies): *Use cases of MTEX
  for semiconductor metalizations*

- **{% include reference.html
  link="https://lightform.org.uk/people/dr-adam-plowman" content="Adam
  Plowman" %}** (University of Manchester): <span data-toggle="foldable-tooltip" data-icon="fa fa-info-circle" data-preview="Click to see the abstract" data-title="Using MTEX with MatFlow for crystal plasticity and phase field modeling" data-text="MatFlow is an open-source, cross-platform Python package for designing, running, and sharing reproducible hybrid computational workflows in materials science. Through its extension ecosystem, MatFlow can integrate with arbitrary open-source and proprietary materials science codes to form cohesive workflows. We highlight some recent examples of using MatFlow's MTEX extension to generate computational predictions that are calibrated using experimental results. We demonstrate the use of MTEX in MatFlow to generate correctly textured representative volume elements that are then used in crystal plasticity simulations to predict forming limits in aluminium alloys. We also demonstrate a method for encoding orientation data from MTEX into phase-field simulations to investigate abnormal grain growth in titanium alloys. Finally, we discuss our recent development work, which has focussed on enabling MatFlow to execute within a more varied set of computational environments, in support of our aim to allow MatFlow to be run anywhere, by anyone."></span>

- **{% include reference.html
  link="https://scholar.google.co.uk/citations?hl=en&user=GvwErjEAAAAJ&view_op=list_works&sortby=pubdate" content="Vivian Tong" %}** (National Physical Laboratory UK): *Characterising microstructural shapes using EBSD and correlative SEM imaging techniques*

<!--
- **{% include reference.html link="https://www.tue.nl/en/research/researchers/tijmen-vermeij/" content="Tijmen Vermeij" %}** (TU/e Eindhoven University of Technology): *Exploiting MTEX for alignment, analysis and identification of microstructure-correlated strain fields in micron-scale testing*
- **{% include reference.html link="https://www.ntnu.edu/employees/bjorn.sorensen" content="Bj&#x00f8;rn Eske S&#x00f8;rensen" %}** (Norwegian University of Science and Technology): *MTEX a versatile toolbox for the geologist enabling better implementation of crystallography and texture analysis in teaching and research*
- **{% include reference.html link="https://www.researchgate.net/profile/Omero-Orlandini" content="Omero Orlandini" %}** (University of Colorado Boulder): *Deep earthquakes, super-volcanoes, fossil eggs, and historic buildings: MTEX's ability to solve many problems*
-->

## Time Schedule 
<!--
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseMo"><b>Monday:</b> Parent Grain Reconstruction and more</a>
            </h4>
        </div>
        <div id="collapseMo" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
				<table>
					<thead>
						<tr>
							<th style="text-align: left">Time</th>
							<th style="text-align: left">Speaker</th>
							<th style="text-align: left">Title</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: right">9:00&minus;10:00</td>
							<td style="text-align: left">F.&nbsp;Niessen</td>
							<td style="text-align: left">Parent Grain Reconstruction in MTEX - the new variant graph approach</td>
						</tr>
						<tr>
							<td style="text-align: right">10:00&minus;10:30</td>
							<td style="text-align: left">T.&nbsp;Nyyssönen</td>
							<td style="text-align: left">Challenges in reconstructing Austenitinic twins  Reconstruction</td>
						</tr>
						<tr>
							<td style="text-align: right">10:30&minus;11:00</td>
							<td style="text-align: left">M.&nbsp;Witte</td>
							<td style="text-align: left">Applications of Austenite Reconstruction</td>
						</tr>
						<tr>
							<td style="text-align: right">11:00&minus;11:30</td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: left">Lunch</td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">13:30&minus;14:30</td>
							<td style="text-align: left">T.&nbsp;Vermeij</td>
							<td style="text-align: left">Exploiting MTEX for alignment, analysis and identification of microstructure-correlated strain fields in micron-scale testing</td>
						</tr>
						<tr>
							<td style="text-align: right">14:30&minus;15:00</td>
							<td style="text-align: left">C.&nbsp;Cayron</td>
							<td style="text-align: left">Grain reconstruction by using groupoid composition tables</td>
						</tr>
						<tr>
							<td style="text-align: right">15:00&minus;15:30</td>
							<td style="text-align: left">L.&nbsp;Germain</td>
							<td style="text-align: left">Reconstructions with Merengue 2 and perspectives of development</td>
						</tr>
						<tr>
							<td style="text-align: right">15:30&minus;16:00</td>
							<td style="text-align: left">B.&nbsp;Britton</td>
							<td style="text-align: left">Parent grain reconstruction in Zircaloy-4: comparison of methods and post processing</td>
						</tr>
					</tbody>
				</table>
			</div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTue"><b>Tuesday:</b> MTEX in Geology</a>
            </h4>
        </div>
        <div id="collapseTue" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
				<table>
					<thead>
						<tr>
							<th style="text-align: left">Time</th>
							<th style="text-align: left">Speaker</th>
							<th style="text-align: left">Title</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: right">9:00&minus;10:00</td>
							<td style="text-align: left">B.&nbsp;Soerensen</td>
							<td style="text-align: left">MTEX a versatile toolbox for the geologist enabling better implementation of crystallography and texture analysis in teaching and research</td>
						</tr>
						<tr>
							<td style="text-align: right">10:00&minus;10:30</td>
							<td style="text-align: left">Lopez&minus;Sanchez</td>
							<td style="text-align: left">Unravelling dynamic recrystallization by subgrain rotation in olivine using MTEX</td>
						</tr>
						<tr>
							<td style="text-align: right">10:30&minus;11:00</td>
							<td style="text-align: left">Sheng&nbsp;Fan</td>
							<td style="text-align: left">Weighted Burgers vector method combined with MTEX to quantify the slip system in ice</td>
						</tr>
						<tr>
							<td style="text-align: right">11:00&minus;11:30</td>
							<td style="text-align: left">K.&nbsp;Marquardt</td>
							<td style="text-align: left">Influence of grain boundaries on the rheology of the Earth's upper mantle</td>
						</tr>
						<tr>
							<td style="text-align: left">Lunch</td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">13:30&minus;14:30</td>
							<td style="text-align: left">O.&nbsp;Orlandini</td>
							<td style="text-align: left">Deep earthquakes, super-volcanoes, fossil eggs, and historic buildings: MTEX's ability to solve many problems</td>
						</tr>
						<tr>
							<td style="text-align: right">14:30&minus;15:00</td>
							<td style="text-align: left">Z.&nbsp;Michels</td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">15:00&minus;15:30</td>
							<td style="text-align: left">M. Allard</td>
							<td style="text-align: left">Coupled in situ EBSD &amp; EPMA maps unfolding the deformation history in oceanic gabbros</td>
						</tr>
						<tr>
							<td style="text-align: right">15:30&minus;16:30</td>
							<td style="text-align: left">S.&nbsp;Merkel</td>
							<td style="text-align: left">Microstructures in Earth mantle minerals: using MTEX to track grains and physical properties of polycrystals in high pressure experiments</td>
						</tr>
					</tbody>
				</table>
			</div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseWe"><b>Wednesday:</b> MTEX in Material Science</a>
            </h4>
        </div>
        <div id="collapseWe" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
				<table>
					<thead>
						<tr>
							<th style="text-align: left">Time</th>
							<th style="text-align: left">Speaker</th>
							<th style="text-align: left">Title</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: right">9:00&minus;10:00</td>
							<td style="text-align: left">W.&nbsp;Pantleon</td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">10:00&minus;10:30</td>
							<td style="text-align: left">P.&nbsp;Lehto</td>
							<td style="text-align: left">Misorientation gradients in polycrystalline engineering materials – characterization of grains and grain sub-structures</td>
						</tr>
						<tr>
							<td style="text-align: right">10:30&minus;11:00</td>
							<td style="text-align: left">D.&nbsp;Depriester</td>
							<td style="text-align: left">Coupled in situ SEM-DIC/CPFEM analyses of pure copper</td>
						</tr>
						<tr>
							<td style="text-align: right">11:00&minus;11:30</td>
							<td style="text-align: left">K.&nbsp;Frydrych</td>
							<td style="text-align: left">Texture-based optimization of crystal plasticity parameters using MTEX</td>
						</tr>
						<tr>
							<td style="text-align: left">Lunch</td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">13:30&minus;14:00</td>
							<td style="text-align: left">D.&nbsp;Savage</td>
							<td style="text-align: left">Using SIFT and general B-spline elastic deformation to unwarp EBSD in MTEX</td>
						</tr>
						<tr>
							<td style="text-align: right">14:00&minus;14:30</td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">14:30&minus;15:00</td>
							<td style="text-align: left">J.&nbsp;Hisccocks</td>
							<td style="text-align: left">Making a graphical user interface for MTEX: a how-to guide</td>
						</tr>
						<tr>
							<td style="text-align: right">15:00&minus;16:00</td>
							<td style="text-align: left">Round&nbsp;Table Discussion</td>
							<td style="text-align: left"></td>
						</tr>
					</tbody>
				</table>
            </div>
        </div>
    </div>
</div>
-->

## Venue:

<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title"> <a class="noCrossRef accordion-toggle" data-toggle="collapse"
    data-parent="#accordion" href="#collapseLocation"><b>Location:</b> TU Freiberg, Germany</a>
            </h4>
        </div>
        <div id="collapseLocation" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
				<div markdown="span">
{% include reference.html link="https://goo.gl/maps/dFvybo2UhVnQkBjV8" content="Hörsaalgebäude, Prüferstraße 4"%}
            </div>
		</div>
    </div>	
	</div>	
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title"> <a class="noCrossRef accordion-toggle" data-toggle="collapse"
    data-parent="#accordion" href="#collapseAccomodation"><b>Accommodation:</b> </a>
            </h4>
        </div>
        <div id="collapseAccomodation" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
				<div markdown="span">
*please use the keycode "Professor Hielscher MTEX Workshop"	when booking the rooms*			
<br>				
<br>				
{% include reference.html link="https://www.hotel-kreller.de" content="**Hotel
  Kreller:**" %} 79 Euro per night with breakfast, very close
<br>				
<br>				
{% include reference.html link="https://www.hotel-am-obermarkt.de" content="**Hotel am
  Obermarkt:**" %} 79 Euro per night without breakfast, very close
<br>				
<br>				
{% include reference.html link="https://www.elly-hostel.de" content="**Elly Hostel:**" %} 68 Euro per night, with kitchen
            </div>
		</div>
    </div>
</div>
</div>


## Registration:

- Please use our {% include reference.html link="https://tu-freiberg.de/fakult1/ana/professuren/prof-dr-ralf-hielscher/mtex/registration" content="registration form" %} to subscribe or write an email to {% include reference.html link="mailto:ralf.hielscher@math.tu-freiberg.de" content="Ralf.Hielscher@math.tu-freiberg.de" %}
- Deadline for registration is 31th of January 2023

## Registration Fee:
- first + second week:  (PhD) students - 300 Euro, other - 500 Euro
- second week: (PhD) students - 100 Euro, other - 200 Euro
- the registration fee includes full catering for the days of the workshop and
  an excursion
- Registration for students of the TU Freiberg, the TU Chemnitz and the University of Halle is free of charge



## Organizers:

{% include reference.html link="https://tu-freiberg.de/fakult1/ana/hielscher" content="Ralf Hielscher" %} (TU Bergakademie Freiberg)
, {% include reference.html link="https://geodynamics.geo.uni-halle.de/ruediger-kilian/" content="Rüdiger Kilian" %} (Universität Halle)
, {% include reference.html link="https://structuretectonics.org/people/luiz-morales/" content="Luiz Morales" %} (ETH Zürich)
, {% include reference.html link="https://www.researchgate.net/profile/Frank-Niessen-4" content="Frank Niessen" %} (DTU Dänemark)
