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

<div class="mx-form" markdown="1">

```python
odf = calcDensity(ori)
```

The halfwidth selected by UCV.

</div>

<div class="mx-form" markdown="1">

```python
odf = calcDensity(ori, halfwidth=5*degree)
```

A de la Vallee Poussin kernel of that halfwidth.

</div>

<div class="mx-form" markdown="1">

```python
odf = calcDensity(ori, kernel=SO3AbelPoissonKernel(halfwidth=10*degree))
```

A kernel of your own.

</div>

<div class="mx-form" markdown="1">

```python
odf = calcDensity(grains.meanOrientation, weights=grains.area)
```

Weighted by the grain areas.

</div>

<div class="mx-form" markdown="1">

```python
odf = calcDensity(ebsd)
```

The orientations of a map, grouped by its grains.

</div>

<div class="mx-form" markdown="1">

```python
odf = calcDensity(ori, Fourier=True)
```

The harmonic form.

</div>

<div class="mx-form" markdown="1">

```python
odf = calcDensity(ori, harmonic=True, bandwidth=16)
```

The harmonic form of order 16.

</div>

<div class="mx-form" markdown="1">

```python
sF = calcDensity(v, kernel=psi, weights=w)
```

Weighted directions.

</div>

<div class="mx-form" markdown="1">

```python
sF = calcDensity(v, halfwidth=10*degree, antipodal=True)
```

Axes.

</div>

<div class="mx-form" markdown="1">

```python
f = calcDensity(rho, periodic=True)
```

Angles, a function on the circle.

</div>

<div class="mx-form" markdown="1">

```python
f = calcDensity(x, range=[0, 1])
```

Real values on an interval.

</div>

## Description

The kind of the sample decides the estimate:

- orientations: a sum of kernels, an SO3FunRBF, or an SO3FunHarmonic above 200 orientations
(kernel bandwidth at most 96), with a Dirichlet kernel or between two crystal frames;
harmonic=True or False decides instead.
- directions: an S2FunHarmonic, kernels convolved with the points.
- angles, numbers with periodic=True, sigma, kernel or antipodal: a density on the circle,
a Gaussian of width sigma, Silverman's rule by default.
- other numbers: one sample per row, a griddedDensity on the box range (minima in the first
row, maxima in the second), by calcDensityReal.

Without a kernel or a halfwidth, the halfwidth is selected by unbiased cross validation
(calcKernel). A map is grouped by its grain ids when grains were computed; its pixels
without groups, and fewer than two orientations, take 10 degrees, the former with a
warning. NaN entries are dropped; an empty sample gives the uniform density.

The other keywords go to the estimator: kernel, halfwidth, weights, groups and bandwidth
for orientations and directions, harmonic for orientations, antipodal for directions and
angles, sigma for angles, range, bandwidth and rng for real values.
MATLAB's 'order' is bandwidth; the Bingham estimate is calcBinghamODF.

## Input

| `x` | orientation, vector3d, EBSD, or an array of angles or real values |

## Keywords

| keyword | default | description |
|---|---|---|
| `Fourier` | `False` | return orientations' density in harmonic form, MATLAB's flag 'Fourier' |

## Output

| `odf` | SO3FunRBF or SO3FunHarmonic |
| `sF` | S2FunHarmonic |
| `f` | S1FunHarmonic for angles, a griddedDensity for real values |

## See also

[calcKernel](EBSD.calcKernel_py.html), [calcBinghamODF](orientation.calcBinghamODF_py.html), [unimodalODF](unimodalODF_py.html), [interpolate](SO3VectorFieldHarmonic.interpolate_py.html), calcDensityReal

## Used on

[EBSD2ODF](EBSD2ODF_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html), [DensityEstimation](DensityEstimation_py.html), [OptimalKernel](OptimalKernel_py.html), [CSLBoundaries](CSLBoundaries_py.html), [SubGrainBoundaries](SubGrainBoundaries_py.html), [TiltAndTwistBoundaries](TiltAndTwistBoundaries_py.html), [EllipseBasedParameters](EllipseBasedParameters_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [Grain_dispersion_axes](Grain_dispersion_axes_py.html)

MATLAB's [calcDensity](calcDensity.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/density.py#L37">source</a></font>
{% endraw %}
