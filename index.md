---
title: false
keywords: Homepage, home, news, featured examples, mtex toolbox, community, featured addons, documentation, latest publications, requirements, licensing, licencing
last_updated: 14-Sep-2022
hide_sidebar: true
permalink: index
toc: false
---

<strong>MTEX</strong> is a free Matlab toolbox for analyzing and modeling crystallographic textures by means of EBSD or pole figure data. It is developed on a free and opensource basis by an interdisciplinary
{% include reference.html link="people" content='<i class="fa fa-group"></i> team' %}
of material scientists, geologists and mathematicians.
<br>
<img src="https://visitor-badge.laobi.icu/badge?page_id=MTEXHomePage&right_color=%23149983&query_only">
<!-- <img src="https://visitor-badge.laobi.icu/badge?page_id=MTEXHomePage&right_color=%23149983"> -->

<div class="row">
    <div id="home-news" class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-newspaper-o"></i>
                News
                <i class="fa fa-angle-double-right"></i>
                {% include reference.html link="changelog" content="Complete&nbsp;changelog" %}
            </div>
            <div class="panel-body">
                <ul>
                    <li>
                        9/22 &minus; newly designed homepage
                    </li>
                    <li>
                        3/22 &minus; addon 
                        {% include reference.html link="https://github.com/ORTools4MTEX/ORTools" content="ORTools" %}
                        for parent grain reconstruction                         
                    </li>                    
                    <li>
                        3/22 &minus;
                        {% include reference.html link="https://www.researchgate.net/publication/353330126_Getting_Started_with_MTEX_for_EBSD_analysis_Rev6" content="MTEX GUI 3.5" %}
                        by 
                        {% include reference.html link="https://www.researchgate.net/profile/Jessica-Hiscocks" content="J. Hiscocks" %}
                    </li>
                    <li>
                        3/22 &minus;
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex/releases/download/mtex-5.8.1/mtex-5.8.1.zip" content="MTEX 5.8.1" download=true %}
                        released:
                        {% include reference.html link="changelog#1" content="Release Notes" %}
                    </li>
                    <li>
                        3/22 &minus;
                        {% include reference.html link="workshop22?" content="MTEX Online Workshop" %}:
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex/discussions/1314" content="Announcement" %}
                    </li>
                    <li>
                        7/21 &minus;
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
                <i class="fa fa-comments-o"></i>
                Community
            </div>
            <div class="panel-body">
                <ul>
                    <li>
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex/discussions" content="Forum" %}
                        - Questions, Discussions, Announcements.
                    </li>
                    <li>
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex/issues" content="Bugs" %}
                        - Every bug report is welcome.
                    </li>
                    <li>
                        {% include reference.html link="https://gist.github.com/search?q=%23mtexScript&s=updated&o=desc" content="community scripts" %}
                        - see how other MTEX users have utilized MTEX.
                    </li>
                    <li>
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex" content="contribute" %}
                        - MTEX is open source and adding new features is more simple then you might think.
                    </li>
                    <li>
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex" content='<i class="fa fa-github"></i> GitHub Repository' %}
                        and
                        {% include reference.html link="https://www.researchgate.net/project/MTEX-free-crystallographic-texture-analysis-software" content="ResearchGate Project" %}
                    </li>
                    <li>
                        {% include reference.html link="videos" content="Videos" %} explaining MTEX
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div id="home-documentation" class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-book"></i>
                Documentation
                <i class="fa fa-angle-double-right"></i>
                {% include reference.html link="documentation" content="All&nbsp;Topics" %}
                | {% include reference.html link="function_reference" content="Function&nbsp;References" %}
                | {% include reference.html link="download#installation" content="Installation" no_icon=true %}
                | {% include reference.html link="examples" content="Examples" %}
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
                <img src="images/thumbnails/GrainTutorial.jpg">
            </div>
            <div class="panel-body">
                <h4>Grain Tutorial</h4>
                <p>A quick guide through the grain reconstruction capabilities of MTEX.</p>
                {% include reference.html link="GrainTutorial.html" content="Learn More" class="btn btn-primary" %}
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
                <img src="images/thumbnails/EBSDDenoising.jpg">
            </div>
            <div class="panel-body">
                <h4>Denoising Orientation Maps</h4>
                <p>In this section we demonstrate how random errors can be significantly reduced using denoising techniques.</p>
                {% include reference.html link="EBSDDenoising.html" content="Learn More" class="btn btn-primary" %}
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
                <img src="images/thumbnails/MaParentGrainReconstruction.jpg">
            </div>
            <div class="panel-body">
                <h4>Martensite Parent Grain Reconstruction</h4>
                <p>Here we demonstrate the tools MTEX offers to reconstruct a parent austenite phase from a measured martensite phase.</p>
                {% include reference.html link="MaParentGrainReconstruction.html" content="Learn More" class="btn btn-primary" %}
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div id="home-latest-publications" class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-file-pdf-o"></i>
                Latest&nbsp;Publications
                <i class="fa fa-angle-double-right"></i>
                {% include reference.html link="publications" content="All&nbsp;publications" %}
            </div>
            <div class="panel-body">
                <ul>
                    <li>{% include reference.html link="https://arxiv.org/pdf/2201.02103.pdf" content="The variant graph approach to improved parent grain reconstruction" %}</li>
                    <li>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/paper/parentGrain.pdf" content="Parent grain reconstruction from partially or fully transformed microstructures in MTEX" %}</li>
                    <li>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/paper/gazingAtCrystalBalls.pdf" content="Gazing at crystal balls - electron backscatter diffraction indexing and cross correlation on the sphere" %}</li>
                    <li>{% include reference.html link="https://www-user.tu-chemnitz.de/~rahi/paper/denoising.pdf" content="Denoising of Crystal Orientation Maps" %}</li>
                </ul>
            </div>
        </div>
    </div>
    <div id="home-addons" class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-code-fork"></i>
                Featured&nbsp;Addons
                <i class="fa fa-angle-double-right"></i>
                {% include reference.html link="addons" content="All&nbsp;Toolboxes" %}
            </div>
            <div class="panel-body">
                <ul>
                    <li>{% include reference.html link="addons#addons-mtex-gui" content="MTEX GUI" %}</li>
                    <li>{% include reference.html link="addons#addons-mtex2gmsh" content="MTEX2Gmsh" %}</li>
                    <li>{% include reference.html link="addons#addons-stabix" content="Stabix" %}</li>
                    <li>{% include reference.html link="addons#addons-crystal-aligner" content="crystalAligner" %}</li>
                    <li>{% include reference.html link="addons#addons-or-tools" content="ORTools" %}</li>
                    <li>{% include reference.html link="addons#addons-phase-segmenter" content="phaseSegmenter" %}</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div id="home-requirements-and-licensing" class="col-md-12">
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
