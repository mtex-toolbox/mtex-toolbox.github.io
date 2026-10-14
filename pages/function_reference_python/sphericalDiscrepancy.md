---
title: 'sphericalDiscrepancy'
sidebar: function_reference_sidebar
permalink: sphericalDiscrepancy_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalDiscrepancy.html
status: Reference
---
{% raw %}
the discrepancy between two measures on the sphere, densities or weighted point sets in
any pairing: D_2, D_cap or a bandlimited L2 norm; MATLAB's S2Fun/discrepancy and
vector3d/discrepancy

## Syntax

<div class="mx-form" markdown="1">

```python
d = sphericalDiscrepancy(v, w)
```

D_2 of two point sets.

</div>

<div class="mx-form" markdown="1">

```python
d = sphericalDiscrepancy(v, w, weights=c, weights2=e)
```

Of two weighted point sets.

</div>

<div class="mx-form" markdown="1">

```python
d = sphericalDiscrepancy(f, v)
```

Of a density and a sample.

</div>

<div class="mx-form" markdown="1">

```python
d = sphericalDiscrepancy(v, w, 'L2', bandwidth=32, degreeWeights=lambda l: np.exp(-0.1 * l * (l + 1)))
```

A weighted harmonic norm.

</div>

<div class="mx-form" markdown="1">

```python
d, info = sphericalDiscrepancy(v, w, 'D_cap', numCenters=4097, info=True)
```

The largest cap difference and its cap.

</div>

## Description

With C(m, t) = {x : m.x >= t} the spherical caps and nu = mu - eta the difference of the
two measures, the metric is one of:

- 'D_2', the default: the root of the mean of |nu(C(m, t))|^2 over all caps, by Stolarsky's
identity nu(S2)^2 - 1/4 int int |x - y| dnu dnu. Point sets are taken exactly, at a cost
quadratic in the number of points; functions through their harmonic expansion.
- 'D_cap': the largest |nu(C(m, t))|, found by a finite search over centres and heights.
It is a lower bound; raise numCenters and numHeights until it settles.
- 'L2', also 'E_L': the root of the weighted sum of the squared harmonic coefficients of nu
up to the bandwidth.

All three count a difference in total mass: two densities differing only in their integral
have a positive discrepancy. Point weights are normalised to sum one, and a point set
compared with a function takes the function's integral (one if that vanishes). An antipodal
point set puts half its mass at +x and half at -x.

MATLAB's metric 'kernel', the objective of optimalSample, is taken by discrepancy, not here.

## Input

| `a, b` | S2Fun, a real scalar density, or vector3d, a point set |
| `metric` | 'D_2', 'D_cap' or 'L2' (also 'E_L') |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | the non negative weights of the points of a |
| `weights2` | `None` | the weights of the points of b |
| `bandwidth` | `None` | the harmonic degree of the projection of the functions and of the L2 moments; by default the largest bandwidth of the functions, 128 for two point sets |
| `degreeWeights` | `None` | the L2 weights of the degrees 0..L, an array or a function of the degree; ones by default, degree zero weighting the difference in total mass |
| `numCenters` | `2049` | the number of cap centres D_cap searches, besides the coordinate axes and the points |
| `numHeights` | `257` | the number of heights D_cap searches, besides the jumps at the points |
| `centers` | `None` | vector3d, the cap centres D_cap searches instead |
| `squared` | `False` | return the square of D_2 and L2 |
| `info` | `False` | return the details too, as a second output |

## Output

| `d` | the discrepancy, its square with squared=True |
| `info` | with info=True: method, isExact, bandwidth, and for D_cap the cap found, center, height, closed (False for the limit of open caps), signedDifference |

## See also

[discrepancy](S2Fun.discrepancy_py.html), [rotationalDiscrepancy](rotationalDiscrepancy_py.html), [optimalSample](S2Fun.optimalSample_py.html)

MATLAB's [sphericalDiscrepancy](sphericalDiscrepancy.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/discrepancy.py#L288">source</a></font>
{% endraw %}
