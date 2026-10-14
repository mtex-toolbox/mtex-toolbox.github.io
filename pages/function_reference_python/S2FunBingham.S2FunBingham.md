---
title: 'S2FunBingham.S2FunBingham'
sidebar: function_reference_sidebar
permalink: S2FunBingham.S2FunBingham_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunBingham.S2FunBingham.html
status: Reference
---
{% raw %}
an antipodally symmetric Bingham density on the unit sphere

## Syntax

<div class="mx-form" markdown="1">

```python
f = S2FunBingham([-20, -10, 0])
```

Concentrated about the z axis.

</div>

<div class="mx-form" markdown="1">

```python
f = S2FunBingham(Z, a)
```

Concentrations along supplied principal axes.

</div>

<div class="mx-form" markdown="1">

```python
f = S2FunBingham.fit(v)
```

Estimate the distribution from measured axes.

</div>

## Description

For a unit direction v the density is proportional to `exp(sum_i Z[i] * dot(v, a[i])**2)`.
The normalisation gives mean one over the sphere, or integral `4*pi` with respect to surface
area. Directions v and -v have equal density. Equal parameters give the uniform density;
one largest parameter gives an axial peak, and two equal largest parameters give a girdle.
Adding a common constant to Z leaves the density unchanged.

If a frame is supplied, evaluation averages over its symmetry-equivalent axes. Parameters
need not be sorted: each Z[i] belongs to a[i]. The fit method returns them in ascending order.

## Input

| `Z` | three concentration parameters |
| `a` | three orthonormal vector3d axes, or a 3-by-3 matrix with axes as columns; None selects the Cartesian axes; a referenceFrame can be supplied here instead |
| `frame` | referenceFrame of the directions and their symmetry, by default that of a |

## Output

| `f` | S2FunBingham; evaluate by f(v) or f.eval(v) |

## Properties

| `Z` | concentration along each principal axis |
| `a` | three principal axes as vector3d |
| `frame` | coordinate frame and symmetry |
| `antipodal` | True: the density describes unoriented axes |

## See also

[S2FunBingham.fit](S2FunBingham.fit_py.html), [calcDensity](calcDensity_py.html), [BinghamODF](BinghamODF_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S2FunBingham(Z, a=None, frame=None)
```

</div>

## Used on

[S2Bingham](S2Bingham_py.html)

MATLAB's [S2FunBingham.S2FunBingham](S2FunBingham.S2FunBingham.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L446">source</a></font>
{% endraw %}
