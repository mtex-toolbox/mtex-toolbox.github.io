---
title: 'l1TVFilter.l1TVFilter'
sidebar: function_reference_sidebar
permalink: l1TVFilter.l1TVFilter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: l1TVFilter.l1TVFilter.html
status: Reference
---
{% raw %}
the total variation filter of the orientations of a map, absolute in the data term and in
the differences between neighbours, which smooths noise and keeps sharp steps

## Syntax

<div class="mx-form" markdown="1">

```python
F = l1TVFilter()
```

Smoothing over four steps of the map.

</div>

<div class="mx-form" markdown="1">

```python
F = l1TVFilter(10)
```

Smoothing over a length in the map's units.

</div>

<div class="mx-form" markdown="1">

```python
F = l1TVFilter(alpha=0.1, threshold=10*degree)
```

The weight given, boundaries above 10 degree kept.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = smooth(ebsd, F)
```

The smoothed map.

</div>

## Description

The filtered orientations minimise the sum of the distances to the measured ones plus
alpha times the sum of the misorientations between neighbours, both as absolute values; an
absolute value keeps a step where a square, splineFilter, blurs it. It is
halfQuadraticFilter with l1DataFit and l1TV both on, solved by iteratively reweighted least
squares in the tangent space.

The smoothing is stated as a length, the wavelength damped to half its amplitude, from
which alpha follows on the lattice of the map, so one filter smooths alike on a coarse and
a fine map; alpha, when given, replaces it.

MATLAB's l1TVFilter takes alpha as its first argument and solves by a cyclic proximal
point iteration; here the first argument is the smoothing length.

## Keywords

| keyword | default | description |
|---|---|---|
| `smoothingLength` | `None` | the wavelength damped to half its amplitude, in the units of the map; four steps of the map when neither it nor alpha is given |
| `alpha` | `None` | the weight of the differences against the data, larger smoother |
| `threshold` | `15*degree` | the misorientation above which two neighbours are not smoothed together, a boundary the filter leaves alone |
| `eps` | `0.001` | the difference at which the penalty turns from a square into a line, in radians |
| `maxIter` | `100` | the bound on the reweighting steps |
| `tol` | `1.7453292519943296e-05` | the change of every orientation in a connected part below which its iteration stops, in radians |

## Output

| `F` | l1TVFilter, applied by smooth(ebsd, F) |

## References

- R. Bergmann, R.H. Chan, R. Hielscher, J. Persch, G. Steidl, Restoration of manifold-valued images by half-quadratic minimization, Inverse Problems and Imaging 10 (2016) 281-304

## See also

[smooth](smooth_py.html), [halfQuadraticFilter](halfQuadraticFilter_index_py.html), [splineFilter](splineFilter_index_py.html), [infimalConvolutionFilter](infimalConvolutionFilter_index_py.html), [EBSDDenoising](EBSDDenoising_py.html)

MATLAB's [l1TVFilter.l1TVFilter](l1TVFilter.l1TVFilter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/variational.py#L88">source</a></font>
{% endraw %}
