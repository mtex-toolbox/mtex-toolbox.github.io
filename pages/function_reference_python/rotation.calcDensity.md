---
title: 'rotation.calcDensity'
sidebar: function_reference_sidebar
permalink: rotation.calcDensity_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.calcDensity.html
status: Reference
---
{% raw %}
the density estimate of a sample: an ODF of orientations, a function on the sphere of
directions or axes, a function on the circle of angles or a density of real values

## Syntax

```python
calcDensity(ori)                          the halfwidth selected by UCV
calcDensity(ori, halfwidth=5*degree)      a de la Vallee Poussin kernel of that halfwidth
calcDensity(ebsd)                         the orientations of a map, grouped by its grains
calcDensity(v, kernel=psi, weights=w)     weighted directions
calcDensity(ori, Fourier=True)            the harmonic form
```

## Signature

```python
calcDensity(x, Fourier=False, **kwargs)
```

## Used on

[EBSD2ODF](EBSD2ODF_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html), [DensityEstimation](DensityEstimation_py.html), [OptimalKernel](OptimalKernel_py.html), [CSLBoundaries](CSLBoundaries_py.html), [SubGrainBoundaries](SubGrainBoundaries_py.html), [TiltAndTwistBoundaries](TiltAndTwistBoundaries_py.html), [EllipseBasedParameters](EllipseBasedParameters_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [Grain_dispersion_axes](Grain_dispersion_axes_py.html)

MATLAB's [rotation.calcDensity](rotation.calcDensity.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/density.py#L37">source</a></font>
{% endraw %}
