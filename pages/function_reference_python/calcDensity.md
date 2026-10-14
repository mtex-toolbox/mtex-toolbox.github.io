---
title: 'calcDensity'
sidebar: function_reference_sidebar
permalink: calcDensity_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: calcDensity.html
status: Reference
---
{% raw %}
the density estimate of a sample: an ODF of orientations, a function on the sphere of
directions or axes, a function on the circle of angles or a density of real values;
MATLAB's calcDensity

## Syntax

The halfwidth selected by UCV:

```python
odf = calcDensity(ori)
```

A de la Vallee Poussin kernel of that halfwidth:

```python
odf = calcDensity(ori, halfwidth=5*degree)
```

A kernel of your own:

```python
odf = calcDensity(ori, kernel=SO3AbelPoissonKernel(halfwidth=10*degree))
```

Weighted by the grain areas:

```python
odf = calcDensity(grains.meanOrientation, weights=grains.area)
```

The orientations of a map, grouped by its grains:

```python
odf = calcDensity(ebsd)
```

The harmonic form:

```python
odf = calcDensity(ori, Fourier=True)
```

The harmonic form of order 16:

```python
odf = calcDensity(ori, harmonic=True, bandwidth=16)
```

Weighted directions:

```python
sF = calcDensity(v, kernel=psi, weights=w)
```

Axes:

```python
sF = calcDensity(v, halfwidth=10*degree, antipodal=True)
```

Angles, a function on the circle:

```python
f = calcDensity(rho, periodic=True)
```

Real values on an interval:

```python
f = calcDensity(x, range=[0, 1])
```

Orientations give a sum of kernels about them, the radial form up to 200 orientations and
the harmonic form above (or with a Dirichlet kernel, or for misorientations between two
crystal frames); harmonic=True or False decides. Without a kernel or a halfwidth the
halfwidth is selected from the sample by unbiased cross validation (calcKernel); the
orientations of a map are not independent, so a map is grouped by its grain ids when grains
were computed, and plain pixel orientations of a map without groups fall back to 10 degree
with a warning. NaN orientations are dropped, an empty list gives the uniform ODF.

Directions give the harmonic form of the point measure convolved with the kernel,
symmetrised by their frame. Numbers with periodic=True, sigma, kernel or antipodal are angles,
a density on the circle smoothed by a Gaussian of width sigma (Silverman's rule by default);
other numbers are real valued samples, one per row, whose density on the box range (the
minima in the first row, the maxima in the second) is a gridded interpolant: the diffusion
estimator in one dimension, the EM mixture in more (calcDensityReal).

The other keywords go to the estimator of the sample's kind: kernel, halfwidth, weights,
groups (the grain or group of every point, for the selected halfwidth) and bandwidth for
orientations and directions, harmonic for orientations, antipodal for directions and
angles, sigma for angles, range, bandwidth and rng for real values. MATLAB's 'order' is
bandwidth here, its flag 'Fourier' the keyword; the Bingham estimate is calcBinghamODF.

## Input

| | |
|---|---|
| `x` | orientation, vector3d, EBSD, or an array of angles or real values |

## Output

| | |
|---|---|
| `odf` | SO3FunRBF or SO3FunHarmonic |
| `sF` | S2FunHarmonic |
| `f` | S1FunHarmonic for angles, a griddedDensity for real values |

## Keywords

| | default | |
|---|---|---|
| `Fourier` | `False` | return orientations' density in harmonic form, MATLAB's flag 'Fourier' |

## See also

[calcKernel](EBSD.calcKernel_py.html), [calcBinghamODF](orientation.calcBinghamODF_py.html), [unimodalODF](unimodalODF_py.html), [interpolate](SO3VectorFieldHarmonic.interpolate_py.html), calcDensityReal

## Used on

[EBSD2ODF](EBSD2ODF_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html), [DensityEstimation](DensityEstimation_py.html), [OptimalKernel](OptimalKernel_py.html), [CSLBoundaries](CSLBoundaries_py.html), [SubGrainBoundaries](SubGrainBoundaries_py.html), [TiltAndTwistBoundaries](TiltAndTwistBoundaries_py.html), [EllipseBasedParameters](EllipseBasedParameters_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [Grain_dispersion_axes](Grain_dispersion_axes_py.html)

MATLAB's [calcDensity](calcDensity.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/density.py#L37">source</a></font>
{% endraw %}
