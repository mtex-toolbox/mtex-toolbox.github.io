---
title: Freiberg MTEX Workshop 2022
keywords: workshop
last_updated: 27-Jan-2022
hide_sidebar: true
permalink: workshops.html
folder: workshops
toc: false
---

The workshop extends over two weeks and is part of the master course *Introduction into crystallographic texture analysis* and counts for **5 ECTS** points. While the first week is mainly devoted to beginners in MTEX and/or texture analysis, the second week is a meeting of MTEX users with different experiences to share specific use cases, tips and tricks and discuss recent and upcoming developments in MTEX.

{% include note.html content="Due to the ongoing Corona crisis the workshop will be held entirely online via zoom. This does not mean that communication 
is one directional. Instead all participants are allowed at all time to interact with the lecturer. We also encourage the participants to send data files to the organiziers prior to the workshop which will than be discussed during the exercises." %}

## Week 1: Learning Crystallographic Texture Analysis with MTEX 
Date: 21.03.2022 - 25.03.2022

During the first week we provide on a daily basis two morning lectures covering the basic theoretical principles of crystallography, diffraction and texture analysis. During the two afternoon exercises the theoretical concepts will be demonstrated via practical examples within MTEX.

<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseMonday"><b>Monday:</b> Crystal Lattices and Rotations</a>
            </h4>
        </div>
        <div id="collapseMonday" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
**Lecture 1 - General Concepts:** <a href="https://videocampus.sachsen.de/m/24eab5953e110fa2eae768bd31eb70d0877d914d403d14f25f5aec82d082bf2186b107e2797207d5f29883543711d151840d694f65eb99b7b2ea687318f2b212" target="_blank">free video</a>
<br>
Matlab basics and general concepts of MTEX, the class vector3d, spherical coordinates
<br>
<br>
**Lecture 2 - Crystal Lattice:**
<br>
crystal lattice, direct and reciprocal coordinate system, Miller indices, zonal axes, crystal shapes
<br>
<br>
**Lecture 3 - Rotations and Crystal Symmetries:**
<br>
rotation representations, Euler angles, Rodrigues vectors, visualizations, fibers, crystal symmetries, point groups, Laue groups, space groups, fundamental sectors
<br>
<br>
**Exercise 1:**
</div>
			</div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTuesday"><b>Tuesday:</b> Crystal Symmetries and Orientations</a>
            </h4>
        </div>
        <div id="collapseTuesday" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
**Lecture 4 - Orientations:**
<br>
symmetrically equivalent orientations, pole figures, inverse pole figures, visualizations, parameterization
<br>
<br>
**Lecture 5 - Density Functions:**
<br>
kernel density estimation, orientation density function, pole density function, inverse pole density function, model ODFs, ODF characteristics, random sampling
<br>
<br>
**Lecture 6 - ODF Reconstruction from Pole Figure Data:**
<br>
X-ray, neutron and synchrotron diffraction, data import, ghost correction, ODF estimation
<br>
<br>
**Exercise 2:**
</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseWednesday"><b>Wednesday:</b> Electron Backscatter Diffraction (EBSD)</a>
            </h4>
        </div>
        <div id="collapseWednesday" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
**Lecture 7 - EBSD:**
<br>
data import, pole figures, inverse pole figures, color keys, reference frame, properties
<br>
<br>
**Lecture 8 - Grains:**
<br>
grain reconstruction, shape properties, orientation properties
<br>
<br>
**Exercise 3 - EBSD:**
<br>
**Exercise 4 - Grains:**
</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThursday"><b>Thursday:</b> Misorientations</a>
            </h4>
        </div>
        <div id="collapseThursday" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
**Lecture 9 - Misorientations:**
<br>
definition, visualization, phase transitions, misorientation axis, misorientation angle distribution, KAM, GOS
<br>
<br>
**Lecture 10 - Grain Boundaries:**
<br>
geometric properties, visualization, smoothing, tilt vs. twist boundaries, grain boundary misorientations
<br>
<br>
**Exercise 5 - Grain Boundaries:**
<br>
**Exercise 6 - Denoising EBSD Data and Misorientations:**
</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFriday"><b>Friday:</b> Tensorial Properties</a>
            </h4>
        </div>
        <div id="collapseFriday" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
**Lecture 11 - Plastic / Elastic Deformation:**
<br>
stress, strain, deformation tensors, slip systems, Schmid Factor, dislocation systems, GND
<br>
<br>
**Lecture 12 - Tensorial Properties:**
<br>
wave velocities, visualization, average tensors (Voigt, Reuss, Hill) from EBSD and ODF
<br>
<br>
**Exercise 7 - Tensorial Properties:**
</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
</div>
<!-- /.panel-group -->

**Times:** Lecture 1: 8:45-10:00, Lecture 2: 10:30 - 11:45, Exercise 1: 13:00-14:30, Exercise 2: 15:00 - 16:00

## Week 2: MTEX in Applications
Date: 28.03.2022 - 30.03.2022

The second week will consist of lectures by invited experts that explain in
detail the application of MTEX to specific problems as listed
below. Furthermore, current or future users of MTEX are invited to share their
experiences with MTEX or ask questions about specific use cases. To encourage
discussions we plan with slots of 20 minutes talk given by the participants
followed by 10 minute discussions. As we expect a very heterogeneous
auditorium we kindly ask the participant to keep their talks as simple as
possible.

### Keynote Speakers

* **[Sébastien Merkel](http://merkel.texture.rocks/)** (Université de Lille,
  France): *Microstructures in Earth mantle minerals: using MTEX to track
  grains and physical properties of polycrystals in high pressure experiments*
* **[Wolfgang Pantleon](https://www.mek.dtu.dk/)** (DTU Dänemark)
* **[Tijmen
    Vermeij](https://www.tue.nl/en/research/researchers/tijmen-vermeij/)**
    (TU/e Eindhoven University of Technology): *Exploiting MTEX for alignment,
    analysis and identification of microstructure-correlated strain fields in
    micron-scale testing*
* **[Bjørn Eske Sørensen](https://www.ntnu.edu/employees/bjorn.sorensen)**
  (Norwegian University of Science and Technology): *MTEX a versatile toolbox
  for the geologist enabling better implementation of crystallography and
  texture analysis in teaching and research*
* **[Omero Orlandini](https://www.researchgate.net/profile/Omero-Orlandini)**
  (University of Colorado Boulder): *Deep earthquakes, super-volcanoes, fossil
  eggs, and historic buildings: MTEX's ability to solve many problems*

## Time Schedule 

| Time  | Speaker  |  Title |
| :----       | :------  | :--- |
|  9:00-10:00 | B. Soerensen  | MTEX a versatile toolbox for the geologist enabling better implementation of crystallography and texture analysis in teaching and research|
| 10:00-10:30 | F. Ferreira   | Influence of grain boundaries on the rheology of the Earth's upper mantle|
| 10:30-11:00 | Lopez-Sanchez | Unravelling dynamic recrystallization by subgrain rotation in olivine using MTEX|
| 11:00-11:30 | Sheng Fan     | Weighted Burgers vector method combined with MTEX to quantify the slip system in ice|
| Lunch		|               | |
| 13:30-14:30 | O. Orlandini  | Deep earthquakes, super-volcanoes, fossil eggs, and historic buildings: MTEX's ability to solve many problems|
| 14:30-15:00 | Z. Michels    | |
| 15:00-15:30 | Mael          | EBSD & EPMA maps in plastically deformed gabbros|
| 15:30-16:30 | S. Merkel     | Microstructures in Earth mantle minerals: using MTEX to track grains and physical properties of polycrystals in high pressure experiments|

| Time  | Speaker  |  Title |
|  9:00-10:00 |  W. Pantleon              ||
| 11:00-11:30 |  P. Lehto				  | |
| 10:00-10:30 |  D. Depriester 			  | Coupled in situ SEM-DIC/CPFEM analyses of pure copper |
| 10:30-11:00 |  K. Frydrych			  | Texture-based optimization of crystal plasticity parameters using MTEX |
| Lunch		|    						  ||
| 13:30-14:00 |  D. Savage 	        	  ||
| 14:00-14:30 |          	        	  ||
| 14:30-15:00 |  J. Hisccocks			  | Making a graphical user interface for MTEX: a how-to guide|
| 15:00-15:30 |  Round Table Discussion	  ||
| 15:30-16:00 |  Round Table Discussion	  ||

<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseMo"><b>Monday, 28.03.2022:</b></a>
            </h4>
        </div>
        <div id="collapseMo" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
{% comment %}
| Time      | Speaker  |  Title |
| :----       | :------  | :--- |
|  9:00-10:00 | F. Niessen   | Parent Grain Reconstruction in MTEX |
| 10:00-10:30 | T. Nyyssonen | |
| 10:30-11:00 | M. Witte     | |
| 11:00-11:30 |              | |
| Lunch	      |              | |
| 13:30-14:30 |  T. Vermeij  | Exploiting MTEX for alignment, analysis and identification of microstructure-correlated strain fields in micron-scale testing|
| 14:30-15:00 |  C. Cayron   | Grain reconstruction by using groupoid composition tables|
| 15:00-15:30 |  L. Germain  | Reconstructions with Merengue 2 and perspectives of development|
| 15:30-16:00 |  B. Britton  | Parent grain reconstruction in Zircaloy-4: comparison of methods and post processing|
{% endcomment %}
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
					  <td style="text-align: left">9:00-10:00</td>
					  <td style="text-align: left">F. Niessen</td>
					  <td style="text-align: left">Parent Grain Reconstruction in MTEX</td>
					</tr>
					<tr>
					  <td style="text-align: left">10:00-10:30</td>
					  <td style="text-align: left">T. Nyyssonen</td>
					  <td style="text-align: left"> </td>
					</tr>
					<tr>
					  <td style="text-align: left">10:30-11:00</td>
					  <td style="text-align: left">M. Witte</td>
					  <td style="text-align: left"> </td>
					</tr>
					<tr>
					  <td style="text-align: left">11:00-11:30</td>
					  <td style="text-align: left"> </td>
					  <td style="text-align: left"> </td>
					</tr>
					<tr>
					  <td style="text-align: left">Lunch</td>
					  <td style="text-align: left"> </td>
					  <td style="text-align: left"> </td>
					</tr>
					<tr>
					  <td style="text-align: left">13:30-14:30</td>
					  <td style="text-align: left">T. Vermeij</td>
					  <td style="text-align: left">Exploiting MTEX for alignment, analysis and identification of microstructure-correlated strain fields in micron-scale testing</td>
					</tr>
					<tr>
					  <td style="text-align: left">14:30-15:00</td>
					  <td style="text-align: left">C. Cayron</td>
					  <td style="text-align: left">Grain reconstruction by using groupoid composition tables</td>
					</tr>
					<tr>
					  <td style="text-align: left">15:00-15:30</td>
					  <td style="text-align: left">L. Germain</td>
					  <td style="text-align: left">Reconstructions with Merengue 2 and perspectives of development</td>
					</tr>
					<tr>
					  <td style="text-align: left">15:30-16:00</td>
					  <td style="text-align: left">B. Britton</td>
					  <td style="text-align: left">Parent grain reconstruction in Zircaloy-4: comparison of methods and post processing</td>
					</tr>
				  </tbody>
				</table>
			</div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTue"><b>Tuesday, 29.03.2022:</b></a>
            </h4>
        </div>
        <div id="collapseTue" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
{% comment %}
| Time  | Speaker  |  Title |
| :----       | :------  | :--- |
|  9:00-10:00 | B. Soerensen  | MTEX a versatile toolbox for the geologist enabling better implementation of crystallography and texture analysis in teaching and research|
| 10:00-10:30 | F. Ferreira   | Influence of grain boundaries on the rheology of the Earth's upper mantle|
| 10:30-11:00 | Lopez-Sanchez | Unravelling dynamic recrystallization by subgrain rotation in olivine using MTEX|
| 11:00-11:30 | Sheng Fan     | Weighted Burgers vector method combined with MTEX to quantify the slip system in ice|
| Lunch		|               | |
| 13:30-14:30 | O. Orlandini  | Deep earthquakes, super-volcanoes, fossil eggs, and historic buildings: MTEX's ability to solve many problems|
| 14:30-15:00 | Z. Michels    | |
| 15:00-15:30 | Mael          | EBSD & EPMA maps in plastically deformed gabbros|
| 15:30-16:30 | S. Merkel     | Microstructures in Earth mantle minerals: using MTEX to track grains and physical properties of polycrystals in high pressure experiments|
{% endcomment %}
			</div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseWe"><b>Wednesday, 30.03.2022:</b></a>
            </h4>
        </div>
        <div id="collapseWe" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
{% comment %}
| Time  | Speaker  |  Title |
|  9:00-10:00 |  W. Pantleon              ||
| 11:00-11:30 |  P. Lehto				  | |
| 10:00-10:30 |  D. Depriester 			  | Coupled in situ SEM-DIC/CPFEM analyses of pure copper |
| 10:30-11:00 |  K. Frydrych			  | Texture-based optimization of crystal plasticity parameters using MTEX |
| Lunch		|    						  ||
| 13:30-14:00 |  D. Savage 	        	  ||
| 14:00-14:30 |          	        	  ||
| 14:30-15:00 |  J. Hisccocks			  | Making a graphical user interface for MTEX: a how-to guide|
| 15:00-15:30 |  Round Table Discussion	  ||
| 15:30-16:00 |  Round Table Discussion	  ||
{% endcomment %}
            </div>
        </div>
    </div>
    <!-- /.panel -->
</div>
<!-- /.panel-group -->

## Registration:

- Please use our [registration
  form](https://tu-freiberg.de/fakult1/ana/professuren/prof-dr-ralf-hielscher/mtex/registration)
  to subscribe or write an email to <a
  href="mailto:Ralf.Hielscher@math.tu-freiberg.de">Ralf.Hielscher@math.tu-freiberg.de</a>
- Deadline for registration is 28th of February 2022
- Registration fee first week: students - 100 Euro, other - 200 Euro
- Registration for second week is free
- Registration for students of the TU Freiberg, the TU Chemnitz and the University of Halle is free of charge



## Organizers:

[Ralf Hielscher](https://tu-freiberg.de/fakult1/ana/hielscher) (TU Bergakademie Freiberg),
[Rüdiger Kilian](https://geodynamics.geo.uni-halle.de/ruediger-kilian/) (Universität Halle),
[Luiz Morales](https://structuretectonics.org/people/luiz-morales/) (ETH Zürich),
[Frank Niessen](https://www.researchgate.net/profile/Frank-Niessen-4) (DTU Dänemark)
