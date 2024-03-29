---
title: Freiberg MTEX Workshop 2024
keywords: workshop, 2024
sidebar: workshops_sidebar
permalink: workshop24
folder: workshops
toc: false
---

The workshop extends over two weeks and is part of the master course {% include reference.html link="" content="Introduction into crystallographic texture analysis" %} and counts for **5 ECTS** points. While the first week is mainly devoted to beginners in MTEX and/or texture analysis, the second week is a meeting of MTEX users with different experiences to share specific use cases, tips and tricks and discuss recent and upcoming developments in MTEX. A special focus will be the new features of **MTEX 6.0** which includes pseudo 3d functionality for EBSD and grains and multiple spatial reference systems.

{% capture par_default %}
	Every registered participant should now have received an email with a password in order to see the course materials. If you have not yet received this email please contact one of the organizers.
{% endcapture %}
{% capture par_access %}
	You are logged in.
	{% include reference.html link="https://eu02web.zoom-x.de/j/69081108241?pwd=OEh6S0k1OUVxMWFnMHZ5dFNDTVJoQT09" content="Enter Workshop zoom session" %}
{% endcapture %}
{% include password_access_restriction.html content_default=par_default content_access=par_access %}

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
**Lecture 0 - General Concepts:**
{% include reference.html link="https://videocampus.sachsen.de/m/24eab5953e110fa2eae768bd31eb70d0877d914d403d14f25f5aec82d082bf2186b107e2797207d5f29883543711d151840d694f65eb99b7b2ea687318f2b212" content="video" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/6Crd5PszNDw27qt" content="slides" class="course_material" %}
<br>
Matlab basics and general concepts of MTEX, the class vector3d, spherical coordinates
<br>
<br>
**Lecture 1 - EBSD**
{% include reference.html link="https://tuc.cloud/index.php/s/iPjkbYm6NPJ3PMw" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/z0-rB87H0hU" content="video" class="course_material" %}
<br>
data import, reference frame alignment, pole figures, inverse pole figures, color keys
<br>
<br>
**Exercise 1**
{% include reference.html link="https://tuc.cloud/index.php/s/n5M9Zo4znsmkqc4" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/EaeoJmKmKpEYW2k" content="solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/SDmcYG9WKt2cfgk" content="data" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/5YicKTTnMb8" content="video" class="course_material" %}
<br>
<br>

*Lunch*

<br>
<br>
**Lecture 2 - Orientations and Symmetries**
{% include reference.html link="https://tuc.cloud/index.php/s/fD9eeGfkbexq7dF" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/IWUmCYyPwjw" content="video" class="course_material" %}
<br>
crystal lattice, direct and reciprocal coordinate system, Miller indices,
zonal axes, crystal shapes, point groups, Laue groups, symmetrically equivalent orientations, 
pole figures, inverse pole figures, fundamental sectors
<br>
<br>
**Exercise 2**
{% include reference.html link="https://tuc.cloud/index.php/s/eReketmMitkonEk" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/gMqZ5WaP6goJbwE" content="solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/OOioaXczRB8" content="video" class="course_material" %}
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
{% include reference.html link="https://tuc.cloud/index.php/s/aa2mYtoJJgWmp4T" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/dGDIvgtNVLs" content="video" class="course_material" %}
<br>
segmentation, shape properties, orientation properties, grain selection, grain statistics
<br>
<br>
**Exercise 3**
{% include reference.html link="https://tuc.cloud/index.php/s/kf843BAHMmesxNR" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/yBBRi424yNeJyTo" content="solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/sEmxMoNwgkHFm6x" content="data" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/IFZvJRXShfs" content="video" class="course_material" %}
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 4 - Misorientations and Grain Boundaries**
{% include reference.html link="https://tuc.cloud/index.php/s/5b6BzdeKWxpxMtz" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/EzHhguqBEEY" content="video"
class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/W6NfHa47AdgrZbo" content="slides" class="course_material" %}


<br>
grain boundary misorientations, misorientation axis, misorientation angle,
KAM, GOS, IGMA, twin boundaries, tilt vs. twist
boundaries, orientation, gradients,  statistics of boundary networks
<br>
<br>
**Exercise 4**
{% include reference.html link="https://tuc.cloud/index.php/s/ZP2sgbbwazfNbt2" content="script 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/q4aZg9DMbszfQfw" content="solution 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/oDzZkKX5gpnNkp2" content="data 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/mmjtowWaJaXm954" content="script 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/snsB34bzcfST4jT" content="solution 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/WnMrd2j8Q7eit8Y" content="data 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/kkS_lyxaHnY" content="video" class="course_material" %}
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
**Excursion: Freiberg Silver Mine**
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 5 - Density Functions**
{% include reference.html link="https://tuc.cloud/index.php/s/swK8XdBLJz6PRTj" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/dJe8mk3s4mEA7qY" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/jcfql9v3Hg4" content="video" class="course_material" %}
<br>
kernel density estimation, orientation density function, pole density
function, inverse pole density function, model ODFs, ODF characteristics,
random sampling, ODF reconstuction from XRD data
<br>
<br>
**Exercise 5**
{% include reference.html link="https://tuc.cloud/index.php/s/ppcHoH5My2w7oaN" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/kKtbw8dYAX5o3GW" content="solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/XX9SOSSoRZE" content="video" class="course_material" %}
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
**Lecture 6 - EBSD Denoising and Alignment of the Reference Frame**
{% include reference.html link="https://tuc.cloud/index.php/s/7EBQnHnHoFpaPsz" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/bj4usH9odro" content="video" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/hJX61Kso4oU" content="video" class="course_material" %}

<br>

<br>
<br>
**Exercise 6 - Grain Boundaries and Misorientations**
{% include reference.html link="https://tuc.cloud/index.php/s/ZP2sgbbwazfNbt2" content="script 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/q4aZg9DMbszfQfw" content="solution 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/SCrbAcjfifPsMw8" content="data 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/mmjtowWaJaXm954" content="script 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/snsB34bzcfST4jT" content="solution 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://tuc.cloud/index.php/s/S8sRxTHkoPane3r"
content="data 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/pivZ99mTfdU" content="video" class="course_material" %}

<br>

<br>
<br>
*Lunch*
<br>
<br>
**Lecture 7 - Tensorial Properties**
{% include reference.html link="https://tuc.cloud/index.php/s/ZzpaxQkBRobxrEQ" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/GlfF06iBkK4" content="video" class="course_material" %}
<br>
tensor arithmetic, visualization, effect of symmetry, thermal expansion, stress and strain
tensors, piezoelectricity, elasticity, wave velocities
<br>
<!--deformation tensors, slip systems, dislocation systems, Schmid Factor, Taylor factor, 
combining MTEX with external software like VPSC-->
<br>
<br>
**Exercise 7 - From Single Grain to Bulk Tensors**
{% include reference.html link="https://tuc.cloud/index.php/s/gsz2bQ8EeGtgEsz" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/Hrki-s_BWkI" content="video" class="course_material" %}
<br>
average tensors (Voigt, Reuss, Hill) from EBSD and ODF
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
**Lecture 8 - EBSD reference systems**
{% include reference.html link="https://tuc.cloud/index.php/s/WcTogYqnGxTZLZa" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/KsEWxLy_NIw" content="video" class="course_material" %}
<br>
how to set up your EBSD system for MTEX
<br>
<br>
**Lecture 9 - Plasticity**
{% include reference.html link="https://tuc.cloud/index.php/s/HaYGieXjWZJ9Q2C" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/W4T6c_mbM2A" content="video" class="course_material" %}
<br>
deformation tensors, slip systems, dislocation systems, Schmid Factor, Taylor factor, 
combining MTEX with external software like VPSC
<br>
<br>
*lunch*
<br>
<br>
**Lecture 10 - Parent Grain Reconstuction**
{% include reference.html link="https://tuc.cloud/index.php/s/s6A3n3L5iP6gAtt" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/GrG9P9yUkXM" content="video" class="course_material" %}
<br>
determination of orientation relationships, phase transition, parent grain reconstruction, transformation
textures, variant selection
<!--Participants can vote for their topic of interest, e.g.: denoising of EBSD
maps, dislocation density estimation, weighted Burgers vector, habit planes determination, -->
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
  Depriester" %}** (Ecole Nationale Supérieure d'Arts et Métiers, Aix-en-Provence): 
  *Mechanical behaviour of polycrystals: from EBSD to numerical simulations*
  
- **{% include reference.html
  link="https://ufind.univie.ac.at/de/person.html?id=46817" content="Thomas
  Griffiths" %}** (Universität Wien): Unravelling the evolution of partially molten silicate systems using
  EBSD and MTEX
  
- **{% include reference.html
  link="https://mavt.ethz.ch/de/personen/person-detail.MzMyNDQz.TGlzdC81NTksLTE3MDY5NzgwMTc=.html"
  content="Claire Griesbach" %}** (ETH Zürich): Rate-dependent
  ferroelectric switching mechanisms in lead zirconium titanate elucidated by
  spherically indexed EBSD patterns
  
- **{% include reference.html
  link="https://www.materials.ox.ac.uk/peoplepages/marquardt.html"
  content="Katharina Marquardt" %}** (University of Oxford): Grain boundary complexion transition in Forsterite, an EBSD study
    
- **{% include reference.html
  link="https://www.nist.gov/people/alec-saville"
  content="Alec Saville" %}** (National Institute of Standards and Technology,
  USA):	Connecting Microstructure, Processing, and Phase Transformations in Metals Via MTEX.
	
- **{% include reference.html
  link="https://www.researchgate.net/profile/Marco-Witte" content="Marco
  Witte" %}** (Salzgitter Mannesmann): Steel: Production, Processing and MTEX
    
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
			<td style="text-align: left">T.&nbsp;Griffiths</td>
			<td style="text-align: left">Unraveling the evolution of partially molten silicate systems using EBSD and MTEX
			{% include reference.html link="https://youtu.be/_anaaIunvJY" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">10:30&minus;11:00</td>
			<td style="text-align: left">V.&nbsp;Tong</td>
			<td style="text-align: left">TrueEBSD distortion correction and	grain boundary smoothing
			{% include reference.html link="https://youtu.be/ltawCgbgekE" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:00&minus;11:30</td>
			<td style="text-align: left">T.&nbsp;Nyyss&ouml;nen</td>
			<td style="text-align: left">Three-dimensional shape metrics of transformation products from
			two-dimensional orientation maps: ongoing work
			{% include reference.html link="https://youtu.be/q2l-_PDSQBU" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:30&minus;12:00</td>
			<td style="text-align: left">F.&nbsp;Niessen</td>
			<td style="text-align: left">Parent Grain Reconstruction in MTEX - a journey beyond default parameters
			{% include reference.html link="https://youtu.be/OYKFtw2hvE0" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Lunch</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>			
		</tr>
		<tr>
			<td style="text-align: right">13:30&minus;14:30</td>
			<td style="text-align: left">K.&nbsp;Marquardt</td>
			<td style="text-align: left"><i>canceled</i> Grain boundary complexion transition
			in Forsterite, an EBSD study</td>
		</tr>
		<tr>
			<td style="text-align: right">14:30&minus;15:00</td>
			<td style="text-align: left">R.&nbsp;Kühn</td>
			<td style="text-align: left">Clay mineral textures from the hikurandi margin</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>			
		</tr>				
		<tr>
			<td style="text-align: right">15:30&minus;15:50</td>
			<td style="text-align: left">D.&nbsp;Souza</td>
			<td style="text-align: left">High Pressure - high temperature deformation experiments to understand deep earthquakes
			{% include reference.html link="https://youtu.be/Mj8vbes4Eis" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">15:50&minus;16:10</td>
			<td style="text-align: left">G.&nbsp;Lopez</td>
			<td style="text-align: left">Mechanical Implications of Mica Bearing rocks
			{% include reference.html link="https://youtu.be/ZZ883Wj8gTI" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">16:10&minus;16:30</td>
			<td style="text-align: left">G.&nbsp;McGill</td>
			<td style="text-align: left">Micro Porosity in plastically deformed Quartz
			{% include reference.html link="https://youtu.be/fiQougisaGM" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"><i>Short walk through Freiberg</i></td>
		</tr>
		<tr>
			<td style="text-align: left">18:00</td>
			<td style="text-align: left"></td>
			<td style="text-align: left"><i>Dinner at <a
			href="https://maps.app.goo.gl/ZKPebmYn2dRiG7p57">Stadtwirtschaft Freiberg</a></i></td>
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
			<td style="text-align: right">8:30&minus;9:30</td>
			<td style="text-align: left">C.&nbsp;Griesbach</td>
			<td style="text-align: left">Rate-dependent ferroelectric
			switching mechanisms in lead zirconium titanate elucidated by spherically indexed EBSD patterns
			{% include reference.html link="https://youtu.be/uk34p5WL-7k" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">9:30&minus;10:00</td>
			<td style="text-align: left">L.&nbsp;Richter</td>
			<td style="text-align: left">Spherical indexing of pseudo symmetries
			{% include reference.html link="https://youtu.be/Cv-C6wJpbNc" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">10:30&minus;11:00</td>
			<td style="text-align: left">P.&nbsp;Prathik</td>
			<td style="text-align: left">A synergistic approach to
			characterize anisotropic materials using ultrasound and microstructural analysis (<i>online</i>)
			{% include reference.html link="https://youtu.be/y7_Hq7kg9_8" content="video" class="course_material" %}
			</td>
		</tr>						
		<tr>
			<td style="text-align: right">11:00&minus;11:30</td>
			<td style="text-align: left">T.&nbsp;Vermeij</td>							
			<td style="text-align: left">Local Identification of Deformation Twinning from Deformation Fields
			{% include reference.html link="https://youtu.be/jTBfc0SFBSE" content="video" class="course_material" %}
			</td>							
		</tr>
		<tr>
			<td style="text-align: right">11:30&minus;12:00</td>
			<td style="text-align: left">C.&nbsp;Mornout</td>							
			<td style="text-align: left">Methodology for Local Identification of Grain Boundary Sliding on the Nanoscale
			{% include reference.html link="https://youtu.be/aCXGDT3YAv4" content="video" class="course_material" %}
			</td>							
		</tr>
		<tr>
			<td style="text-align: left"><i>Lunch</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">13:30&minus;14:30</td>
			<td style="text-align: left">A.&nbsp;Saville</td>
			<td style="text-align: left">Connecting Microstructure,
			Processing, and Phase Transformations in Metals Via MTEX (<i>online</i>)
			{% include reference.html link="https://youtu.be/dPS-_FxwjJY" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">14:30&minus;15:00</td>
			<td style="text-align: left">D.&nbsp;Guan</td>
			<td style="text-align: left">Track-Rex: a universal toolbox for
			tracking recrystallization and 
			grain growth behaviors in polycrystalline materials. (<i>online</i>)
			{% include reference.html link="https://youtu.be/lmde9hbFJCU" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">15:00&minus;16:00</td>
			<td style="text-align: left">D.&nbsp;Depriester</td>
			<td style="text-align: left">Mechanical behaviour of polycrystals: from EBSD to numerical simulations
			{% include reference.html link="https://youtu.be/tYzaKANC_YA" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">16:00&minus;16:20</td>
			<td style="text-align: left">B.&nbsp;Jacobsen</td>
			<td style="text-align: left">MTEX 6.0 and Grain3d - the current state
			{% include reference.html link="https://youtu.be/gosT2bJI0RU" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">16:20&minus;16:40</td>
			<td style="text-align: left">R.&nbsp;de Oliveira Melo</td>	
			<td style="text-align: left">Relation between microstructure and
			mechanical properties of a 17-4PH grade steel manufactured by additive manufacturing Powder Bed Fusion Laser Based technique
			{% include reference.html link="https://youtu.be/bkUEeTMjReQ" content="video" class="course_material" %}
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
			<td style="text-align: right">8:30&minus;9:30</td>
			<td style="text-align: left">M.&nbsp;Witte</td>
			<td style="text-align: left">Steel: Production, Processing and MTEX
			{% include reference.html link="https://youtu.be/yq-Gklv0JTs" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">9:30&minus;10:00</td>
			<td style="text-align: left">V.&nbsp;Babic</td>
			<td style="text-align: left">EBSD analysis workflows – Efficient, automatic, easy!
			{% include reference.html link="https://youtu.be/uS0LlRjoykM" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>		
		<tr>
			<td style="text-align: right">10:30&minus;11:00</td>
			<td style="text-align: left">K.&nbsp;Molodov</td>
			<td style="text-align: left">On the effect of microalloying on retained austenite in hot-dip galvanized multiphase steels
			{% include reference.html link="https://youtu.be/Ce-NnxALC1o" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:00&minus;11:20</td>
			<td style="text-align: left">J.&nbsp;Dietrich</td>
			<td style="text-align: left">Slip trace and texture analysis in wrought magnesium alloys
			{% include reference.html link="https://youtu.be/StKRpC1DMDM" content="video" class="course_material" %}
			</td>
		</tr>
				<tr>
			<td style="text-align: right">11:20&minus;11:40</td>
			<td style="text-align: left">S.&nbsp;Mohagheghi</td>
			<td style="text-align: left">Determination of orientation relationships in three-phase eutectic grains
			{% include reference.html link="https://youtu.be/m5CHJxdZ05s" content="video" class="course_material" %}
			</td>			
		</tr>
		<tr>
			<td style="text-align: right">11:40&minus;12:00</td>
			<td style="text-align: left">H.&nbsp;Sofiane Meddas</td>
			<td style="text-align: left">Use of OR tool for variant pairing
			analysis and secondary carbide precipitation of tempered tool steel: 
			Impact of multiple austenitization cycles on mechanical properties
			{% include reference.html link="https://youtu.be/Egi5XiyZLXM" content="video" class="course_material" %}
			</td>
		</tr>
		<!--<tr>
			<td style="text-align: right">11:40&minus;12:00</td>
			<td style="text-align: left">M.&nbsp;Bolan</td>
			<td style="text-align: left">Lattice curvature in 316l steel</td>
		</tr>-->	
		<tr>
			<td style="text-align: left"><i>Lunch</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">13:30&minus;14:30</td>
			<td style="text-align: left">Round&nbsp;Table Discussion</td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>	
		
	</tbody>
</table>
{% endcapture %}

<div class="panel-group" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseMo"><b>Monday:</b></a>
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
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTue"><b>Tuesday:</b></a>
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
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" 
				data-parent="#accordion" href="#collapseWe"><b>Wednesday:</b></a>
			</h4>
		</div>
		<div id="collapseWe" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				{{ table_wednesday }}
			</div>
		</div>
	</div>
</div>

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
{% include reference.html link="https://www.hotel-kreller.de" content="**Hotel Kreller:**" %} 80 Euro per night with breakfast, very close
<br>
<br>
{% include reference.html link="https://www.hotel-am-obermarkt.de" content="**Hotel am Obermarkt:**" %} 79 Euro per night without breakfast, very close
<br>
<br>				
{% include reference.html link="https://www.elly-hostel.de" content="**Elly Hostel:**" %} 77 Euro per night, with kitchen
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
