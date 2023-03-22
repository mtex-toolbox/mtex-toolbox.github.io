---
title: Freiberg MTEX Workshop 2023
keywords: workshop, 2023
sidebar: workshops_sidebar
permalink: workshop23
folder: workshops
toc: false
---

The workshop extends over two weeks and is part of the master course {% include reference.html link="" content="Introduction into crystallographic texture analysis" %} and counts for **5 ECTS** points. While the first week is mainly devoted to beginners in MTEX and/or texture analysis, the second week is a meeting of MTEX users with different experiences to share specific use cases, tips and tricks and discuss recent and upcoming developments in MTEX. A special focus will be the new features of **MTEX 5.9** which will include pseudo 3d functionality for EBSD and grains and multiple spatial reference systems.

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
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseMonday"><b>Monday:</b> Crystal Lattices, Crystal Symmetry and Orientations</a>
			</h4>
		</div>
		<div id="collapseMonday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
<!--Monday-->

**Lecture 0 - General Concepts:**
{% include reference.html link="https://videocampus.sachsen.de/m/24eab5953e110fa2eae768bd31eb70d0877d914d403d14f25f5aec82d082bf2186b107e2797207d5f29883543711d151840d694f65eb99b7b2ea687318f2b212" content="video" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/zRDL6j8s3Sgs97H" content="slides" class="course_material" %}
<br>
Matlab basics and general concepts of MTEX, the class vector3d, spherical coordinates
<br>
<br>

**Lecture 1 - Crystal Geometry:**
{% include reference.html link="https://tuc.cloud/index.php/s/EHcAgw8ezxkFENK" content="slides1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/bN2DanJ8jBEoLAF" content="slides2" class="course_material" %}
<br>
crystal lattice, direct and reciprocal coordinate system, Miller indices, zonal axes, crystal shapes
<br>
<br>
**Exercise 1:**
{% include reference.html link="https://tuc.cloud/index.php/s/rwcaPK7ZCSsSL49" content="exercises" class="course_material" download=true %}
<br>
<br>

*Lunch*
<br>
<br>
**Lecture 2 - Crystal Symmetries and Orientations:**
{% include reference.html link="" content="slides" class="course_material" %}
<br>
point groups, Laue groups, symmetrically equivalent orientations, 
pole figures, inverse pole figures, fundamental sectors
<br>
<br>
**Exercise 2:**
{% include reference.html link="https://tuc.cloud/index.php/s/WQrfoYd79bSxr9o" content="exercises" class="course_material" download=true %}
				</div>
			</div>
		</div>
	</div>
	<!-- TUESDAY -->
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTuesday"><b>Tuesday:</b> Electron Backscatter Diffraction (EBSD) and Grains</a>
			</h4>
		</div>
		<div id="collapseTuesday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
**Lecture 3 - EBSD:**
{% include reference.html link="https://tuc.cloud/index.php/s/PjGCKSrTHDRBgxJ" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/e_eGJac6nxo" content="video" class="course_material" %}
<br>
data import, reference frame alignment, color keys, data cleaning
<br>
<br>
**Exercise 3:**
{% include reference.html link="https://tuc.cloud/index.php/s/jrr8bDxz8qL8BEw" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/7BX7iXzB3t7QBYy" content="solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/aqEz3k3E9afRsyw" content="data 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/68wNTygo9ndg35W" content="data 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/SGTkoaxcIYU" content="video" class="course_material" %}
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 4 - Grains:**
{% include reference.html link="https://tuc.cloud/index.php/s/K8AS3s5YT9Lezj9" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/xkic28kejUA" content="video" class="course_material" %}
<br>
segmentation, shape properties, orientation properties, grain selection, grain statistics
<br>
<br>
**Exercise 4:**
{% include reference.html link="https://tuc.cloud/index.php/s/zJaArTsmj8e5Ytr" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/8g2YY92WgDxNfED" content="script" class="data" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/mp9LQ5jZBRTRZsM" content="solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/53MRS5VOoio" content="video" class="course_material" %}
				</div>
			</div>
		</div>
	</div>
	<!-- /.panel -->
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseWednesday"><b>Wednesday:</b> Misorientations, Grainboundaries and Density Functions</a>
			</h4>
		</div>
		<div id="collapseWednesday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
**Lecture 5 - Misorientations and Grain Boundaries:**

{% include reference.html link="https://tuc.cloud/index.php/s/TX3wYqGFkeNxRNb" content="slides 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/wLHlZ_F-w5w" content="video" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/8fMHPBTeoNwW5tq" content="slides 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/7n4WjahvgkI" content="video" class="course_material" %}
<br>
grain boundary misorientations, misorientation axis, misorientation angle, KAM, GOS, twin boundaries, tilt vs. twist
boundaries, phase transition, orientation
gradients,  statistics of boundary networks, habit planes
<br>
<br>
**Exercise 5:**
{% include reference.html link="https://tuc.cloud/index.php/s/K4rdM4ny7JXcQ9N" content="script 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/TM84AErZaNfj6Eb" content="script 1 solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/nJkwEP82gsPteRY" content="data 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/HsgdgELHmyrZc9K" content="script 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/ndoSJLjaXqWQDCk" content="script 2 solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/n36sr54T3mmmsK2" content="data 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/7n4WjahvgkI" content="video" class="course_material" %}
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
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThursday"><b>Thursday:</b> Tensorial Properties and Excursion</a>
			</h4>
		</div>
		<div id="collapseThursday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
**Lecture 6 - Density Functions:**
{% include reference.html link="https://tuc.cloud/index.php/s/oLagcQzotdNkywH" content="slides 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/B6ka2ADCYws" content="video" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/zoxRZrN7mBdeKJe" content="slides 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/n4CcrdCyT88" content="video"
%}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/xPNCCura-ao" content="video"
%}


<br>
kernel density estimation, orientation density function, pole density
function, inverse pole density function, model ODFs, ODF characteristics,
random sampling, ODF reconstuction from XRD data
<br>
<br>
**Exercise 6:**
{% include reference.html link="https://tuc.cloud/index.php/s/GiNKDaQBpbTybmt" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/NWJwW2nBE8GQqxL" content="user data 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/JmpcteLZ4pbsKSW" content="user data 2" class="course_material" %}
<span class="course_material">, </span>

<br>
<br>
*Lunch*
<br>
<br>

**Lecture 7 - Tensorial Properties:**
{% include reference.html link="https://tuc.cloud/index.php/s/qYetg53m9zPrTSR" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/LM86Dgcqsn4Axrq" content="Live Script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/HrPDZ9ZDjXyHgrF" content="EBSD data" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/geUvdAOHvMM" content="video" class="course_material" %}

<br>
tensor arithmetic, visualization, effect of symmetry, thermal expansion, stress and strain
tensors, piezoelectricity, elasticity, wave velocities
<br>
<br>
**Lecture 8 - From Single Grain to Bulk Tensors:**
{% include reference.html link="https://youtu.be/FwDDIHoLfK8" content="video" class="course_material" %} 
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
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFriday"><b>Friday:</b> Elastic and Plastic Deformations</a>
			</h4>
		</div>
		<div id="collapseFriday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
**Exercise 7 - Wave Velocities:**
{% include reference.html link="https://tuc.cloud/index.php/s/LWnxz67Ckwcmd9F" content="script file" class="course_material" %}
<br>
<br>
**Lecture 9 - Plastic Deformation:**
{% include reference.html link="https://tuc.cloud/index.php/s/aJSPqwLK5nLqZLx" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/md2cysgzyTDsoqQ" content="live script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/e7LU4SNMDFY" content="video" class="course_material" %}
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
**Excercise 9 - Parent Grain Reconstruction and Free Discussion of Personal
Data Sets:**
{% include reference.html link="https://youtu.be/rRhTMYO_Fyg" content="video" class="course_material" %} 
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


- **{% include reference.html link="https://www.ippt.pan.pl/en/staff/?osoba=kfryd" content="Karol Frydrych" %}** (Polish Academy of Science): *Crystal Plasticity Simulation with MTEX*

- **{% include reference.html link="https://geodynamics.geo.uni-halle.de/rebecca-kuehn/" content="Rebeca Kühn" %}** (Universität Halle): *Analyzing X-ray diffraction data of polyphase rocks using MTEX*

- **{% include reference.html link="https://marcoalopez.github.io/" content="Marco A. Lopez-Sanchez" %}** (Universidad de Oviedo): *Seismic modelling using EBSD data: why, how, limitations and good practices*

- **{% include reference.html link="https://www.researchgate.net/profile/Manuel-Petersmann" content="Manuel Petersmann" %}** (Infineon Technologies): *Use cases of MTEX for semiconductor metalizations*

- **{% include reference.html link="https://lightform.org.uk/people/dr-adam-plowman" content="Adam Plowman" %}** (University of Manchester): <span data-toggle="foldable-tooltip" data-icon="fa fa-info-circle" data-preview="Click to see the abstract" data-title="Using MTEX with MatFlow for crystal plasticity and phase field modeling" data-text="MatFlow is an open-source, cross-platform Python package for designing, running, and sharing reproducible hybrid computational workflows in materials science. Through its extension ecosystem, MatFlow can integrate with arbitrary open-source and proprietary materials science codes to form cohesive workflows. We highlight some recent examples of using MatFlow's MTEX extension to generate computational predictions that are calibrated using experimental results. We demonstrate the use of MTEX in MatFlow to generate correctly textured representative volume elements that are then used in crystal plasticity simulations to predict forming limits in aluminium alloys. We also demonstrate a method for encoding orientation data from MTEX into phase-field simulations to investigate abnormal grain growth in titanium alloys. Finally, we discuss our recent development work, which has focussed on enabling MatFlow to execute within a more varied set of computational environments, in support of our aim to allow MatFlow to be run anywhere, by anyone."></span>

- **{% include reference.html link="https://scholar.google.co.uk/citations?hl=en&user=GvwErjEAAAAJ&view_op=list_works&sortby=pubdate" content="Vivian Tong" %}** (National Physical Laboratory UK): *Characterising microstructural shapes using EBSD and correlative SEM imaging techniques*

## Time Schedule

{% capture table_monday %}
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
			<td style="text-align: left">Plasticity Simulation with MTEX 
			{% include reference.html link="https://tuc.cloud/index.php/s/skAbC4yZZPFFsAZ"
			content="slides" class="course_material" %}
			<span class="course_material">, </span>
			{% include reference.html link="https://youtu.be/u37NqVtahWE" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">10:15&minus;10:45</td>
			<td style="text-align: left">T.&nbsp;Vermeij</td>
			<td style="text-align: left">Automated identification of slip system activity fields from digital image correlation data {% include reference.html
			link="https://tuc.cloud/index.php/s/pbNzeKMWm4Jjnnz" content="slides" class="course_material" %} 
            <span class="course_material">, </span>
			{% include reference.html link="https://youtu.be/xjNWsHeHnlA" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">10:45&minus;11:15</td>
			<td style="text-align: left">F.&nbsp;Niessen</td>
			<td style="text-align: left">Habit plane determination from reconstructed parent phase orientation maps {% include reference.html link="https://tuc.cloud/index.php/s/tPHG5b3BBFjbgFT" content="slides" class="course_material" %}
		     	<span class="course_material">, </span>
			    {% include reference.html link="https://youtu.be/mg6AIeM-PxU" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:15&minus;11:30</td>
			<td style="text-align: left">L.&nbsp;Richter</td>
			<td style="text-align: left">Characterization of habit planes in multiphase materials {% include reference.html link="https://tuc.cloud/index.php/s/CjwokC7xZYMxK9f" content="slides" class="course_material" %}
				<span class="course_material">, </span>
     			{% include reference.html link="https://youtu.be/deZQ-SmMYP4" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:30&minus;12:00</td>
			<td style="text-align: left">T.&nbsp;Kohne</td>
			<td style="text-align: left">Local tetragonality determination of martensite in high carbon steels
			<span class="course_material">, </span>
			{% include reference.html link="https://youtu.be/tQ6CqUrnu-w" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Lunch</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">13:30&minus;14:30</td>
			<td style="text-align: left">A.&nbsp;Plowman</td>
			<td style="text-align: left">Using MTEX with MatFlow for crystal plasticity and phase field modeling {% include reference.html link="https://tuc.cloud/index.php/s/xyGYs7yR5EEX3m8" content="slides" class="course_material" %}
				<span class="course_material">, </span>
     			{% include reference.html link="https://youtu.be/YWMj2W0Say8" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">14:30&minus;15:00</td>
			<td style="text-align: left">E.&nbsp;Wünsche</td>
			<td style="text-align: left">Orientation Dependent Functions
			<span class="course_material">, </span>
			{% include reference.html link="https://youtu.be/h91KdrOaRPY" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">15:15&minus;15:45</td>
			<td style="text-align: left">G.&nbsp;Zeng</td>
			<td style="text-align: left">Explore the Solidification Orientation Relationships Using EBSD and MTEX
			{% include reference.html link="https://tuc.cloud/index.php/s/oD8WkTYbBfaPkFi" content="slides" class="course_material" %}
			<span class="course_material">, </span>
			{% include reference.html link="https://youtu.be/uGv3YkHUUBc" content="video" class="course_material" %}
			</td>
		</tr>						
		<tr>
			<td style="text-align: right">15:45&minus;16:15</td>
			<td style="text-align: left">B.&nbsp;Begley</td>
			<td style="text-align: left">An MTEX-based API for VPSC
			<span class="course_material">, </span>
			{% include reference.html link="https://youtu.be/tujnbckvr-o" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">16:15&minus;16:30</td>
			<td style="text-align: left">C.&nbsp;Chiu</td>
			<td style="text-align: left">Crystal plasticity simulations and MTEX {% include reference.html link="https://tuc.cloud/index.php/s/qeTyr2bMLAabFSd" content="slides" class="course_material" %}
			<span class="course_material">, </span>
			{% include reference.html link="https://youtu.be/UDhbXqN4YmI" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">16:30&minus;16:45</td>
			<td style="text-align: left">S.&nbsp;Prüger</td>
			<td style="text-align: left">Modeling of austenitic oligo-crystals using Abaqus and MTEX {% include reference.html link="https://tuc.cloud/index.php/s/Z4E5La8FnSxGZTf" content="slides" class="course_material" %}
			<span class="course_material">, </span>
			{% include reference.html link="https://youtu.be/kwZBNFRyEm4" content="video" class="course_material" %}
			</td>
		</tr>
	</tbody>
</table>
{% endcapture %}

{% capture table_tuesday %}
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
			<td style="text-align: left">Analyzing X-ray diffraction data of polyphase rocks using MTEX {% include reference.html link="https://tuc.cloud/index.php/s/K4HcyD5mfbtNjjB" content="slides" class="course_material" %}</td>
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
			<td style="text-align: right">11:15&minus;11:45</td>
			<td style="text-align: left">V.&nbsp;Ocelik</td>							
			<td style="text-align: left">Analysis of spherulitic and rotational crystal growth of Quartz thin films {% include reference.html link="https://tuc.cloud/index.php/s/fHyYYxAYHHesyk9" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/GT8RGRh9olE" content="video" class="course_material" %}
		</td>							
		</tr>
		<tr>
			<td style="text-align: left"><i>Lunch</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">13:30&minus;14:30</td>
			<td style="text-align: left">Lopez&minus;Sanchez</td>
			<td style="text-align: left">Seismic modelling using EBSD data:
			why, how, limitations and good practices
			{% include reference.html link="https://tuc.cloud/index.php/s/ppKMydxobEPeMKo" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/40b3dkX3t4U" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">14:30&minus;15:00</td>
			<td style="text-align: left">T.&nbsp;Qu</td>
			<td style="text-align: left">Collecting crystallographic information of etwin in calcite rocks with MTEX {% include reference.html link="https://tuc.cloud/index.php/s/8xq5TS3nE7iENLS" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/T9u6FFuycYU" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">15:15&minus;15:30</td>
			<td style="text-align: left">S. Gupta</td>
			<td style="text-align: left">Characterization of Precambrian felsic magmatism of Kumaun Lesser Himalaya: constraints from zircon morphological and U-Pb-Lu-Hf isotopic studies
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/OwkoHa9nK8E" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">15:45&minus;16:00</td>
			<td style="text-align: left">A.&nbsp;Dittes</td>
			<td style="text-align: left">Quantitative model to predict the microstructure-related corrosion rate of cold-rolled SS316L: How to profit from EBSD {% include reference.html link="https://tuc.cloud/index.php/s/tGm8wPZCfgArMZN" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/DI0k0q77mDI" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">16:15&minus;16:30</td>
			<td style="text-align: left">J.&nbsp;Kozlík</td>
			<td style="text-align: left">Dictionary indexing of stress induced martensite in Ti-Nb-Zr-O alloy {% include reference.html link="https://tuc.cloud/index.php/s/cPLgwJYmwF85erj" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/rtHoOsQw5wI" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">16:30&minus;16:45</td>
			<td style="text-align: left">E.&nbsp;Knipschildt</td>
			<td style="text-align: left">Particle stimulated nucleation in three dimensions {% include reference.html link="https://tuc.cloud/index.php/s/QkwmqDzicx7bQTr" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/SzlYqNc3dBQ" content="video" class="course_material" %}
			</td>
		</tr>
	</tbody>
</table>
{% endcapture %}

{% capture table_wednesday %}
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
			<td style="text-align: left">Characterising microstructural shapes using EBSD and correlative SEM imaging techniques {% include reference.html link="https://tuc.cloud/index.php/s/9qTkPxyrG8NSoSG" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/BTGB0aHk5uc" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">10:15&minus;10:45</td>
			<td style="text-align: left">B.&nbsp;Schulz</td>
			<td style="text-align: left">Advancing analytical electron microscopy methodologies to characterise microstructural features in superalloys {% include reference.html link="https://tuc.cloud/index.php/s/GrMQrkCWAbZFeEE" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/8mAeCcO01C8" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">10:45&minus;11:15</td>
			<td style="text-align: left">N.&nbsp;S.&nbsp;Tapaswi</td>
			<td style="text-align: left">3D-XRD and MTEX {% include reference.html link="" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/YZec2zlvXZw" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:15&minus;11:45</td>
			<td style="text-align: left">C.&nbsp;Sakr</td>
			<td style="text-align: left">Energy Dispersive Laue Diffraction (EDLD) on tooth enamel {% include reference.html link="https://tuc.cloud/index.php/s/CkNSXDF4tmc6fKr" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/tfSOeAJR_y4" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Lunch</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">13:30&minus;14:30</td>
			<td style="text-align: left">M.&nbsp;Petersmann</td>
			<td style="text-align: left">Use cases of MTEX for semiconductor metalizations
			{% include reference.html link="https://tuc.cloud/index.php/s/oNseZEq9kK3fQZp" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/Z6GtC2upv-U" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">14:45&minus;15:15</td>
			<td style="text-align: left">M.&nbsp;Kühlbach</td>
			<td style="text-align: left">Fairmat
			{% include reference.html link="" content="slides" class="course_material" %}
			<span class="course_material">, </span>
            {% include reference.html link="https://youtu.be/U2d82amrbFk" content="video"
			class="course_material" %}			
			</td>
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
{% endcapture %}

<div class="panel-group" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseMo"><b>Monday:</b> Crystal Plasticity and more </a>
			</h4>
		</div>
		<div id="collapseMo" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				{{ table_monday }}
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
				{{ table_tuesday }}
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
				{{ table_wednesday }}
			</div>
		</div>
	</div>
</div>

<!--
## Venue:

<div class="panel-group" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title"> <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseLocation">
				<b>Location:</b> TU Freiberg, Germany</a>
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
			<h4 class="panel-title"> <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseAccomodation">
				<b>Accommodation:</b> </a>
			</h4>
		</div>
		<div id="collapseAccomodation" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
*please use the keycode "Professor Hielscher MTEX Workshop"	when booking the rooms*			
<br>
<br>
{% include reference.html link="https://www.hotel-kreller.de" content="**Hotel Kreller:**" %} 79 Euro per night with breakfast, very close
<br>
<br>
{% include reference.html link="https://www.hotel-am-obermarkt.de" content="**Hotel am Obermarkt:**" %} 79 Euro per night without breakfast, very close
<br>
<br>				
{% include reference.html link="https://www.elly-hostel.de" content="**Elly Hostel:**" %} 68 Euro per night, with kitchen
				</div>
			</div>
		</div>
	</div>
</div>
-->

<!--
## Registration:

- Please use our {% include reference.html link="https://tu-freiberg.de/fakult1/ana/professuren/prof-dr-ralf-hielscher/mtex/registration" content="registration form" %} to subscribe or write an email to
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
-->


## Organizers:

{% include reference.html link="https://tu-freiberg.de/fakult1/ana/hielscher" content="Ralf Hielscher" %} (TU Bergakademie Freiberg),
{% include reference.html link="https://geodynamics.geo.uni-halle.de/ruediger-kilian/" content="Rüdiger Kilian" %} (Universität Halle),
{% include reference.html link="https://structuretectonics.org/people/luiz-morales/" content="Luiz Morales" %} (ETH Zürich),
{% include reference.html link="https://www.researchgate.net/profile/Frank-Niessen-4" content="Frank Niessen" %} (DTU Dänemark)
