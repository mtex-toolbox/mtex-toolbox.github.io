---
title: Freiberg MTEX Workshop 2022
keywords: workshop
last_updated: December, 2021
hide_sidebar: true
permalink: workshops.html
folder: workshops
toc: false
---

## Learning Crystallographic Texture Analysis with MTEX

The workshop extends over two weeks and is part of the Master Course Introduction into the crystallographic texture analysis and counts for **4 ETCS** points. While the first week is mainly devoted to beginners in MTEX and/or texture analysis the second week is a meeting of MTEX users with different experiences to share specific use cases, tips and tricks and discuss recent and upcoming developments in MTEX.

### Week 1: 21.03.2022 - 25.03.2022

During the first week we provide on a daily basis two morning lectures covering the basic theoretical principles of crystallography, diffraction and texture analysis. During the two afternoon exercises the theoretical concepts will be demonstrated at practical examples within MTEX.

<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><b>Monday:</b> Crystal Lattices and Rotations</a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
				<b>Lecture 1 - General Concepts:</b> <a href="https://videocampus.sachsen.de/m/24eab5953e110fa2eae768bd31eb70d0877d914d403d14f25f5aec82d082bf2186b107e2797207d5f29883543711d151840d694f65eb99b7b2ea687318f2b212" target="_blank">free video</a>
                <br>
                Matlab basics and general concepts of MTEX the class vector3d, spherical coordinates
                <br>
                <b>Lecture 2 - Crystal Lattice:</b>
                <br>
                crystal lattice, direct and reciprocal coordinate system, Miller indices, zonal axes, crystal shapes
                <br>
                <b>Lecture 3 - Rotations and Crystal Symmetries:</b>
                <br>
                rotation representations, Euler angles, Rodrigues vectors, visualizations, fibers, crystal symmetries, point groups, Laue groups, space groups, fundamental sectors
                <br>
                <b>Exercise 1:</b>
 				<!-- <div markdown="1"> -->
<!-- **Lecture 1 - General Concepts:** [free video](https://videocampus.sachsen.de/m/24eab5953e110fa2eae768bd31eb70d0877d914d403d14f25f5aec82d082bf2186b107e2797207d5f29883543711d151840d694f65eb99b7b2ea687318f2b212) -->

<!-- Matlab basics and general concepts of MTEX the class vector3d, spherical coordinates -->

<!-- **Lecture 2 - Crystal Lattice:** -->

<!-- crystal lattice, direct and reciprocal coordinate system, Miller indices, zonal axes, crystal shapes -->

<!-- **Lecture 3 - Rotations and Crystal Symmetries:** -->

<!-- rotation representations, Euler angles, Rodrigues vectors, visualizations, fibers, crystal symmetries, point groups, Laue groups, space groups, fundamental sectors -->

<!-- **Exercise 1:** -->
				<!-- </div> -->
            </div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><b>Tuesday:</b> Crystal Symmetries and Orientations</a>
            </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
                <b>Lecture 4 - Orientations:</b>
                <br>
                symmetrically equivalent orientations, pole figures, inverse pole figures, visualizations, parameterization
                <br>
                <b>Lecture 5 - Density Functions:</b>
                <br>
                kernel density estimation, orientation density function, pole density function, inverse pole density function, model ODFs, ODF characteristics, random sampling
                <br>
                <b>Lecture 6 - ODF Reconstruction from Pole Figure Data:</b>
                <br>
                X-ray, neutron and synchrotron diffraction, data import, ghost correction, ODF estimation
                <br>
                <b>Exercise 2:</b>
            </div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><b>Wednesday:</b> Electron Backsactter Diffraction (EBSD)</a>
            </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
                <b>Lecture 7 - EBSD:</b>
                <br>
                data import, pole figures, inverse pole figures, color keys, reference frame, properties
                <br>
                <b>Lecture 8 - Grains:</b>
                <br>
                grain reconstruction, shape properties, orientation properties
                <br>
                <b>Exercise 3 - EBSD:</b>
				<br>
                <b>Exercise 4 - Grains:</b>
            </div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><b>Thursday:</b> Misorientations</a>
            </h4>
        </div>
        <div id="collapseFour" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
                <b>Lecture 9 - Misorientations:</b>
                <br>
                definition, visualization, phase transitions, misorientation axis, misorientation angle distribution, KAM, GOS
                <br>
                <b>Lecture 10 - Grain Boundaries:</b>
                <br>
                geometric properties, visualization, smoothing, tilt vs. twist boundaries, grain boundaries misorientations
                <br>
                <b>Exercise 5 - Grain Boundaries:</b>
                <br>
                <b>Exercise 6 - Denoising EBSD Data and Misorientations:</b>
            </div>
        </div>
    </div>
    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFive"><b>Friday:</b> Tensorial Properties</a>
            </h4>
        </div>
        <div id="collapseFive" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
                <b>Lecture 11 - Plastic / Elastic Deformation:</b>
                <br>
                stress, strain, deformation tensors, slip systems, Schmid Factor, dislocation systems, GND
                <br>
                <b>Lecture 12 - Tensorial Properties:</b>
                <br>
                wave velocities, visualization, average tensors (Voigt, Reuss, Hill) from EBSD and ODF
                <br>
                <b>Exercise 7 - Tensorial Properties:</b>
            </div>
        </div>
    </div>
    <!-- /.panel -->
</div>
<!-- /.panel-group -->

**Times:** Lecture 1: 8:45-10:00, Lecture 2: 10:30 - 11:45, Exercise 1: 13:00-14:30, Exercise 2: 15:00 - 16:00

### Week 2: 28.03.2022 - 30.03.2022

The second week will consist of lectures by invited experts that explain in detail the application of MTEX to specific problems as listed below. Furthermore, current or future users of MTEX are invited to share their experiences with MTEX or ask questions about specific use cases. To encourage discussions we plan with slots of 20 minutes talk given by the participants followed by a 10 minutes discussion. As we expect a very heterogeneous auditorium we kindly ask the participant to keep their talks as simple as possible.

<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><b>Invited Speakers</b></a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse noCrossRef">
            <div class="panel-body">
				<div markdown="1">
| | |
|:---|:---|
| [Wolfgang Pantleon](https://www.mek.dtu.dk/)<br>(DTU Dänemark) | lorem ipsum |
| [Vermeij](lorem ipsum)<br>(lorem ipsum) | [lorem ipsum](lorem ipsum) |
| [Tijmen](lorem ipsum)<br>(lorem ipsum) | [lorem ipsum](lorem ipsum) |
| [Björn Eske Sörensen](lorem ipsum)<br>(lorem ipsum) | [lorem ipsum](lorem ipsum) |
| [Omero Felipe (Phil) Orlandini](lorem ipsum)<br>(lorem ipsum) | [lorem ipsum](lorem ipsum) |
				</div>
            </div>
        </div>
    </div>
    <!-- /.panel -->
</div>
<!-- /.panel-group -->

## Organizers:

- Ralf Hielscher
- Frank Niessen
- Rüdiger Kilian
- Luiz Morales
