---
title: false
keywords: Homepage, home, news, featured examples, mtex toolbox, community, featured addons, documentation, latest publications, requirements, licensing, licencing
last_updated: 14-Sep-2022
hide_sidebar: true
permalink: index
toc: false
---

<b>MTEX</b> is a free and open source Matlab toolbox for analyzing and modeling
crystallographic textures by means of EBSD or pole figure data. It is developed
by an interdisciplinary {% include reference.html link="people" content='<i class="fas fa-people-group"></i> team' %}
of material scientists, geologists and mathematicians.
<br>
<!--<img src="https://visitor-badge.laobi.icu/badge?page_id=MTEXHomePage&right_color=%23149983">-->
<!-- <img src="https://visitor-badge.laobi.icu/badge?page_id=MTEXHomePage&right_color=%23149983&query_only"> -->
[![](https://badgen.net/badge/icon/github?icon=github&label)](https://github.com/mtex-toolbox/mtex)&nbsp;
<!--[![](https://img.shields.io/badge/Research-Gate-9cf)](https://www.researchgate.net/project/MTEX-free-crystallographic-texture-analysis-software)&nbsp;
&nbsp;-->
<!--![](https://img.shields.io/github/languages/top/mtex-toolbox/mtex)&nbsp;-->
![](https://img.shields.io/github/downloads/mtex-toolbox/mtex/total)&nbsp;
![](https://img.shields.io/github/contributors/mtex-toolbox/mtex)&nbsp;

<!-- news and community card -->
<div class="row">
    <div id="home-news" class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
				<i class="fa-solid fa-rss"></i>
                <!--<i class="fa fa-newspaper-o"></i>-->
                News
                <i class="fa fa-angle-double-right"></i>
                {% include reference.html link="changelog" content="Complete&nbsp;changelog" %}
            </div>
            <div class="panel-body">
                <ul class="no_bullet">
				<li>
                        03/25 &minus;
							{% include reference.html link="https://github.com/mtex-toolbox/mtex/releases/download/mtex-6.2.beta.3/mtex-6.2.beta.3.zip" content="MTEX 6.1.beta3" download=true %}
                        released:
                        {% include reference.html link="changelog#1" content="Release Notes" %}
                    </li>
					<li>
						03/25 &minus;
						{% include reference.html link="workshop25?" content="MTEX Workshop 25" %}:
						{% include reference.html link="https://github.com/mtex-toolbox/mtex/discussions/2249" content="Announcement" %}
                    </li>
   					<li>
                        11/24 &minus;
							{% include reference.html link="https://github.com/mtex-toolbox/mtex/releases/download/mtex-6.0.0/mtex-6.0.0.zip" content="MTEX 6.0.0" download=true %}
                        released:
                        {% include reference.html link="changelog#1" content="Release Notes" %}
                    </li>
					<!--<li>
						03/24 &minus;
						{% include reference.html link="workshop24?" content="MTEX Workshop 24" %}:
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex/discussions/2249" content="Announcement" %}
                    </li>-->
                    <li>
                        03/22 &minus; addon 
                        {% include reference.html link="https://github.com/ORTools4MTEX/ORTools" content="ORTools" %}
                        for parent grain reconstruction
                    </li>
                    <li>
                        03/22 &minus;
                        {% include reference.html link="https://www.researchgate.net/publication/353330126_Getting_Started_with_MTEX_for_EBSD_analysis_Rev6" content="MTEX GUI 3.5" %}
                        by 
                        {% include reference.html link="https://www.researchgate.net/profile/Jessica-Hiscocks" content="J. Hiscocks" %}
                    </li>
                    <li>
                        07/21 &minus;
                        {% include reference.html link="https://www.researchgate.net/publication/353330126_Getting_Started_with_MTEX_for_EBSD_analysis_Rev6" content="Getting Started with MTEX for EBSD Analysis" download=true %}
                        by J. Hiscocks
                    </li>
                 </ul>
            </div>
        </div>
    </div>
    <div id="home-community" class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fas fa-users"></i>
                Community
            </div>
            <div class="panel-body">
                <ul class="no_bullet">
                    <li>
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex/discussions"
						content='<i class="fas fa-comments"></i> Forum' %} - Questions, Discussions,
						Announcements
                    </li>
                    <li>
						{% include reference.html link="https://github.com/mtex-toolbox/mtex/issues" 
						content='<i class="fa fa-bug"></i> Bugs' %} - Every bug report is welcome
                    </li>
					<li>
                        {% include reference.html link="addons" 
						content='<i class="fas fa-toolbox"></i> Add-ons and MTEX based toolboxes' %}
						<!--<i class="fa fa-toolbox"></i>-->
                    </li>
                    <li>
					   {% include reference.html link="https://gist.github.com/search?q=%23mtexScript&s=updated&o=desc"
						content='<i class="fa fa-screwdriver-wrench"></i> Helper functions' %}
                        - {% include reference.html link="scripts" content="Learn how to share your own scripts" %}
                    </li>
                    <li>
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex/blob/develop/CONTRIBUTING.md" 
						content='<i class="fa-brands fa-github"></i> Contribute' %}
                        - it's easy to add documentation or new features
                    </li>
					<li>
						{% include reference.html link="workshop25?" 
						content='<i class="fa-solid fa-chalkboard-user"></i> Workshops' %}
                        - lectures and exercises on the usage of MTEX
                    </li>
					<!--
                    <li>
                        {% capture ref_content %}
                            GitHub Repository
                            <i class="fa fa-github"></i>
                        {% endcapture %}
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex" content=ref_content no_icon=true %}
                        and
                        {% capture ref_content %}
                            ResearchGate Project
                            <img src="{{ "images/icons/ResearchGate_256px.png" }}" class="icon-inline">
                        {% endcapture %}
                        {% include reference.html link="https://www.researchgate.net/project/MTEX-free-crystallographic-texture-analysis-software" content=ref_content no_icon=true %}
                    </li>
                    <li>
                        {% include reference.html link="videos" content="Videos" %} explaining MTEX
                    </li>-->
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- a bunch of links as documentation overview  -->
<div class="row">
    <div id="home-documentation" class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-book"></i>
                Documentation
                <i class="fa fa-angle-double-right"></i>
                {% include reference.html link="Documentation" content="All&nbsp;Topics" %}
                | {% include reference.html link="function_reference" content="Function&nbsp;References" %}
                | {% include reference.html link="download#installation" content="Installation" no_icon=true %}
                | {% include reference.html link="examples" content="Examples" %}
                | {% include reference.html link="videos" content="Videos" %}
            </div>
        </div>
    </div>
</div>

<!-- some featured examples with image and description -->
<div class="row no-wrap-scrollable-x auto-scroll-x scrollbar-at-top">
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
				<a href="https://mtex-toolbox.github.io/GrainTutorial.html">
					<img src="images/thumbnails/GrainTutorial.jpg">
				</a>	
            </div>
            <div class="panel-body">
                <h4>{% include reference.html link="GrainTutorial.html" content='Grain Tutorial'%}</h4>
                <p>A quick guide through the grain reconstruction capabilities.</p>
                <!--{% include reference.html link="GrainTutorial.html" content="Learn More" class="btn btn-primary" %}-->
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
				<a href="https://mtex-toolbox.github.io/EBSDDenoising.html">
					<img src="images/thumbnails/EBSDDenoising.jpg">
				</a>
            </div>
            <div class="panel-body">
                <h4>{% include reference.html link="EBSDDenoising.html" content='Denoising Orientation Maps'%}</h4>
                <p>A quick comparison of different denoising methods for EBSD data.</p>
                <!--{% include reference.html link="EBSDDenoising.html" content="Learn More" class="btn btn-primary" %}-->
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
				<a href="https://mtex-toolbox.github.io/MaParentGrainReconstruction.html">
					<img src="images/thumbnails/MaParentGrainReconstruction.jpg">
				</a>
            </div>
            <div class="panel-body">
                <h4>{% include reference.html link="MaParentGrainReconstruction.html" content='Parent Grain Reconstruction'%}</h4>
                <p>A workflow for the reconstruction of parent austenite grains.</p>
                <!--{% include reference.html link="MaParentGrainReconstruction.html" content="Learn More" class="btn btn-primary" %}-->
            </div>
        </div>
    </div>
	<div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
				<a href="https://mtex-toolbox.github.io/Grains3D.html">
					<img src="images/thumbnails/Grains3D.png">
				</a>
            </div>
            <div class="panel-body">
                <h4>{% include reference.html link="Grains3D.html" content='3D Grain Analysis'%}</h4>
                <p>A quick guide how to import and analyze 3d grain data.</p>
                <!--{% include reference.html link="Grains3D.html" content="Learn More" class="btn btn-primary" %}-->
            </div>
        </div>
    </div>
</div>

<!-- a bunch of links as documentation overview  -->
<div class="row">
    <div id="home-toolboxes" class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-screwdriver-wrench"></i>
                Add-ons
                <i class="fa fa-angle-double-right"></i>
                {% include reference.html link="addons" content="Table of All&nbsp;Add-ons" %}
                | {% include reference.html
				link="https://gist.github.com/search?q=%23mtexScript&s=updated&o=desc"
				content="User Scripts" %}
            </div>
        </div>
    </div>
</div>



<!-- addons with image and description -->
<div class="row no-wrap-scrollable-x auto-scroll-x scrollbar-at-top">
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
				<a href="https://github.com/Tijmenvermeij/SSLIP?tab=readme-ov-file">
                  <img src="images/thumbnails/SSLIP.gif">
				</a>
            </div>
            <div class="panel-body">			
				<!--<h4>
					{% include reference.html
					link="https://www.researchgate.net/publication/359504978_MTEX_GUI_3pt5_a_graphical_interface_for_MTEX_texture_analysis_on_MATLAB" 
					content="MTEX GUI" %}					
				</h4>-->
				<h4>
					{% include reference.html
					link="https://github.com/Tijmenvermeij/SSLIP?tab=readme-ov-file" 
					content="SSLIP" %}					
				</h4>
				<p>Slip System based Identification of Local Plasticity</p>
				<!--
                <p>
                    <i class="fa fa-user"></i>
                    {% include reference.html link="https://www.researchgate.net/profile/Jessica_Hiscocks" content="Jessica Hiscocks" %}
                </p>
                <p>
                    <i class="fa fa-home"></i>
                    {% include reference.html link="https://www.researchgate.net/publication/341722714_MTEX_GUI_3pt4-_An_updated_graphical_interface_for_MTEX" content="ResearchGate: An updated graphical interface for MTEX" %}
                </p>
				-->
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
				<a href="https://github.com/DorianDepriester/MTEX2Gmsh">
					<img src="images/thumbnails/MTEX2Gmsh_logo_centered.png">
				</a>
            </div>
            <div class="panel-body">
                <h4>{% include reference.html link="https://github.com/DorianDepriester/MTEX2Gmsh" content="MTEX2Gmsh" %}</h4>
				<p>EBSD Meshing Toolbox</p>
<!--                <p>
                    <i class="fa fa-user"></i>
                    {% include reference.html link="https://www.researchgate.net/profile/Dorian_Depriester" content="Dorian Depriester" %}
                </p>
                <p>
                    <i class="fa fa-home"></i>
                    {% include reference.html link="https://github.com/DorianDepriester/MTEX2Gmsh" content="GitHub: DorianDepriester/MTEX2Gmsh" %}
                </p>
				-->
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
				<a href="https://www.github.com/frankNiessen/phaseSegmenter">
					<img src="images/thumbnails/phaseSegmenter_screenshot_centered.png">
				</a>
            </div>
            <div class="panel-body">
				<h4>
				{% include reference.html link="https://www.github.com/frankNiessen/phaseSegmenter" content="phaseSegmenter" %}
				</h4>
				<p>
				toolbox for segmenting of phases
				</p>
                <!--<p>
                    <i class="fa fa-user"></i>
                    {% include reference.html link="https://www.researchgate.net/profile/Azdiar_Gazder" content="A. Gazder" %}
                    , {% include reference.html link="https://wwws.researchgate.net/profile/Frank_Niessen4" content="F. Niessen" %}
                </p>
                <p>
                    <i class="fa fa-home"></i>
                    {% include reference.html link="https://www.github.com/frankNiessen/phaseSegmenter" content="GitHub: frankNiessen/phaseSegmenter" %}
                </p>-->
            </div>
        </div>
    </div>
    <!-- proberly begin of second page -->
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
				<a href="https://stabix.readthedocs.io/en/latest/index.html">
					<img src="images/thumbnails/stabix_screenshot_centered.gif">
				</a>					
            </div>
            <div class="panel-body">
				<h4>
				{% include reference.html link="https://stabix.readthedocs.io/en/latest/index.html" content="Stabix" %}
				</h4>
				<p>
                    slip transfer analysis toolbox
                </p>
				<!--
                <p>
                    <i class="fa fa-user"></i>
                    {% include reference.html link="https://www.researchgate.net/profile/David_Mercier3" content="David Mercier" %}
                </p>
                <p>
                    <i class="fa fa-home"></i>
                    {% include reference.html link="https://stabix.readthedocs.io/en/latest/index.html" content="Read the Docs: Stabix" %}
                </p>
				-->
            </div>
        </div>
    </div>
    <!-- <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
                <img src="images/thumbnails/ORTools_logo_centered.png">
            </div>
            <div class="panel-body">
                <h4 title="orientation relationship tools">ORTools</h4>
                <p>
                    <i class="fa fa-user"></i>
                    {% include reference.html link="https://www.researchgate.net/profile/Azdiar_Gazder" content="Azdiar A. Gazder" %}
                    , {% include reference.html link="https://www.researchgate.net/profile/Frank_Niessen4" content="Frank Niessen" %}
                </p>
                <p>
                    <i class="fa fa-home"></i>
                    {% include reference.html link="https://www.github.com/frankNiessen/ORTools" content="GitHub: frankNiessen/ORTools" %}
                </p>
            </div>
        </div>
    </div> -->
    <!--<div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
                <img src="images/thumbnails/crystalAligner_logo_centered.png">
            </div>
            <div class="panel-body">
                <h4>crystalAligner</h4>
                <p>
                    <i class="fa fa-user"></i>
                    {% include reference.html link="https://www.researchgate.net/profile/Frank_Niessen4" content="Frank Niessen" %}
                </p>
                <p>
                    <i class="fa fa-home"></i>
                    {% include reference.html link="https://www.github.com/frankNiessen/crystalAligner" content="GitHub: frankNiessen/crystalAligner" %}
                </p>
            </div>
        </div>
    </div>-->
</div>


<!-- latest publications cards and requirements and licensing card-->
<div class="row">
    <div id="home-latest-publications" class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fas fa-file-pdf"></i>
                Latest&nbsp;Publications
                <i class="fa fa-angle-double-right"></i>
                {% include reference.html link="publications" content="All&nbsp;publications" %}
            </div>
            <div class="panel-body">
                <ul>
					<li>{% include reference.html link="https://www.sciencedirect.com/science/article/pii/S135964542300366X/pdfft?md5=cd5b4d579996e89cf4ba96bdee90fad4&pid=1-s2.0-S135964542300366X-main.pdf" content="Habit plane determination from reconstructed parent phase
    orientation maps" %}</li>
                    <li>{% include reference.html link="https://arxiv.org/pdf/2201.02103.pdf" content="The variant graph approach to improved parent grain reconstruction" %}</li>
                    <li>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/paper/parentGrain.pdf" content="Parent grain reconstruction from partially or fully transformed microstructures in MTEX" %}</li>
                    <li>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/paper/gazingAtCrystalBalls.pdf" content="Gazing at crystal balls - electron backscatter diffraction indexing and cross correlation on the sphere" %}</li>
                    <li>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/paper/denoising.pdf" content="Denoising of Crystal Orientation Maps" %}</li>
                </ul>
            </div>
        </div>
    </div>
    <div id="home-Licencing" class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-copyright"></i>
                Requirements and Licensing
            </div>
            <div class="panel-body">
                <ul>
                    <li>
                        MTEX is free and runs in standard Matlab. For GND and Taylor computation the optimization toolbox is required.
                    </li>
                    <li>
                        MTEX comes with binaries from the
                        {% capture ref_content %}{% include inline_image.html file="nfft_logo.png" %}{% endcapture %}
                        {% include reference.html link="https://www-user.tu-chemnitz.de/~potts/nfft/" content=ref_content %}
                        which build up the core of MTEX.
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
