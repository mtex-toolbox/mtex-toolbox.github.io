---
title: Freiberg MTEX Workshop 2022
keywords: workshop
last_updated: 27-Jan-2022
hide_sidebar: true
permalink: workshops.html
folder: workshops
toc: false
---

<!--
The workshop extends over two weeks and is part of the master course *Introduction into crystallographic texture analysis* and counts for **5 ECTS** points. While the first week is mainly devoted to beginners in MTEX and/or texture analysis, the second week is a meeting of MTEX users with different experiences to share specific use cases, tips and tricks and discuss recent and upcoming developments in MTEX.

{% include note.html content="Due to the ongoing Corona crisis the workshop will be held entirely online via zoom. This does not mean that communication 
is one directional. Instead all participants are allowed at all time to interact with the lecturer. We also encourage the participants to send data files to the organiziers prior to the workshop which will than be discussed during the exercises." %}
-->
{% include password_access_restriction.html content_default="Every registered participant should now have received an email with a password in order to see the course materials. If you have not yet received this email please contact one of the organizers." content_access="You are logged in. <a href='https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09'>Enter Workshop zoom session.</a>" %}


{% include callout.html type="primary" content="**Timezone:** All times are local times of
Germany, which is UTC+1 in the first week and UTC+2 in the second week." %}


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
**Lecture 1 - General Concepts:**
<a href="https://videocampus.sachsen.de/m/24eab5953e110fa2eae768bd31eb70d0877d914d403d14f25f5aec82d082bf2186b107e2797207d5f29883543711d151840d694f65eb99b7b2ea687318f2b212" target="_blank">free video</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/Q5bs5ykaBn2pJLy">slides</a> 
<a class="course_material" href="https://videocampus.sachsen.de/m/2d4c72181f296b2f117449195e04e73f4eb01c71176f096b4cece77d5f2929d7af0087c0d3b6ae4f19a79fa8b61c000c5d90ed118ff2a81d70ab1c04563a25eb" target="_blank">video 1</a> 
<!--- <a class="course_material" href="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/1_basics.pdf">slides</a>-->
<!--- <a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">welcome zoom session at 8:45</a>-->
<br>
Matlab basics and general concepts of MTEX, the class vector3d, spherical coordinates
<br>
<br>
**Lecture 2 - Crystal Lattice:** 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/GfH27MesxNek5sA">slides</a> 
<a class="course_material" href="https://videocampus.sachsen.de/m/0a9313e8625de72815e1d0bb4b28e33fb24b0e2643fa22c5340b3004bd1ce4c809cbf0aa0ccf64bc3c76138bdaad195fdd612ce0864d9e50aca50b82d788d031">video 1</a> 
<a class="course_material" href="https://videocampus.sachsen.de/m/ea4c0b7d65042571665ea24fce9b2ad8ea6aa7701abe2a772191e2ccef8e26b65e2659ca4163301a71ba93217e14c0c6df33db04dfe8c0b6b7dfc3040b3b9177">video 2</a> 
<br>
crystal lattice, direct and reciprocal coordinate system, Miller indices, zonal axes, crystal shapes
<br>
<br>
**Lecture 3 - Rotations and Crystal Symmetries:**
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/G9GonnGyx7reBaN">slides</a> 
<a class="course_material" href="https://video.tu-freiberg.de/m/40d003bf04acff3395afe8a28e32f611e61bb73ee82e8bbe3993044508b8276ee8fd3dfd486d8aa16ff5b23768f945a6c6138baad9669987fc5b00f431e834f3" target="_blank">video</a> 
<!--<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session 13:00-14:15</a>-->
<br>
rotation representations, Euler angles, Rodrigues vectors, visualizations, fibers, crystal symmetries, point groups, Laue groups, space groups, fundamental sectors
<br>
<br>
**Exercise 1:** 
<!--<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session 14:45-16:00, </a>-->
<!--<a class="course_material" href="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_1.m">exercises</a>-->
<a class="course_material" href="https://video.tu-freiberg.de/m/547571083b4772b39076db9a69aa0cbe41744470974c8df15135c3bb2d18d07a28e5a544057a95881bef986bbdcf4aa593330897f9b473e0f523df8471b98e5e">video</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/j9dM6XPmpz8rStX">exercises</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/XNYKDnCZAnCgE69">solutions</a> 
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
<a class="course_material" href="https://videocampus.sachsen.de/m/421bcadc047032bb32346b3fbdf3bf197a0275d9565684740f8063457c5f4e7f60d2261891651cc669dc7f33af6d33b17f63de47f4e364ab6e7bba846d9d374b">video</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/TiWbw4WsDriYMGS">slides</a>
<br>
symmetrically equivalent orientations, pole figures, inverse pole figures, visualizations, parametrization
<br>
<br>
**Lecture 5 - Density Functions:** 
<a class="course_material" href="https://videocampus.sachsen.de/m/6da6baa2b4ddcacf4a917e7dbf0fa2a4c55f28724d45013e5ffce765e343f2e4763d63b593841287c1155fbb4a5bdadf53dd25e79cd2f80766227fa8244e6572">video</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/iykQdJXHoLSwPgG">slides</a>
<br>
kernel density estimation, orientation density function, pole density function, inverse pole density function, model ODFs, ODF characteristics, random sampling
<br>
<br>
**Lecture 6 - ODF Reconstruction from Pole Figure Data:** 
<a class="course_material" href="https://video.tu-freiberg.de/m/0091f1a741f92f6382f1b5cdb769ae6ce69ac4428451f40a85a3cec224c8975a38655b76b967f793c22d5fd8bfae99073bb2a985e68b94751ca74c39dad24224">video</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/w3fyNjc9kXEEq9p">slides</a> 
<!--<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session 13:00-14:15</a>-->
<br>
X-ray, neutron and synchrotron diffraction, data import, ghost correction, ODF estimation
<br>
<br>
**Exercise 2:** 
<a class="course_material" href="https://video.tu-freiberg.de/m/b636ff959d2b09a1eed975d318669fc61d30453c2cf83e3685a7a98b7c29911351156c357036134e5b18567e8447cc751930a8bea52b5076d5447a4c00a96a88">video</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/y7qYwBS3zaz8EJa">exercises</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/kBzaZ33n8wayZmX">solutions</a> 
<!-- <a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 14:45-16:00</a>-->
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
<!--<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 8:45-10:00</a>-->
<a class="course_material" href="https://video.tu-freiberg.de/m/aec7cf5229b38d87743a2a61854c42bbb104f9f613f94177dc9c72cb39a18af945d5eb23d2b3f4516593be3a6270380f2147458482f3616240368cff16bac938">video</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/893LCwTYWGiCZ7p">slides</a> 
<br>
data import, pole figures, inverse pole figures, color keys, reference frame, properties
<br>
<br>
**Lecture 8 - Grains:** 
<!--<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 10:30-11:45</a> --> 
<a class="course_material" href="https://video.tu-freiberg.de/m/d4f2ebff01b49c5543fdb7d2c8e339e6514a12c2bdb791bf0f4effd1a52cc8e4f01e9265549a4759182c53dd940be99aa0a3181ec9b34c87836f80d140dc9a59">video</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/atTyoXQjJzW8GB7">slides</a> 
<br>
grain reconstruction, shape properties, orientation properties
<br>
<br>
**Exercise 3 - EBSD:** 
<!--<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 13:00-14:15</a>-->
<a class="course_material" href="https://video.tu-freiberg.de/m/df2750ea1438f911b605795fb0109ea6ca1dad94e035bf9bea8d7216f6abcbcc0a3d7bc035ebf1dc9513db4dae11e2f3072a824764e839a6a035165b2e57eb2f">video</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/A9X83APDw4fj9Bx">exercises</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/XAqp9p9Y6ceX28s">data</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/9m6MSYyyAYs9yfC">solutions</a>
<br>
**Exercise 4 - Grains:** 
<!--<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 14:45-16:00</a>-->
<a class="course_material" href="https://video.tu-freiberg.de/m/2be1d86f1165f29f53483cff5f967fff9488a07aa84ed53c55f3a6f081d4e1385d63eed7a76b4c18dd45290ab9c8ed255ef9976fa31ed2e22bf35ac38c702564">video</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/TyWJzAGpK3EwgGQ">exercises</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/zmDPdqijNzNCbxE">data</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/4T745fyAss2rRwN">solutions</a>
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
<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 8:45-10:00</a>
<!--<a class="course_material" href="https://videocampus.sachsen.de/m/dbbed72f78fb34b3f13d9b51f9ea98f0a6ebb2b8f7e91ebd491518a9d812dc1ade9bc92e19d065e2d4c82460fa690ab490db50e4aa86a42def070f9fc6f6783c">video,</a> -->
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/BDRtCzFapetq3Er">slides</a> 
<br>
definition, visualization, phase transitions, misorientation axis, misorientation angle distribution, KAM, GOS
<br>
<br>
**Lecture 10 - Grain Boundaries:**
<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 10:15-11:30</a> 
<!--<a class="course_material" href="https://videocampus.sachsen.de/m/dbbed72f78fb34b3f13d9b51f9ea98f0a6ebb2b8f7e91ebd491518a9d812dc1ade9bc92e19d065e2d4c82460fa690ab490db50e4aa86a42def070f9fc6f6783c">video</a> -->
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/MWn9rTZBq4zMfft">slides</a>
<br>
geometric properties, visualization, smoothing, tilt vs. twist boundaries, grain boundary misorientations
<br>
<br>
**Exercise 5 - Grain Boundaries:** 
<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 13:00-14:15</a> 
<!--<a class="course_material" href="https://videocampus.sachsen.de/m/05fc744d727ec467e3abcc1692813a1fd1763667e9e07339b5fda50e26043b367657f938b05ffb3af67176b1969627d9c2b8dc915591a21a27758ae95acc2725">video</a> -->
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/w2WYEQRKbJi73aC">exercises</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/gsiLJzNRxwfai48">data</a> 
<!--<a class="course_material" href="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_3_solution.m">solutions</a>-->
<br>
**Exercise 6 - Denoising EBSD Data and Misorientations:**
<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 14:45-16:00</a>
<!--<a class="course_material" href="https://videocampus.sachsen.de/m/05fc744d727ec467e3abcc1692813a1fd1763667e9e07339b5fda50e26043b367657f938b05ffb3af67176b1969627d9c2b8dc915591a21a27758ae95acc2725">video</a>  -->
<a class="course_material" href="">exercises</a> 
<a class="course_material" href="">data</a> 
<!--<a class="course_material" href="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_3_solution.m">solutions</a>-->
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
**Lecture 11 - Tensorial Properties:** 
<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 8:45-10:00</a>
<!--<a class="course_material" href="https://videocampus.sachsen.de/m/2921dd50a0350caef9b3b8157e9598e2f4662457d3880fd275521795af9225b519c0aa8b9bc92588d38e43b87068a19ce953b280372296989cf0e2fb2750946c">video</a>-->
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/QwpKMBQk2GiTc8j">slides</a>  
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/LBZJoasLPpSxkfa">m-file</a>
<br>
wave velocities, visualization, average tensors (Voigt, Reuss, Hill) from EBSD and ODF
<br>
<br>
**Lecture 12 - Plastic / Elastic Deformation:** 
<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 10:30-11:45</a>
<!--<a class="course_material" href="https://videocampus.sachsen.de/m/f1fe97bdb09cf362099b852cfc52b9214d2c3eaaf5d75dcad8179b844e06b65eea6fffb143642514dfb85d88d75ee99edec3c8546f4cfe1f00b200efb42bc8ce">video</a> -->
<a class="course_material" href="">slides</a>
<br>
stress, strain, deformation tensors, slip systems, Schmid Factor, dislocation systems, GND
<br>
<br>
**Exercise 7 - Tensorial Properties:** 
<a class="course_material" href="https://us02web.zoom.us/j/86507105922?pwd=NndqNkJuVkpYQVVqRzU0QmhDblRyQT09">zoom session: 13:00-14:15</a>
<!--<a class="course_material" href="https://videocampus.sachsen.de/video/MTEX-Exercise-7/0759a254a946d4048df3c45f13cd64fc">video</a> -->
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/4yZJWMCSx7EX6aZ">exercises</a> 
<a class="course_material" href="https://ificloud.xsitepool.tu-freiberg.de/index.php/s/EZrCDCpRaMgqyDL">data</a> 
<!--<a class="course_material" href="https://www-user.tu-chemnitz.de/~rahi/download/mtexWorkshop2021/course/exercise_7_solution.m">solutions</a>-->
</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
</div>
<!-- /.panel-group -->

<!-- **Times:** Lecture 1: 8:45-10:00, Lecture 2: 10:30 - 11:45, Exercise 1: 13:00-14:30, Exercise 2: 15:00 - 16:00-->

## Week 2: MTEX in Applications

Date: 28.03.2022 - 30.03.2022

The second week will consist of lectures by invited experts that explain in detail the application of MTEX to specific problems as listed below. Furthermore, current or future users of MTEX are invited to share their experiences with MTEX or ask questions about specific use cases. To encourage discussions we plan with slots of 20 minutes talk given by the participants followed by 10 minute discussions. As we expect a very heterogeneous auditorium we kindly ask the participant to keep their talks as simple as possible.

### Keynote Speakers

* **[Sébastien Merkel](http://merkel.texture.rocks/)** (Université de Lille, France): *Microstructures in Earth mantle minerals: using MTEX to track grains and physical properties of polycrystals in high pressure experiments*
* **[Wolfgang Pantleon](https://www.mek.dtu.dk/)** (DTU Dänemark): *Revealing Cyclic Textures or Tungsten and the Amazing Technicolor Dreamcoat(ing)*
* **[Tijmen Vermeij](https://www.tue.nl/en/research/researchers/tijmen-vermeij/)** (TU/e Eindhoven University of Technology): *Exploiting MTEX for alignment, analysis and identification of microstructure-correlated strain fields in micron-scale testing*
* **[Bjørn Eske Sørensen](https://www.ntnu.edu/employees/bjorn.sorensen)** (Norwegian University of Science and Technology): *MTEX a versatile toolbox for the geologist enabling better implementation of crystallography and texture analysis in teaching and research*
* **[Omero Orlandini](https://www.researchgate.net/profile/Omero-Orlandini)** (University of Colorado Boulder): *Deep earthquakes, super-volcanoes, fossil eggs, and historic buildings: MTEX's ability to solve many problems*

## Time Schedule 

<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse"
    data-parent="#accordion" href="#collapseMo"><b>Monday:</b> Parent Grain Reconstruction and more</a>
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
    <!-- /.panel -->
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
							<td style="text-align: left">Influence of grain boundaries on the rheology of the Earth’s upper mantle</td>
						</tr>
						<tr>
							<td style="text-align: left">Lunch</td>
							<td style="text-align: left"></td>
							<td style="text-align: left"></td>
						</tr>
						<tr>
							<td style="text-align: right">13:30&minus;14:30</td>
							<td style="text-align: left">O.&nbsp;Orlandini</td>
							<td style="text-align: left">Deep earthquakes, super-volcanoes, fossil eggs, and historic buildings: MTEX’s ability to solve many problems</td>
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
    <!-- /.panel -->
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
							<td style="text-align: left">Revealing Cyclic Textures or Tungsten and the Amazing Technicolor Dreamcoat(ing)</td>
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
    <!-- /.panel -->
</div>
<!-- /.panel-group -->

## Registration:

- Please use our [registration form](https://tu-freiberg.de/fakult1/ana/professuren/prof-dr-ralf-hielscher/mtex/registration) to subscribe or write an email to <a href="mailto:Ralf.Hielscher@math.tu-freiberg.de">Ralf.Hielscher@math.tu-freiberg.de</a>
- Deadline for registration is 28th of February 2022
- Registration fee first week: students - 100 Euro, other - 200 Euro
- Registration for second week is free
- Registration for students of the TU Freiberg, the TU Chemnitz and the University of Halle is free of charge

## Organizers:

[Ralf Hielscher](https://tu-freiberg.de/fakult1/ana/hielscher) (TU Bergakademie Freiberg),
[Rüdiger Kilian](https://geodynamics.geo.uni-halle.de/ruediger-kilian/) (Universität Halle),
[Luiz Morales](https://structuretectonics.org/people/luiz-morales/) (ETH Zürich),
[Frank Niessen](https://www.researchgate.net/profile/Frank-Niessen-4) (DTU Dänemark)
