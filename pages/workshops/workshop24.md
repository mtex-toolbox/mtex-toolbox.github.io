---
title: Freiberg MTEX Workshop 2024
keywords: workshop, 2024
sidebar: workshops_sidebar
permalink: workshop24
folder: workshops
toc: false
---

The workshop extends over two weeks and is part of the master course {% include reference.html link="" content="Introduction into crystallographic texture analysis" %} and counts for **5 ECTS** points. While the first week is mainly devoted to beginners in MTEX and/or texture analysis, the second week is a meeting of MTEX users with different experiences to share specific use cases, tips and tricks and discuss recent and upcoming developments in MTEX. A special focus will be the new features of **MTEX 5.11** which includes pseudo 3d functionality for EBSD and grains and multiple spatial reference systems.

<!--{% capture par_default %}
	Every registered participant should now have received an email with a password in order to see the course materials. If you have not yet received this email please contact one of the organizers.
{% endcapture %}
{% capture par_access %}
	You are logged in.
	{% include reference.html link="https://eu01web.zoom.us/j/65513934015?pwd=YjZSR2h2Qk5IajhMbzZGNVR6aGowdz09" content="Enter Workshop zoom session" %}
{% endcapture %}
{% include password_access_restriction.html content_default=par_default content_access=par_access %}
-->

## Week 1: Learning Crystallographic Texture Analysis with MTEX

Date: 04.03.2024 - 8.03.2024

During the first week we provide on a daily basis lectures covering the
principles of EBSD, texture and crystallography and their relation to plastic
deformation and macroscopic properties. All concepts will be illustrated via
practical examples during the exercises within MTEX.

<div class="panel-group" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse"
	data-parent="#accordion" href="#collapseMonday"><b>Monday:</b> EBSD -
	First Analysis Steps and Crystallographic Background</a>
			</h4>
		</div>
		<div id="collapseMonday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
<!--Monday-->
<!--**Lecture 0 - General Concepts:**-->

**Lecture 1 - EBSD**
<br>
data import, reference frame alignment, pole figures, inverse pole figures, color keys
<br>
<br>
**Exercise 1**
<br>
<br>

*Lunch*

<br>
<br>
**Lecture 2 - Orientations and Symmetries**
<br>
crystal lattice, direct and reciprocal coordinate system, Miller indices,
zonal axes, crystal shapes, point groups, Laue groups, symmetrically equivalent orientations, 
pole figures, inverse pole figures, fundamental sectors
<br>
<br>
**Exercise 2**
<br>
<br>
				</div>
			</div>
		</div>
	</div>
	<!------------------------------------- TUESDAY ------------------------------------------------------------->
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse"
				data-parent="#accordion"
				href="#collapseTuesday"><b>Tuesday:</b> Grains - Reconstruction, Analysis and Misorientations</a>
			</h4>
		</div>
		<div id="collapseTuesday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">

**Lecture 3 - Grains**
<br>
segmentation, shape properties, orientation properties, grain selection, grain statistics
<br>
<br>
**Exercise 3**
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 4 - Misorientations and Grain Boundaries**
<br>
grain boundary misorientations, misorientation axis, misorientation angle,
KAM, GOS, IGMA, twin boundaries, tilt vs. twist
boundaries, orientation, gradients,  statistics of boundary networks
<br>
<br>
**Exercise 4**
<br>
<br>
				</div>
			</div>
		</div>
	</div>
	<!-- /.panel -->
	<!------------------------------------------------ Wednesday -------------------------------------------------->
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse"
				data-parent="#accordion"
				href="#collapseWednesday"><b>Wednesday:</b> Orientation
				Distribution Function and Excursion</a>
			</h4>
		</div>
		<div id="collapseWednesday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
**Lecture 5 - Density Functions**
<br>
kernel density estimation, orientation density function, pole density
function, inverse pole density function, model ODFs, ODF characteristics,
random sampling, ODF reconstuction from XRD data
<br>
<br>
**Exercise 5**
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
    <!------------------------------------- THURSDAY ------------------------------------------------------------->
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse"
				data-parent="#accordion"
				href="#collapseThursday"><b>Thursday:</b> Elastic and Plastic Deformations</a>
			</h4>
		</div>
		<div id="collapseThursday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
