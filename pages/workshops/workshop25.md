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
{% include reference.html link="https://youtu.be/36Fgq7ek9h0" content="video" class="course_material" %}
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
{% include reference.html link="https://youtu.be/r8h7WpNlWdA" content="video" class="course_material" %}
<br>
<br>

*Lunch*

<br>
<br>
**Lecture 2 - Orientations and Symmetries (Ralf Hielscher)**
{% include reference.html link="https://drive.google.com/file/d/1LgYLfPbBmcoJXy7cTpQeCrIB5IQGG2Ic/view?usp=sharing" content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/uzeO9mPit5Q" content="video" class="course_material" %}
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
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/lIPZlFBINxM" content="video" class="course_material" %}
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
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/Sx94YkaXq5o" content="video" class="course_material" %}
<br>
segmentation, shape properties, orientation properties, grain selection, grain statistics
<br>
<br>
**Exercise 3**
{% include reference.html link="https://drive.google.com/file/d/1d91FOtsBOqNVXyYm8hsYTlJEY4Q_awdU/view?usp=sharing" content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/NdN1DEptEKs" content="video" class="course_material" %}
<br>
<br>
*Lunch*
<br>
<br>
**Lecture 4 - Misorientations and Grain Boundaries (Vivian Tong)**
{% include reference.html
link="https://drive.google.com/file/d/1rudtwJ8ExuvgSShdEXJvB-1A4itiH4A9/view?usp=sharing"
content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://drive.google.com/file/d/1MpCHvNO8NnRTLmzu8ad_QFu2rYO24GjB/view?usp=sharing"
content="mlx-script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/5a0iUUmVuis" content="video" class="course_material" %}
<br>
grain boundary misorientations, misorientation axis, misorientation angle,
KAM, GOS, IGMA, twin boundaries, tilt vs. twist
boundaries, orientation, gradients,  statistics of boundary networks
<br>
<br>
**Exercise 4**
{% include reference.html
link="https://drive.google.com/file/d/1dJjI58COp9t1ch1IwDQQac_xWUaZnfky/view?usp=sharing"
content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://nplanywhere.npl.co.uk/u/raMqVDojKki_oypU/6ffa5d0a-8ece-4265-8f0c-a57afae0d4ee?l"
content="data" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://drive.google.com/file/d/1teNm_JDZ_ZCpo3W_IDzcdIzPD6MWKzu4/view?usp=sharing"
content="mlx-script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/tvPOQttwTsQ" content="video" class="course_material" %}

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
					
**Lecture 5 - Density Functions (Ralf Hielscher)**
{% include reference.html
link="https://drive.google.com/file/d/1Pwo9CGL_aO1ncYvF3A31J8dgcy4V6ueh/view?usp=sharing"
content="slides 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://drive.google.com/file/d/1Hx1AMgQ1rnZsoCZfiV0AZ-4vTqM2uIzt/view?usp=sharing"
content="slides 2" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/vm6mxAqG9i0" content="video" class="course_material" %}
<br>
kernel density estimation, orientation density function, pole density
function, inverse pole density function, model ODFs, ODF characteristics,
random sampling, ODF reconstuction from XRD data
<br>
<br>
**Exercise 5**
{% include reference.html
link="https://drive.google.com/file/d/1RmzHMBJxijueky9HyLFnVDIYLRdFwcAY/view?usp=sharing"
content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/-YH-Oi_F_aY" content="video" class="course_material" %}
<br>
<br>
*Lunch*
<br>
<br>
**Excursion: Terra Mineralia (Mineral exhibition)**

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
{% include reference.html
link="https://drive.google.com/file/d/1nDdx5UFoGMdjyaAuzwRXfLT8gSj84Py9/view?usp=sharing"
content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/IAR41HANlIk" content="video" class="course_material" %}
<br>
Correction of spatial coordinates, reference frame alignment, denoising
<br>
<br>
**Exercise 6 - TrueEBSD for intragranular misorientation analysis**
{% include reference.html
link="https://drive.google.com/file/d/1vun0c1ym568uiZBmwafF7PplvN1Jym9p/view?usp=sharing"
content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://drive.google.com/file/d/1gUPiui-ZZWZKstFi3ZHm9h30OlKw-_VU/view?usp=sharing"
content="mlx-script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/2-5ge1adsmU" content="video" class="course_material" %}
<br>

<br>
<br>
*Lunch*
<br>
<br>
**Lecture 7 - Quantitative Microstructure Analysis (Rüdiger Kilian)**
{% include reference.html
link="https://drive.google.com/file/d/1AQRAxuk3PC7ivHV7RRW-edCPhfmjkmC_/view?usp=sharing"
content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/mVsxlnV9dpE" content="video" class="course_material" %}
<br>
grain shape, grain boundary and grain size statistics
<br>
<!--deformation tensors, slip systems, dislocation systems, Schmid Factor, Taylor factor, 
combining MTEX with external software like VPSC-->
<br>
<br>
**Exercise 7 - Fabric Analysis**
{% include reference.html
link="https://drive.google.com/file/d/1XX2VRt3Khz1eL1QqkHAofXNfNmqNJ4e-/view?usp=sharing"
content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/Ucb-PzagA9c" content="video" class="course_material" %}
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
**Lecture 8 - Plasticity (Ralf Hielscher)**
{% include reference.html
link="https://drive.google.com/file/d/1eAUjMh8sG7ggzNHsEf9x2Lmg4g52R_Rk/view?usp=sharing"
content="slides" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/7pftx1iq-HY" content="video" class="course_material" %}
<br>
deformation tensors, slip systems, dislocation systems, Schmid Factor, Taylor factor, 
<br>
<br>
**Exercise 8 - Plasticity**
{% include reference.html
link="https://drive.google.com/file/d/1Jt-07bOPJg3Hbj7ji0vDM2jN01eeUBNE/view?usp=sharing"
content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/pOVaIV_exjs" content="video" class="course_material" %}
<br>
<br>
*lunch*
<br>
<br>
**Lecture 9 - Parent Grain Reconstruction (Ralf Hielscher)**
{% include reference.html
link="https://drive.google.com/file/d/16hMEm7-59sGMpIJ2unSEsjynvpEbhAEK/view?usp=sharing"
content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html link="https://youtu.be/yY359NPY7oA" content="video" class="course_material" %}
<br>
determination of orientation relationships, phase transition, parent grain reconstruction, transformation
textures, variant selection
<!--Participants can vote for their topic of interest, e.g.: denoising of EBSD
maps, dislocation density estimation, weighted Burgers vector, habit planes determination, -->
<br>
<br>
**Free Discussion of Personal Data Sets**
{% include reference.html
link="https://drive.google.com/file/d/1xOrOdT3FtWyhqmBHfDfAUAKg1ZOXZsoG/view?usp=sharing"
content="script" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://drive.google.com/file/d/1WTBzzE0U2LllmrG775QeEXVlbF0pN8i7/view?usp=sharing"
content="data 1" class="course_material" %}
<span class="course_material">, </span>
{% include reference.html
link="https://drive.google.com/file/d/1vYVFljdnyYxWI0FqIIDgDja4gziNpH8f/view?usp=sharing"
content="data 2" class="course_material" %}
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
			<td style="text-align: left">J. Q. da Fonseca</td>
			<td style="text-align: left">Experimental and computational studies in light alloys exploiting MTEX
			{% include reference.html link="https://youtu.be/tAfi6Hk5xx8" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">10:30&minus;11:00</td>
			<td style="text-align: left">T.&nbsp;Mineau</td>
			<td style="text-align: left">In situ experimentation on a magnesium alloy to constrain
				feedbacks between strain localization and microstructure evolution
			{% include reference.html link="https://youtu.be/zjWmSpft0cU" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:00&minus;11:30</td>
			<td style="text-align: left">H. W. Ånes</td>
			<td style="text-align: left">2D correlation of second-phase particles and grains in an Al-Mn alloy
			{% include reference.html link="https://youtu.be/oDXZrnBb0Uc" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:30&minus;12:00</td>
			<td style="text-align: left">V.&nbsp;Tong</td>
			<td style="text-align: left">Grain boundary reconstruction
			{% include reference.html link="https://youtu.be/hJH2KpdWIYA" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Lunch</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>			
		</tr>
		<tr>
			<td style="text-align: right">13:30&minus;14:30</td>
			<td style="text-align: left">R.&nbsp;Hielscher</td>
			<td style="text-align: left">Grain boundary normal distributions
			{% include reference.html link="https://youtu.be/NabSSN3BPNY" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">14:30&minus;15:00</td>
			<td style="text-align: left">F. Bachmann</td>
			<td style="text-align: left">Approximation of the ODF and its application to pole figure
			Inversion
			{% include reference.html link="https://youtu.be/e2MWVyvurDI" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>			
		</tr>				
		<tr>
			<td style="text-align: right">15:30&minus;16:00</td>
			<td style="text-align: left">H. Bilan</td>
			<td style="text-align: left">In-Situ SEM Tensile Testing as a Method of Microstructural
				Analysis: Comparative Observations for Additively Manufactured and Cold Rolled
				316L Stainless Steel
			{% include reference.html link="https://youtu.be/dCYOqTeEsKY" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">16:00&minus;16:30</td>
			<td style="text-align: left">P.&nbsp;Hegele</td>
			<td style="text-align: left">Influence of the PBF-LB/M Process Parameters on the Retained
			Austenite Fraction in the Solidification Microstructure of
			Hot-Work Tool Steels
			{% include reference.html link="https://youtu.be/mG0yocEDI-I" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">16:30&minus;17:00</td>
			<td style="text-align: left">M.&nbsp;Bolan</td>
			<td style="text-align: left">Characterization of plastic
			deformation in 316L expanded austenite
			{% include reference.html link="https://youtu.be/veeU6Fx0q-E" content="video" class="course_material" %}
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
			href="https://maps.app.goo.gl/YpktzhdGqvXtEvbeA">Tre Viet Freiberg</a></i></td>
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
			<td style="text-align: right">9:000&minus;10:00</td>
			<td style="text-align: left">B. E. Sörrensen</td>
			<td style="text-align: left">Customizing EBSD analysis and interpretation using MTEX
			and MATLAB – advantages of the scripting approach
			{% include reference.html link="https://youtu.be/qbRIIfytVYk" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">10:30&minus;11:00</td>
			<td style="text-align: left">U.&nbsp;Faul</td>
			<td style="text-align: left">Dislocation Structures in Experimentally Deformed Olivine
			{% include reference.html link="https://youtu.be/AmF1f3SYXPg" content="video" class="course_material" %}
			</td>
		</tr>				
		<tr>
			<td style="text-align: right">11:00&minus;11:30</td>
			<td style="text-align: left">N. M. Cohen <i>(online)</i></td>							
			<td style="text-align: left">A New Tool to Quantify Crystallographic Preferred Orientation (CPO) of Olivine
			{% include reference.html link="https://youtu.be/a4QlGizNkhc" content="video" class="course_material" %}
			</td>							
		</tr>
		<tr>
			<td style="text-align: right">11:30&minus;12:00</td>
			<td style="text-align: left">T.&nbsp;Griffiths</td>							
			<td style="text-align: left"> Quantifying microstructures in partially amorphous
			samples: easy testing of many processing parameters using MTEX
			{% include reference.html link="https://youtu.be/v5hg7AWZ9Po" content="video" class="course_material" %}
			</td>							
		</tr>
		<tr>
			<td style="text-align: left"><i>Lunch</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">13:30&minus;17:00</td>
			<td style="text-align: left"><i>Excursion</i></td>
			<td style="text-align: left"></td>
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
			<td style="text-align: left">D.&nbsp;Savage</td>
			<td style="text-align: left">Quantitative texture analysis in x-ray and neutron diffraction
			{% include reference.html link="https://youtu.be/dGrExN43LLs" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">10:30&minus;11:00</td>
			<td style="text-align: left">T.&nbsp;Vermeij</td>
			<td style="text-align: left">In situ EBSD and TKD micromechanical testing
			{% include reference.html link="https://youtu.be/XJ2kUpcK8DE" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:00&minus;11:30</td>
			<td style="text-align: left">P.&nbsp;Kroeker</td>
			<td style="text-align: left">Implementation of deformation twin analysis in MTEX: A case study on Rhenium
			{% include reference.html link="https://youtu.be/567RxlIFTKY" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:30&minus;12:00</td>
			<td style="text-align: left">B. Beichert</td>
			<td style="text-align: left">Microstructural Evolution under Tribological Load
			{% include reference.html link="https://youtu.be/FUi6sXpuyfo" content="video" class="course_material" %}
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
			<td style="text-align: left">Grain boundaries in Olivine: Using EBSD for the study
			of complexion transitions and why they matter 
			</td>
		</tr>
		<tr>
			<td style="text-align: right">14:30&minus;15:00</td>
			<td style="text-align: left">R. Kühn</td>
			<td style="text-align: left">CPO and microstructure in oceanic serpentinites
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>
		<tr>
			<td style="text-align: right">15:30&minus;16:00</td>
			<td style="text-align: left">V. Akker</td>
			<td style="text-align: left">Fluid-assisted replacement in calcite veins
			</td>
		</tr>
		<tr>
			<td style="text-align: right">16:00&minus;16:30</td>
			<td style="text-align: left">R.&nbsp;Kilian</td>
			<td style="text-align: left">Recrystalized grains and the weighted burgers vector
			{% include reference.html link="https://youtu.be/6uVzvMpcYvs" content="video" class="course_material" %}
			</td>			
		</tr>
		<tr>
			<td style="text-align: right">16:30&minus;17:00</td>
			<td style="text-align: left">E. Avrahami</td>
			<td style="text-align: left">Coccoliths: Complex Nano-scale Crystals Constructed With Simple Principles
			{% include reference.html link="https://youtu.be/QquSMTihQ2M" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left">18:30-21:00</td>
			<td style="text-align: left">Dinner at Stadtwirtschaft Freiberg</td>
			<td style="text-align: left"></td>
		</tr>			
	</tbody>
</table>
{% endcapture %}
{% capture table_thursday %}
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
			<td style="text-align: left">G.&nbsp;Nolze</td>
			<td style="text-align: left">The importance of a proper indexing in centred lattices
			{% include reference.html link="https://youtu.be/A-oCzsqkVpU" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: left"><i>Coffee</i></td>
			<td style="text-align: left"></td>
			<td style="text-align: left"></td>
		</tr>		
		<tr>
			<td style="text-align: right">10:30&minus;11:00</td>
			<td style="text-align: left">R. Purushottam</td>
			<td style="text-align: left">LaueNN: Neural network based hkl recognition of Laue spots and its application to polycrystalline materials
			{% include reference.html link="https://youtu.be/NuBFj_L1gis" content="video" class="course_material" %}
			</td>
		</tr>
		<tr>
			<td style="text-align: right">11:00&minus;11:30</td>
			<td style="text-align: left">L. Richter</td>
			<td style="text-align: left">Resolving pseudosymmetric domains - an MTEX usecase
			{% include reference.html link="https://youtu.be/xmFEQy_rP8Y" content="video" class="course_material" %}
			</td>
		</tr>
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
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a class="noCrossRef accordion-toggle" data-toggle="collapse" 
				data-parent="#accordion" href="#collapseTh"><b>Thursday:</b></a>
			</h4>
		</div>
		<div id="collapseTh" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				{{ table_thursday }}
			</div>
		</div>
	</div>
</div>


## Venue:

<div class="panel-group" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title"> <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseLocation">
				<b>Location:</b> TU Freiberg (Saxony), Germany (click for details)</a>
			</h4>
		</div>
		<div id="collapseLocation" class="panel-collapse collapse noCrossRef">
			<div class="panel-body">
				<div markdown="span">
					Please make sure that you are planning to travel to Freiberg (Saxony). There are other cities in Germany with a similar name.
					<br>
					Location of the Workshop: {% include reference.html link="https://goo.gl/maps/dFvybo2UhVnQkBjV8" content="Hörsaalgebäude, Prüferstraße 4"%}
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
