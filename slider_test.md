---
title: Image Slider Test
search: exclude
permalink: slider_test
toc: false

image_sliders_load_all: true
image_sliders:
  - slider1
  - slider2
---

<div id="grid-featured-examples" class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading">Featured Examples (1)</div>
      <div class="panel-body">
        {% include slider.html selector="slider1" %}
        <script>new IdealImageSlider.Slider('#slider1').start();</script>
      </div>
    </div>
  </div>
</div>

<div id="grid-featured-examples" class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading">Featured Examples (2)</div>
      <div class="panel-body">
        <div class="ideal-image-slider iis-effect-fade iis-has-bullet-nav iis-has-captions" id="slider2" style="height: 351px;">
          <a aria-hidden="false" class="iis-slide iis-current-slide" data-actual-height="350" data-actual-width="350" data-src-2x="" data-src="https://fabianbartl.github.io/mtex-toolbox/images/AnisotropicTheory_01.png" role="tabpanel" style="transition-duration: 700ms; background-image: url('images/featured-examples_GrainBoundaries.jpg');" title="title 1">
            <div class="iis-caption">
              <div class="iis-caption-title">Balloons!</div>
              <div class="iis-caption-content">This slider has caption titles</div>
            </div>
          </a>
          <a aria-hidden="true" class="iis-slide iis-next-slide" data-actual-height="350" data-actual-width="350" data-src-2x="" data-src="https://fabianbartl.github.io/mtex-toolbox/images/AnisotropicTheory_02.png" role="tabpanel" style="transition-duration: 700ms; background-image: url('images/featured-examples_PoleFigures.jpg');" title="AnisotropicTheory 2">
            <div class="iis-caption">
              <div class="iis-caption-title">This slider uses the fade effect</div>
              <div class="iis-caption-content">Instead of the default slide effect</div>
            </div>
          </a>
          <a aria-hidden="true" class="iis-slide iis-previous-slide" data-actual-height="479" data-actual-width="297" data-src-2x="" data-src="https://fabianbartl.github.io/mtex-toolbox/images/AnisotropicTheory_03.png" href="https://fabianbartl.github.io/mtex-toolbox/AnisotropicTheory.html" role="tabpanel" style="transition-duration: 700ms; background-image: url('images/featured-examples_TensorAverages.jpg');" title="AnisotropicTheory 3">
            <div class="iis-caption">
              <div class="iis-caption-title">Last image had no caption!</div>
              <div class="iis-caption-content">Also, this image has no link</div>
            </div>
          </a>
        </div>
        <script>new IdealImageSlider.Slider('#slider2').start();</script>
      </div>
    </div>
  </div>
</div>

<div id="grid-featured-examples" class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading">Featured Examples (3)</div>
      <div class="panel-body">
        <div class="row">
          <div class="panel panel-default text-center">
            <div class="panel-heading">
              {% include slider.html selector="slider1" %}
              <script>new IdealImageSlider.Slider('#slider1').start();</script>
            </div>
            <div class="panel-body">
              <h4>Getting started</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
              <a href="tag_getting_started.html" class="btn btn-primary">Learn More</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="grid-requirements-licensing" class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        Featured Examples
        <i class="fa fa-angle-double-right"></i>&nbsp;<a href="function_reference">Function Reference</a>&nbsp;&amp;&nbsp;<a href="documentation">Documentation</a>
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
        <a href="BoundarySelect.html" class="btn btn-primary">Learn More</a>
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
        <a href="PoleFigurePlot.html" class="btn btn-primary">Learn More</a>
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
        <a href="TensorAverage.html" class="btn btn-primary">Learn More</a>
      </div>
    </div>
  </div>
</div>