**Lecture 6 - Tensorial Properties**
<br>
tensor arithmetic, visualization, effect of symmetry, thermal expansion, stress and strain
tensors, piezoelectricity, elasticity, wave velocities
<br>
<br>
**Exercise 6 - From Single Grain to Bulk Tensors**
<br>
average tensors (Voigt, Reuss, Hill) from EBSD and ODF
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 7 - Plastic Deformation**
<br>
deformation tensors, slip systems, dislocation systems, Schmid Factor, Taylor factor, 
combining MTEX with external software like VPSC, Damask
<br>
<br>
**Exercise 7**
 			  </div>
			</div>
		</div>
	</div>
	<!------------------------------------------------- Friday -----------------...----------------->
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFriday"><b>Friday:</b> Orientation
				Relationships and Phase Transition</a>
			</h4>
		</div>
		<div id="collapseFriday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
**Lecture 8 - Orientation Relationships**
<br>
determination of orientation relationships, phase transition, parent grain reconstruction, transformation
textures, variant selection
<br>
<br>
**Exercise 8**
<br>
<br>
*lunch*
<br>
<br>
**Lecture 9 - Specific Topics of Interest**
<br>
Participants can vote for their topic of interest, e.g.: denoising of EBSD
maps, dislocation density estimation, weighted Burgers vector, habit planes determination, 
<br>
<br>
**Free Discussion of Personal Data Sets**
				</div>
			</div>
		</div>
	</div>
	<!-- /.panel -->
</div>
<!-- /.panel-group -->

**Times:** Lecture 1: 8:00 - 9:30, Exercise 1: 10:00 - 11:30, Lecture 2: 13:00-14:30, Exercise 2: 15:00 - 16:30

## Week 2: MTEX in Applications

Date: 11.03.2024 - 13.03.2024

The second week is a get together of new and experienced MTEX users to share
their use cases of MTEX, research results and MTEX specific tricks and
tips. There will be introductory lectures by invited experts that explain
their workflow in specific applications of MTEX. To encourage discussions we
plan with slots of 20 minutes talks followed by 10 minute discussions. As we
expect a very heterogeneous auditorium we kindly ask the participants to keep
their talks as accessible as possible.

### Keynote Speakers

- **{% include reference.html
  link="https://www.researchgate.net/profile/Dorian-Depriester" content="Dorian
  Depriester" %}** (Ecole Nationale Supérieure d'Arts et Métiers Paris): 
  
- **{% include reference.html
  link="https://ufind.univie.ac.at/de/person.html?id=46817" content="Thomas
  Griffiths" %}** (Universität Wien): 
  
- **{% include reference.html
  link="https://mavt.ethz.ch/de/personen/person-detail.MzMyNDQz.TGlzdC81NTksLTE3MDY5NzgwMTc=.html"
  content="Claire Griesbach" %}** (ETH Zürich): Rate-dependent
  ferroelectric switching mechanisms in lead zirconium titanate elucidated by
  spherically indexed EBSD patterns
    
- **{% include reference.html
  link="https://www.researchgate.net/profile/Marco-Witte" content="Marco Witte" %}** (Salzgitter Mannesmann): 
    
## Time Schedule
<!---
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
			<td style="text-align: left">T.&nbsp;Griffiths</td>
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
			{% include reference.html link="https://tuc.cloud/index.php/s/kapLXFdDmTABGyF" content="slides" class="course_material" %}			
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
			{% include reference.html link="https://tuc.cloud/index.php/s/SZ4Dbcr8dQiEWYk" content="slides" class="course_material" %}
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
-->

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

## Registration:

- Please register at {% include reference.html link="https://acatrain.net/events/freiberg-mtex-workshop-2024/" content="https://acatrain.net/events/freiberg-mtex-workshop-2024" %}
 - Deadline for registration is 28th of February 2024

## Registration Fee:
- first + second week (presence):  (PhD) students - 400 Euro, other - 600 Euro
- first + second week (online):  (PhD) students - 200 Euro, other - 300 Euro
- second week: (PhD) students - 100 Euro, other - 200 Euro
- Payment includes Lunch for all days and Excursion fee
- Registration for students of the TU Freiberg, the TU Chemnitz and the University of Halle is free of charge

## Organizers:

{% include reference.html link="https://tu-freiberg.de/fakult1/ana/hielscher" content="Ralf Hielscher" %} (TU Bergakademie Freiberg),
{% include reference.html link="https://geodynamics.geo.uni-halle.de/ruediger-kilian/" content="Rüdiger Kilian" %} (Universität Halle),
{% include reference.html link="https://structuretectonics.org/people/luiz-morales/" content="Luiz Morales" %} (ETH Zürich),
{% include reference.html link="https://www.researchgate.net/profile/Frank-Niessen-4" content="Frank Niessen" %} (DTU Dänemark)

{% capture ref_content %}{% include inline_image.html file="icons/acaTrain.jpg" %}{% endcapture %}
{% include reference.html link="https://acatrain.net/" content=ref_content %}
