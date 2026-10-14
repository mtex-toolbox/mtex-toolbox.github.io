---
title: 'The class S2FunBingham'
sidebar: function_reference_sidebar
permalink: S2FunBingham_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunBingham_index.html
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

## Members

| [a](S2FunBingham.a_py.html) | the three orthonormal principal axes as vector3d, with a[i] paired with Z[i] |
| [bandwidth](S2FunBingham.bandwidth_py.html) | the bandwidth of the harmonic expansion, the preference maxS2Bandwidth |
| [CS](S2FunBingham.CS_py.html) | the frame the distribution lives in, its symmetry |
| [eval](S2FunBingham.eval_py.html) | the values of the density at directions, the mean over the symmetric copies of its axes |
| [fit](S2FunBingham.fit_py.html) | the Bingham distribution fitted to directions or axes, with the confidence ellipse of its modal axis |
| [mean](S2FunBingham.mean_py.html) | the mean value over the sphere, one: the distribution is normalised |
| [rotate](S2FunBingham.rotate_py.html) | the distribution turned by a rotation, its axes and its frame |
| [S2FunBingham](S2FunBingham.S2FunBingham_py.html) | an antipodally symmetric Bingham density on the unit sphere |
| [textureIndex](S2FunBingham.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |

## Used on

[S2Bingham](S2Bingham_py.html)

MATLAB's [S2FunBingham_index](S2FunBingham_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L446">source</a></font>
{% endraw %}
