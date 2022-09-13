---
title: MTEX Toolbox
keywords: homepage, home, news, featured examples
last_updated: 30-Jun-2022
hide_sidebar: true
permalink: index
toc: false
---

<div id="grid-requirements-licensing" class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-body">
                MTEX is a free Matlab toolbox for analyzing and modeling crystallographic textures by means of EBSD or pole figure data. It is developed on a free and opensource basis by an interdisciplinary <a href="people">team</a> of material scientists,
                geologists and mathematicians.
                <br>
                <img src="https://visitor-badge.laobi.icu/badge?page_id=MTEXHomePage&right_color=%23149983&query_only">
                <!-- <img src="https://visitor-badge.laobi.icu/badge?page_id=MTEXHomePage&right_color=%23149983"> -->
            </div>
        </div>
    </div>
</div>

<div id="grid-news-paper" class="row">
    <div class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                News
                <i class="fa fa-angle-double-right"></i>&nbsp;{% include reference.html link="changelog" content="Complete&nbsp;changelog" %}
            </div>
            <div class="panel-body">
                <ul>
                    <li>
                        MTEX 5.8.1 released:
                        ・ {% include reference.html link="https://github.com/mtex-toolbox/mtex/releases/download/mtex-5.8.1/mtex-5.8.1.zip" content="Download" download=true %}
                        ・ {% include reference.html link="changelog" content="Release Notes" %}
                        ・ {% include reference.html link="download" content="Installation" %}
                    </li>
                    <li>
                        MTEX Online Workshop 2022:
                        ・ {% include reference.html link="https://github.com/mtex-toolbox/mtex/discussions/1314" content="Announcement" %}
                        ・ {% include reference.html link="workshop22?" content="Homepage" %}
                    </li>
                    <li>
                        Manual {% include reference.html link="https://www.researchgate.net/publication/353330126_Getting_Started_with_MTEX_for_EBSD_analysis_Rev6" content="Getting Started with MTEX for EBSD Analysis" %} by J. Hiscocks released
                    </li>
                    <li>
                        MTEX 5.7.0 released:
                        ・ {% include reference.html link="https://github.com/mtex-toolbox/mtex/releases/download/mtex-5.7.0/mtex-5.7.0.zip" content="Download" download=true %}
                        ・ {% include reference.html link="changelog" content="Release Notes" %}
                        ・ {% include reference.html link="download" content="Installation" %}
                    </li>
                    <li>
                        MTEX GUI 2.4 by J. Hiscocks released:
                        ・ {% include reference.html link="https://www.researchgate.net/profile/Jessica_Hiscocks/publication/341722714_MTEX_GUI_3pt4-_An_updated_graphical_interface_for_MTEX/data/5ed1b00e299bf1c67d274ede/MTEX-GUI-3pt4.zip" content="Download" download=true %}
                        ・ {% include reference.html link="https://www.researchgate.net/publication/341722714_MTEX_GUI_3pt4-_An_updated_graphical_interface_for_MTEX" content="Announcment" %}
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Latest Publications
                <i class="fa fa-angle-double-right"></i>&nbsp;{% include reference.html link="publications" content="All&nbsp;publication" %}
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
</div>

<div id="grid-requirements-licensing" class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Featured&nbsp;Examples
                <i class="fa fa-angle-double-right"></i>&nbsp;{% include reference.html link="function_reference" content="Function&nbsp;Reference" %}
                &amp;&nbsp;{% include reference.html link="documentation" content="Documentation" %}
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
                <img src="images/featured-examples_GrainBoundaries.jpg">
            </div>
            <div class="panel-body">
                <h4>Grain Boundaries</h4>
                <p>In this section we explain how to extract specific grain boundaries.</p>
                {% include reference.html link="BoundarySelect.html" content="Learn More" class="btn btn-primary" %}
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
                <img src="images/featured-examples_PoleFigures.jpg">
            </div>
            <div class="panel-body">
                <h4>Pole Figures</h4>
                <p>By default MTEX plots pole figures by drawing a circle at every measurement position of a pole figure and coloring it corresponding to the measured intensity.</p>
                {% include reference.html link="PoleFigurePlot.html" content="Learn More" class="btn btn-primary" %}
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
                <img src="images/featured-examples_TensorAverages.jpg">
            </div>
            <div class="panel-body">
                <h4>Tensor Averages</h4>
                <p>MTEX offers several ways to compute average material tensors from ODFs or EBSD data.</p>
                {% include reference.html link="TensorAverage.html" content="Learn More" class="btn btn-primary" %}
            </div>
        </div>
    </div>
</div>

<div id="grid-community-addons" class="row">
    <div class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">Community</div>
            <div class="panel-body">
                <ul>
                    <li>
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex/discussions" content="MTEX forum" %}
                        - Questions, Discussions, Announcements.
                    </li>
                    <li>
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex/issues" content="report issues" %}
                        - Every bug report is welcome.
                    </li>
                    <li>
                        {% include reference.html link="https://gist.github.com/search?q=%23mtexScript&s=updated&o=desc" content="community scripts" %}
                        - see how other MTEX users have utilized MTEX. Click {% include reference.html link="scripts" content="here" %} to see how you can share your scripts.
                    </li>
                    <li>
                        {% include reference.html link="https://github.com/mtex-toolbox/mtex" content="contribute" %}
                        - MTEX is open source and adding new features is more simple then you might think.
                    </li>
                    <li>
                        {% include reference.html link="https://www.researchgate.net/project/MTEX-free-crystallographic-texture-analysis-software" content="Researchgate Project" %}
                    </li>
                    <li>
                        {% include reference.html link="videos" content="user videos" %} explaining MTEX
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Addons
                <i class="fa fa-angle-double-right"></i>&nbsp;{% include reference.html link="addons" content="MTEX&nbsp;Based&nbsp;Toolboxes" %}
            </div>
            <div class="panel-body">
                <ul>
                    <li>MTEX GUI</li>
                    <li>MTEX2Gmsh</li>
                    <li>Stabix</li>
                    <li>crystalAligner</li>
                    <li>ORTools</li>
                    <li>phaseSegmenter</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div id="grid-requirements-licensing" class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Requirements and Licensing</div>
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