---
title: Freiberg MTEX Workshop 2025
keywords: workshop, 2025
sidebar: workshops_sidebar
permalink: workshop25
folder: workshops
toc: false
---

The workshop extends over two weeks and is part of the master course {%
include reference.html link="" content="Introduction into crystallographic
texture analysis" %} and counts for **5 ECTS** points. While the first week is
mainly devoted to beginners in MTEX and/or texture analysis, the second week
is a meeting of MTEX users with different experiences to share specific use
cases, tips and tricks and discuss recent and upcoming developments in MTEX. A
special focus will be on grain boundary statistics and new functionalities in
MTEX 6.1. Participation is possible in presence as well as remotely.

<!--<div markdown="span" class="alert alert-info" role="alert">
	<i class="fa fa-info-circle"></i> 
	<b>Important:</b> Deadline has been extended until 21.02.2025
</div>-->

{% capture par_default %}
	Every registered participant should now have received an email with a password in order to see the course materials. If you have not yet received this email please contact one of the organizers.
{% endcapture %}
{% capture par_access %}
	You are logged in.
	{% include reference.html link="https://eu02web.zoom-x.de/j/64956858966" content="Enter Workshop zoom session" %}
{% endcapture %}
{% include password_access_restriction.html content_default=par_default content_access=par_access %}

## Week 1: Learning Crystallographic Texture Analysis with MTEX

Date: 03.03.2025 - 07.03.2025

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
{% include reference.html link="https://drive.google.com/file/d/1y0ewXfouvFl1pJnrscxQ6FCO89x2OzD_/view?usp=sharing"
	content="slides" class="course_material" %}
<br>
Matlab basics and general concepts of MTEX, the class vector3d, spherical coordinates
<br>
<br>
**Lecture 1 - EBSD (Rüdiger Kilian)**
{% include reference.html link="https://drive.google.com/file/d/1PreAu1jdBvwDnKhFks9N-ohs4g2PxRz4/view?usp=sharing" content="slides" class="course_material" %}
<span class="course_material">, </span>
<!---{% include reference.html link="https://youtu.be/z0-rB87H0hU" content="video"
	class="course_material" %}--->
<br>
principle concept, data import, basic data cleanup, orientation maps, color keys
<br>
<br>
**Exercise 1**
{% include reference.html link="https://drive.google.com/file/d/1a0CGSfltrMGcA9KDFjexgyOtAo2iYrXc/view?usp=sharing" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://drive.google.com/file/d/13_FdIRMJSgew6xS8oLJo2zmqY8cC34wc/view?usp=sharing" content="solution" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://drive.google.com/file/d/1ZI0pS2GOsgK-hJnjCCo2D8PztLzs9xFp/view?usp=sharing" content="data" class="course_material" %}
<span class="course_material">, </span>
<!--{% include reference.html link="https://youtu.be/5YicKTTnMb8" content="video" class="course_material" %}-->
<br>
<br>

*Lunch*

<br>
<br>
**Lecture 2 - Orientations and Symmetries (Ralf Hielscher)**
{% include reference.html link="https://drive.google.com/file/d/1LgYLfPbBmcoJXy7cTpQeCrIB5IQGG2Ic/view?usp=sharing" content="slides" class="course_material" %}
<br>
crystal lattice, direct and reciprocal coordinate system, Miller indices,
zonal axes, crystal shapes, point groups, Laue groups, symmetrically equivalent orientations, 
pole figures, inverse pole figures, fundamental sectors

<br>
<br>
**Exercise 2**
{% include reference.html link="https://drive.google.com/file/d/1TdchUXZwoRLw_FWujkp3qTxRerBYg_Gx/view?usp=sharing" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://drive.google.com/file/d/1MU1nuEjncs4yXi3w5SgTxQabCDMaU77M/view?usp=sharing" content="data" class="course_material" %}
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

**Lecture 3 - Grains (Rüdiger Kilian)**
{% include reference.html link="https://drive.google.com/file/d/17HZscVF9GNmF4Eq3fIke0jjZBqxpyM0N/view?usp=sharing" content="slides" class="course_material" %}
<br>
segmentation, shape properties, orientation properties, grain selection, grain statistics
<br>
<br>
**Exercise 3**
{% include reference.html link="https://drive.google.com/file/d/1d91FOtsBOqNVXyYm8hsYTlJEY4Q_awdU/view?usp=sharing" content="script" class="course_material" %}
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 4 - Misorientations and Grain Boundaries (Vivian Tong)**
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
**Excursion: Freiberg Silver Mine**
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 5 - Density Functions (Ralf Hielscher)**
<br>
kernel density estimation, orientation density function, pole density
function, inverse pole density function, model ODFs, ODF characteristics,
random sampling, ODF reconstuction from XRD data
<br>
<br>
**Exercise 5**
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
				href="#collapseThursday"><b>Thursday:</b> Data Polishing,
				Tensorial Properties and Elastic Deformations</a>
			</h4>
		</div>
		<div id="collapseThursday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
**Lecture 6 - How to set up your EBSD map correctly (Vivian Tong)**
<br>
Correction of spatial coordinates, reference frame alignment, denoising 
<br>
<br>
**Exercise 6 - Grain Boundaries and Misorientations**

<br>

<br>
<br>
*Lunch*
<br>
<br>
**Lecture 7 - Quantitative Microstructure Analysis (Rüdiger Kilian)**
<br>
grain shape, grain boundary and grain size statistics
<br>
<!--deformation tensors, slip systems, dislocation systems, Schmid Factor, Taylor factor, 
combining MTEX with external software like VPSC-->
<br>
<br>
**Exercise 7 - **
<br>
 			  </div>
			</div>
		</div>
	</div>
	<!------------------------------------------------- Friday -----------------...----------------->
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse"
				data-parent="#accordion" href="#collapseFriday"><b>Friday:</b>
				Plastic Deformations, Orientation
				Relationships and Phase Transition</a>
			</h4>
		</div>
		<div id="collapseFriday" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
**Lecture 8 - to be announced (Luiz Morales)**
<br>
<br>
<br>
**Lecture 9 - Plasticity (Ralf Hielscher)**
<br>
deformation tensors, slip systems, dislocation systems, Schmid Factor, Taylor factor, 
<br>
<br>
*lunch*
<br>
<br>
**Lecture 10 - Parent Grain Reconstruction (Ralf Hielscher)**
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

Date: 10.03.2025 - 13.03.2025

The second week is a get together of new and experienced MTEX users to share
their use cases of MTEX, research results and MTEX specific tricks and
tips. There will be introductory lectures by invited experts that explain
their workflow in specific applications of MTEX. To encourage discussions we
plan with slots of 20 minutes talks followed by 10 minute discussions. As we
expect a very heterogeneous auditorium we kindly ask the participants to keep
their talks as accessible as possible.

### Keynote Speakers


- **{% include reference.html
  link="https://www.materials.ox.ac.uk/peoplepages/marquardt.html"
  content="Katharina Marquardt" %}** (University of Oxford)
   
- **{% include reference.html
  link="https://www.researchgate.net/profile/Gert-Nolze"
  content="Gert Nolze" %}** (Bundesanstalt für Materialforschung)
  
- **{% include reference.html
  link="https://research.manchester.ac.uk/en/persons/joao.fonseca"
  content="João Quinta da Fonseca" %}** (University of Manchester)

- **{% include reference.html
  link="https://www.researchgate.net/profile/Daniel-Savage-4"
  content="Daniel Savage" %}** (Los Alamos National Laboratory)

- **{% include reference.html
  link="https://www.ntnu.edu/employees/bjorn.sorensen" content="Bjørn Eske
  Sørensen" %}** (NTNU): Customizing EBSD analysis and interpretation using
  MTEX and MATLAB – advantages of the scripting approach

## Venue:

<div class="panel-group" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title"> <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseLocation">
				<b>Location:</b> TU Freiberg, Germany (click for details)</a>
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
				<b>Accommodation:</b> (click for details)</a>
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

- Please register at {% include reference.html link="https://acatrain.net/events/freiberg-mtex-workshop-2025/" content="https://acatrain.net/events/freiberg-mtex-workshop-2025" %}
 - Deadline for registration is 21st of February 2025

## Registration Fee:
- first + second week (presence):  (PhD) students - 400 Euro, other - 600 Euro
- first + second week (online):  (PhD) students - 200 Euro, other - 300 Euro
- second week: (PhD) students - 100 Euro, other - 200 Euro
- Payment includes: Lunch for all days and Excursion fee
- Registration for students of the TU Freiberg and the University of Halle is free of charge

## Organizers:

{% include reference.html link="https://tu-freiberg.de/fakult1/ana/hielscher" content="Ralf Hielscher" %} (TU Bergakademie Freiberg),
{% include reference.html link="https://geodynamics.geo.uni-halle.de/ruediger-kilian/" content="Rüdiger Kilian" %} (Universität Halle),
{% include reference.html link="https://structuretectonics.org/people/luiz-morales/" content="Luiz Morales" %} (ETH Zürich),
{% include reference.html link="https://scholar.google.co.uk/citations?hl=en&user=GvwErjEAAAAJ&view_op=list_works&sortby=pubdate" content="Vivian Tong" %} (National Physical Laboratory UK)

{% capture ref_content %}{% include inline_image.html file="icons/acaTrain.jpg" %}{% endcapture %}
{% include reference.html link="https://acatrain.net/" content=ref_content %}
