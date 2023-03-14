---
title: Freiberg MTEX Workshop 2023
keywords: workshop, 2023
sidebar: workshops_sidebar
permalink: workshop23
folder: workshops
toc: false
---

<!---
{{site.data.alerts.warning}}
Everybody who registered should have received an email with details on the
payment. Please contact us via <a
href="mailto:mtexworkshop@gmail.com">mtexworkshop@gmail.com</a> if you have
not yet received such an email or still want to register.
{{site.data.alerts.end}}
-->
<!--
<div markdown="span" class="alert alert-warning" role="alert">
<i class="fafa-warning"></i> <b>Important:</b> 
Everybody who registered should have received an email with details on the
payment. Please contact us via <a
href="mailto:mtexworkshop@gmail.com">mtexworkshop@gmail.com</a> if you have
not yet received such an email or still want to register.
</div>-->


<!---
<div markdown="span" class="alert alert-warning" role="alert"><i class="fa
fa-exclamation-circle "></i> <b>Important:</b> 
Everybody who registered should have received an email with details on the
payment. Please contact us via <a
href="mailto:mtexworkshop@gmail.com">mtexworkshop@gmail.com</a> if you have
not yet received such an email or still want to register.
</div>
-->

The workshop extends over two weeks and is part of the master course {%
include reference.html link="" content="Introduction into crystallographic
texture analysis" %} and counts for **5 ECTS** points. While the first week is
mainly devoted to beginners in MTEX and/or texture analysis, the second week
is a meeting of MTEX users with different experiences to share specific use
cases, tips and tricks and discuss recent and upcoming developments in MTEX. A
special focus will be the new features of **MTEX 5.9** which will include
pseudo 3d functionality for EBSD and grains and multiple spatial reference
systems.

<!--
{% include note.html content="The workshop will be held primarily in
**presence**. Although we will provide online access to all lectures and
presentations we encourage everybody to come to Freiberg to have the best
possible training and discussions. We also encourage the participants to send
data files to the organiziers prior to the workshop which will than be
discussed during the exercises." %}
-->
<!--To stimulate this we made the fee for online
participation higher then the fee for participation in pretense.-->

{% capture par_default %}
	Every registered participant should now have received an email with a password in order to see the course materials. If you have not yet received this email please contact one of the organizers.
{% endcapture %}
{% capture par_access %}
	You are logged in.
	{% include reference.html link="https://eu01web.zoom.us/j/65513934015?pwd=YjZSR2h2Qk5IajhMbzZGNVR6aGowdz09" content="Enter Workshop zoom session" %}
{% endcapture %}
{% include password_access_restriction.html content_default=par_default content_access=par_access %}

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

**Lecture 0 - General Concepts:**
{% include reference.html link="https://videocampus.sachsen.de/m/24eab5953e110fa2eae768bd31eb70d0877d914d403d14f25f5aec82d082bf2186b107e2797207d5f29883543711d151840d694f65eb99b7b2ea687318f2b212" content="video" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/R92pfMnkZqHDWTF" content="slides" class="course_material" %}
<!--<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/1_basics.pdf" class="course_material" content="slides" %}-->
<br>
Matlab basics and general concepts of MTEX, the class vector3d, spherical coordinates
<br>
<br>

**Lecture 1 - Crystal Geometry:**
<!--{% include reference.html link="https://videocampus.sachsen.de/m/24eab5953e110fa2eae768bd31eb70d0877d914d403d14f25f5aec82d082bf2186b107e2797207d5f29883543711d151840d694f65eb99b7b2ea687318f2b212" content="video" %}-->
<span class="course_material"></span>{% include reference.html
link="https://tuc.cloud/index.php/s/kYHmCcWrk3AdaXr" content="slides1"
class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://tuc.cloud/index.php/s/c2xYrxHWeFAr8Dk" content="slides2" class="course_material" %}
<!--<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/1_basics.pdf" class="course_material" content="slides" %}-->
<br>
crystal lattice, direct and reciprocal coordinate system, Miller indices, zonal axes, crystal shapes
<!--Matlab basics and general concepts of MTEX, the class vector3d, spherical coordinates-->
<br>
<br>
**Exercise 1:**
{% include reference.html link="https://tuc.cloud/index.php/s/xBLtpfHig42SdQZ" content="exercises" class="course_material" download=true %}
<!--{% include reference.html link="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/GfH27MesxNek5sA" content="slides" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://videocampus.sachsen.de/m/0a9313e8625de72815e1d0bb4b28e33fb24b0e2643fa22c5340b3004bd1ce4c809cbf0aa0ccf64bc3c76138bdaad195fdd612ce0864d9e50aca50b82d788d031" content="video 1" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://videocampus.sachsen.de/m/ea4c0b7d65042571665ea24fce9b2ad8ea6aa7701abe2a772191e2ccef8e26b65e2659ca4163301a71ba93217e14c0c6df33db04dfe8c0b6b7dfc3040b3b9177" content="video 2" class="course_material" %}-->
<br>
<br>

*Lunch*
<br>
<br>
**Lecture 2 - Crystal Symmetries and Orientations:**
{% include reference.html
link="https://tuc.cloud/index.php/s/c2xYrxHWeFAr8Dk" content="slides" class="course_material" %}
<br>
point groups, Laue groups, symmetrically equivalent orientations, 
pole figures, inverse pole figures, fundamental sectors
<br>
<br>
**Exercise 2:**
{% include reference.html link="https://tuc.cloud/index.php/s/JDwafPe8GfbMbGp" content="exercises" class="course_material" download=true %}
<!--
{% include reference.html link="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09" content="zoom session 13:00-14:00" class="course_material" %}
<span class="course_material">, </span>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_1.m" content="exercises" class="course_material" download=true %}-->
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
{% include reference.html
link="https://tuc.cloud/index.php/s/P984MMHtqZ3wcba" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/e_eGJac6nxo" content="video" %}
<br>
data import, reference frame alignment, color keys, data cleaning
<br>
<br>
**Exercise 3:**
{% include reference.html
link="https://tuc.cloud/index.php/s/7inzCxnJej4zg6g" content="script"
class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/xsGDcae2SZXpXQo"
content="solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/K2RrmDFKdW2qgW3" content="data 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/zRFrL42nwjkeoGe" content="data 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/SGTkoaxcIYU" content="video" %}
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 4 - Grains:**
{% include reference.html
link="https://tuc.cloud/index.php/s/XMrkJ9LEeMaLPwJ" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/xkic28kejUA" content="video" %}
<br>
segmentation, shape properties, orientation properties, grain selection, grain statistics
<br>
<br>
**Exercise 4:**
{% include reference.html
link="https://tuc.cloud/index.php/s/j7JGitAWK5yRfk9" content="script"
class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/nykfPH5fXWRK4yo"
content="solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/53MRS5VOoio" content="video" %}
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

{% include reference.html
link="https://tuc.cloud/index.php/s/CbNm6Zn5Xx54wQd"
content="slides 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/wLHlZ_F-w5w" content="video" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/aY8DJbfiyP85HJJ"
content="slides 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/7n4WjahvgkI" content="video" %}
<br>
grain boundary misorientations, misorientation axis, misorientation angle, KAM, GOS, twin boundaries, tilt vs. twist
boundaries, phase transition, orientation
gradients,  statistics of boundary networks, habit planes
<br>
<br>
**Exercise 5:**
{% include reference.html
link="https://tuc.cloud/index.php/s/zxKjQtKxM9GLRSR"
content="script 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/WsfxZdWA7qFZ3Ce"
content="script 1 solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/nJkwEP82gsPteRY"
content="data 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/2XZozdxBcrrNWCN"
content="script 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/3Xm6PPQcoMBefAn"
content="script 2 solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/n36sr54T3mmmsK2"
content="data 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/7n4WjahvgkI" content="video" %}
<br>
<br>
*Lunch*
<br>
<br>
**Excursion: Freiberg Silver Mine**

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

**Lecture 6 - Density Functions:**
{% include reference.html
link="https://tuc.cloud/index.php/s/dWLYAMt52rNro2G"
content="slides 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/B6ka2ADCYws" content="video" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/KNYs2NoQpD5trgL"
content="slides 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/xPNCCura-ao" content="video" %}
<br>
kernel density estimation, orientation density function, pole density
function, inverse pole density function, model ODFs, ODF characteristics,
random sampling, ODF reconstuction from XRD data
<br>
<br>
**Exercise 6:**
{% include reference.html
link="https://tuc.cloud/index.php/s/2CSLi5Qr6pH3D4G"
content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/NWJwW2nBE8GQqxL"
content="user data 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/JmpcteLZ4pbsKSW"
content="user data 2" class="course_material" %}
<span class="course_material">, </span>

<br>
<br>
*Lunch*
<br>
<br>

**Lecture 7 - Tensorial Properties:**
{% include reference.html
link="https://tuc.cloud/index.php/s/QBg5QkGbF7CKAxg"
content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/bGa6XWSPtgSw3Td"
content="Live Script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://tuc.cloud/index.php/s/3dAYckfbyzd3R98"
content="EBSD data" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/geUvdAOHvMM" content="video" %}

<br>
tensor arithmetic, visualization, effect of symmetry, thermal expansion, stress and strain
tensors, piezoelectricity, elasticity, wave velocities
<br>
<br>
**Lecture 8 - From Single Grain to Bulk Tensors:**
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/FwDDIHoLfK8" content="video" %} 
<br>
  average tensors (Voigt, Reuss, Hill) from EBSD and ODF
 

<br>

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
**Exercise 7:**
{% include reference.html
link="https://tuc.cloud/index.php/s/LWnxz67Ckwcmd9F"
content="script file" class="course_material" %}
<br>
<br>
**Lecture 9 - Plastic Deformation:**
{% include reference.html
link="https://tuc.cloud/index.php/s/aJSPqwLK5nLqZLx"
content="slides" class="course_material" %}
<br>
deformation tensors, slip systems, Schmid Factor, Taylor factor, simulation, dislocation systems,
dislocation density estimation

<br>
<br>
*lunch*
<br>
<br>
Student presentation 
**Aditya Shukla: Scanning 3D xray microscopy to image grains in CdTe solar cells**
<br>
<br>
**Excercise 9 - Parent Grain Reconstruction and Free Discussion of Personal Data Sets:**
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
  content="Marco A. Lopez-Sanchez" %}** (Universidad de Oviedo): *Seismic modelling using EBSD data: why, how, limitations and good practices*

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
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse"
    data-parent="#accordion" href="#collapseMo"><b>Monday: Crystal Plasticity
    and more</b> </a>
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
							<td style="text-align: left">K.&nbsp;Frydrych</td>
							<td style="text-align: left">Plasticity Simulation with MTEX</td>
						</tr>
						<tr>
							<td style="text-align: left"><i>Coffee</i></td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">10:15&minus;10:45</td>
							<td style="text-align: left">T.&nbsp;Vermeij</td>
							<td style="text-align: left">Automated identification of slip system activity fields from digital image correlation data</td>
						</tr>
						<tr>
							<td style="text-align: right">10:45&minus;11:15</td>
                            <td style="text-align: left">F.&nbsp;Niessen</td>
							<td style="text-align: left">Habit plane determination from reconstructed parent phase orientation maps</td>
						</tr>
						<tr>
							<td style="text-align: right">11:15&minus;11:30</td>
							<td style="text-align: left">L.&nbsp;Richter</td>
							<td style="text-align: left">Characterization of habit planes in multiphase materials</td>
						</tr>
						<tr>
							<td style="text-align: right">11:30&minus;12:00</td>
							<td style="text-align: left">T.&nbsp;Kohne</td>
							<td style="text-align: left">Local tetragonality determination of martensite in high carbon steels</td>
						</tr>
						<tr>
							<td style="text-align: left"><i>Lunch</i></td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">13:30&minus;14:30</td>
							<td style="text-align: left">A.&nbsp;Plowman</td>
							<td style="text-align: left">Using MTEX with MatFlow for crystal plasticity and phase field modeling</td>
						</tr>
						<tr>
							<td style="text-align: right">14:30&minus;15:00</td>
                            <td style="text-align: left">E.&nbsp;Wünsche</td>
							<td style="text-align: left">Orientation Dependent Functions</td>							
						</tr>
						<tr>
							<td style="text-align: left"><i>Coffee</i></td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">15:15&minus;15:45</td>
							<td style="text-align: left">G.&nbsp;Zeng</td>
							<td style="text-align: left">Explore the Solidification Orientation Relationships Using EBSD and MTEX <i>-online-</i></td>
						</tr>						
						<tr>
							<td style="text-align: right">15:45&minus;16:15</td>
 							<td style="text-align: left">B.&nbsp;Begley</td>
							<td style="text-align: left">An MTEX-based API for VPSC <i>-online-</i></td>
						</tr>
						<tr>
							<td style="text-align: right">16:15&minus;16:30</td>
 							<td style="text-align: left">C.&nbsp;Chiu</td>
							<td style="text-align: left">Crystal plasticity simulations and MTEX</td>
						</tr>
						<tr>
							<td style="text-align: right">16:30&minus;16:45</td>
 							<td style="text-align: left">S.&nbsp;Prüger</td>
							<td style="text-align: left">Modeling of austenitic oligo-crystals using Abaqus and MTEX</td>
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
							<td style="text-align: left">R.&nbsp;Kühn</td>
							<td style="text-align: left">Analyzing X-ray diffraction data of polyphase rocks using MTEX</td>
						</tr>
						<tr>
							<td style="text-align: left"><i>Coffee</i></td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">10:15&minus;10:45</td>
							<td style="text-align: left">M.&nbsp;Bestmann</td>
							<td style="text-align: left">Seismic induced anisotropy and kinking in quartz</td>
						</tr>
						<tr>
							<td style="text-align: right">10:45&minus;11:15</td>
							<td style="text-align: left">L.&nbsp;Morales</td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">11:15&minus;11:45</td>
							<td style="text-align: left">V.&nbsp;Ocelik</td>							
							<td style="text-align: left">Analysis of spherulitic and rotational crystal growth of Quartz
						thin films</td>							
						</tr>
						<tr>
							<td style="text-align: left"><i>Lunch</i></td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">13:30&minus;14:30</td>
							<td style="text-align: left">Lopez&minus;Sanchez</td>
							<td style="text-align: left">Seismic modelling using EBSD data: why, how, limitations and good practices</td>
						</tr>
						<tr>
							<td style="text-align: right">14:30&minus;15:00</td>
 							<td style="text-align: left">T.&nbsp;Qu</td>
							<td style="text-align: left">Collecting crystallographic information of etwin in calcite rocks with MTEX</td>
						</tr>
						<tr>
							<td style="text-align: left"><i>Coffee</i></td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">15:15&minus;15:30</td>
							<td style="text-align: left">S. Gupta</td>
							<td style="text-align: left">Characterization of
    Precambrian felsic magmatism of Kumaun Lesser Himalaya: constraints from
    zircon morphological and U-Pb-Lu-Hf isotopic studies <i>-online-</i></td>
						</tr>
						<tr>
							<td style="text-align: right">15:45&minus;16:00</td>
							<td style="text-align: left">A.&nbsp;Dittes</td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">16:15&minus;16:30</td>
							<td style="text-align: left">J.&nbsp;Kozlík</td>
							<td style="text-align: left">Dictionary indexing of stress induced martensite in Ti-Nb-Zr-O alloy</td>
						</tr>
						<tr>
							<td style="text-align: right">16:30&minus;16:45</td>
							<td style="text-align: left">E.&nbsp;Knipschildt</td>
							<td style="text-align: left">Particle stimulated nucleation in three dimensions</td>
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
							<td style="text-align: left">V.&nbsp;Tong</td>
							<td style="text-align: left">Characterising microstructural shapes using EBSD and correlative SEM imaging techniques</td>
						</tr>
						<tr>
							<td style="text-align: left"><i>Coffee</i></td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">10:15&minus;10:45</td>
							<td style="text-align: left">B.&nbsp;Schulz</td>
							<td style="text-align: left">Advancing analytical
    electron microscopy methodologies to characterise microstructural features
    in superalloys <i>-online-</i></td>
						</tr>
						<tr>
							<td style="text-align: right">10:45&minus;11:15</td>
							<td style="text-align: left">N.&nbsp;S.&nbsp;Tapaswi</td>
							<td style="text-align: left">3D-XRD and MTEX <i>-online-</i></td>
						</tr>
						<tr>
							<td style="text-align: right">11:15&minus;11:45</td>
							<td style="text-align: left">C.&nbsp;Sakr</td>
							<td style="text-align: left">Energy Dispersive Laue Diffraction (EDLD) on tooth enamel</td>
						</tr>
						<tr>
							<td style="text-align: left"><i>Lunch</i></td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">13:30&minus;14:30</td>
							<td style="text-align: left">M.&nbsp;Petersmann</td>
							<td style="text-align: left">Use cases of MTEX for semiconductor metalizations</td>
						</tr>
						<tr>
							<td style="text-align: left"><i>Coffee</i></td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">14:45&minus;15:15</td>
							<td style="text-align: left">M.&nbsp;Kühlbach</td>
							<td style="text-align: left">Fairmat</td>
						</tr>
						<tr>
							<td style="text-align: right">15:15&minus;16:15</td>
							<td style="text-align: left">Round&nbsp;Table Discussion</td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">16:00&minus;17:00</td>
							<td style="text-align: left">Consultation</td>
							<td style="text-align: left"></td>
						</tr>
					</tbody>
				</table>
            </div>
        </div>
    </div>
</div>

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

<!-- - Please use our {% include reference.html
 link="https://tu-freiberg.de/fakult1/ana/professuren/prof-dr-ralf-hielscher/mtex/registration"
 content="registration form" %} to subscribe or write an email to -->
- please write an email to {% include reference.html link="mailto:mtexworkshop@gmail.com"
 content="mtexworkshop@gmail.com" %} where you include name, address, whether
 you are student or not, which week you wish to attend and wether you want to
 participate in present or online
 - Deadline for registration is 31th of January 2023

## Registration Fee:
- first + second week:  (PhD) students - 300 Euro, other - 500 Euro
- second week: (PhD) students - 100 Euro, other - 200 Euro
- {% include reference.html link="click here for making the payment" content="https://webshop-tu-freiberg.de/iana_shop_en/registration-mtex-workshop-2023-presence.html"%}
- Registration for students of the TU Freiberg, the TU Chemnitz and the University of Halle is free of charge



## Organizers:

{% include reference.html link="https://tu-freiberg.de/fakult1/ana/hielscher" content="Ralf Hielscher" %} (TU Bergakademie Freiberg)
, {% include reference.html link="https://geodynamics.geo.uni-halle.de/ruediger-kilian/" content="Rüdiger Kilian" %} (Universität Halle)
, {% include reference.html link="https://structuretectonics.org/people/luiz-morales/" content="Luiz Morales" %} (ETH Zürich)
, {% include reference.html link="https://www.researchgate.net/profile/Frank-Niessen-4" content="Frank Niessen" %} (DTU Dänemark)
