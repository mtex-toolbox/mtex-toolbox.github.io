---
title: Freiberg MTEX Workshop 2022
keywords: workshop
last_updated: December, 2021
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

The second week will consist of lectures by invited experts that explain in detail the application of MTEX to specific problems as listed below. Furthermore, current or future users of MTEX are invited to share their experiences with MTEX or ask questions about specific use cases. To encourage discussions we plan with slots of 20 minutes talk given by the participants followed by 10 minute discussions. As we expect a very heterogeneous auditorium we kindly ask the participant to keep their talks as simple as possible.

<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseInvitedSpeakers"><b>Keynote Speakers</b></a>
            </h4>
        </div>
        <div id="collapseInvitedSpeakers" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
<div markdown="span">
**[Wolfgang Pantleon](https://www.mek.dtu.dk/) - DTU Dänemark:**
<br>
<br>
**[Tijmem Vermeij](https://www.tue.nl/en/research/researchers/tijmen-vermeij/) - TU/e Eindhoven University of Technology:**
<br>
<br>
**[Bjørn Eske Sørensen](https://www.ntnu.edu/employees/bjorn.sorensen) - Norwegian University of Science and Technology:**
<br>
<br>
**[Omero Felipe (Phil) Orlandini](https://www.linkedin.com/in/omero-phil-orlandini-96100a4a) - The University of Texas at Austin, University of Colorado Boulder:**
</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
</div>
<!-- /.panel-group -->

## Registration:

- Please use our [registration form](https://tu-freiberg.de/fakult1/ana/professuren/prof-dr-ralf-hielscher/mtex/registration) to subscribe or write an email to <a href="mailto:Ralf.Hielscher@math.tu-freiberg.de">Ralf.Hielscher@math.tu-freiberg.de</a>
- Deadline for registration is 19th of February 2022
- Registration fee first week: students - 100 Euro, other - 200 Euro
- Registration for second week is free
- Registration for students of the TU Freiberg, the TU Chemnitz and the University of Halle is free of charge

## Organizers:

[Ralf Hielscher](https://tu-freiberg.de/fakult1/ana/hielscher) (TU Bergakademie Freiberg),
[Rüdiger Kilian](https://geodynamics.geo.uni-halle.de/ruediger-kilian/) (Universität Halle),
[Luiz Morales](https://structuretectonics.org/people/luiz-morales/) (ETH Zürich),
[Frank Niessen](https://www.researchgate.net/profile/Frank-Niessen-4) (DTU Dänemark)
