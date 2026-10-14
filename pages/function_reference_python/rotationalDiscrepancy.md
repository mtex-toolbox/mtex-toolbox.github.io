---
title: 'rotationalDiscrepancy'
sidebar: function_reference_sidebar
permalink: rotationalDiscrepancy_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotationalDiscrepancy.html
status: Reference
---
{% raw %}
the discrepancy between two measures on SO(3), densities or weighted orientation sets in
any pairing: D_2, D_ball or a bandlimited L2 norm; MATLAB's SO3Fun/discrepancy and
rotation/discrepancy

## Syntax

D_2 of two orientation sets:

```python
d = rotationalDiscrepancy(ori1, ori2)
```

Of a density and a weighted sample:

```python
d = rotationalDiscrepancy(odf, ori, weights=c)
```

The squared bandlimited norm:

```python
d = rotationalDiscrepancy(ori1, ori2, 'L2', bandwidth=16, squared=True)
```

The largest ball difference and its ball:

```python
d, info = rotationalDiscrepancy(odf, ori, 'D_ball', numCenters=4097, info=True)
```

With B(C, r) = {R : angle(C, R) <= r} the balls of SO(3) and nu = mu - eta the difference
of the two measures, D_ball is sup |nu(B(C, r))|, D_2 the root of the integral of
|nu(B(C, r))|^2 over the centres (normalised Haar measure) and the radii (sin(r) dr),
which Stolarsky's identity turns into nu(SO3)^2 / 2 - 1/(2 sqrt(2) pi) int int |R - S|_F
dnu dnu, and L2 the root of the sum of the squared Wigner moments of nu through the
bandwidth. All three count a difference in total mass: an ODF of mean one (integral 8
pi^2) and the probability density of the same texture differ by that factor.

Point weights are normalised to sum one; an orientation set compared with a function takes
the function's integral, and mass one if that vanishes. An orientation is the uniform
measure on its orbit of symmetrically equivalent rotations, a bare rotation one atom.
D_2 keeps the atoms exact at every bandwidth, the functions through their harmonic
projection. D_ball is a finite search, a lower bound, info.isExact False; SO(3) is three
dimensional, so raise numCenters and numRadii until it settles. MATLAB's metric 'kernel',
the objective of optimalSample, is taken by discrepancy, not here.

## Input

| | |
|---|---|
| `a, b` | SO3Fun, a real scalar density, or rotation and orientation, a sample |
| `metric` | 'D_2', 'D_ball' or 'L2' (also 'E_L') |

## Output

| | |
|---|---|
| `d` | the discrepancy, its square with squared=True |
| `info` | with info=True: method, isExact, bandwidth, and for D_ball the ball found, center, radius, closed (False for the limit of open balls), signedDifference |

## Keywords

| | default | |
|---|---|---|
| `weights` | `None` | the non negative weights of the orientations of a |
| `weights2` | `None` | the weights of the orientations of b |
| `bandwidth` | `None` | the harmonic degree of the projection of the functions and of the L2 moments; by default the largest bandwidth of the functions, 64 for two samples |
| `degreeWeights` | `None` | the L2 weights of the degrees 0..L, an array or a function of the degree; ones by default, degree zero weighting the difference in total mass |
| `numCenters` | `2049` | the number of ball centres D_ball searches, besides the identity and the atoms |
| `numRadii` | `257` | the number of radii D_ball searches, besides the jumps at the atoms |
| `centers` | `None` | rotation, the ball centres D_ball searches instead |
| `squared` | `False` | return the square of D_2 and L2 |
| `info` | `False` | return the details too, as a second output |

## See also

[discrepancy](S2Fun.discrepancy_py.html), [sphericalDiscrepancy](sphericalDiscrepancy_py.html), [optimalSample](S2Fun.optimalSample_py.html)

MATLAB's [rotationalDiscrepancy](rotationalDiscrepancy.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/discrepancy.py#L528">source</a></font>
{% endraw %}
