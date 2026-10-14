---
title: 'The class S2FunTri'
sidebar: function_reference_sidebar
permalink: S2FunTri_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunTri_index.html
status: Reference
---
{% raw %}
interpolate sampled spherical data linearly over a triangulation.

## Syntax

<div class="mx-form" markdown="1">

```python
f = S2FunTri(directions, values)
f = S2FunTri(triangulation, values)
f = S2FunTri(lambda v: v.z**2)
```

</div>

## Description

The value within a spherical triangle is the barycentric interpolation of its three
vertex values. Duplicate directions are merged and their values averaged. Passing
a callable samples it on a grid of 1.5 degrees before constructing the triangulation.
The result can be evaluated with f(queryDirections).

This representation stores sample values rather than harmonic coefficients. Products,
powers and pointwise transforms operate at the vertices and interpolate the transformed
values between them. They can differ from applying the same transform after interpolation.

## Input

| `nodes` | vector3d directions, S2Triangulation, or a vectorised callable of directions |
| `values` | one row of sampled values per node; several columns represent several functions |

## Output

| `f` | S2FunTri |

## Properties

| `vertices` | unit directions of the triangulation |
| `values` | numeric array with one row per vertex and one column per function |
| `tri` | S2Triangulation defining the face connectivity |
| `frame` | reference frame carried by the vertices |

## See also

[vector3d.interp](vector3d.interp_py.html), [S2FunHarmonic](S2FunHarmonic_index_py.html), [S2Triangulation](S2Triangulation_index_py.html)

## Members

| [abs](S2FunTri.abs_py.html) | the absolute value of the function, taken at the vertices, again a function on the triangulation |
| [CS](S2FunTri.CS_py.html) | the frame of the vertices, MATLAB's sF.CS |
| [eval](S2FunTri.eval_py.html) | the values at the directions v, the barycentric mean of the values at the corners of the triangle each lies in |
| [frame](S2FunTri.frame_py.html) | the frame of the vertices |
| [mean](S2FunTri.mean_py.html) | estimate the spherical mean using Voronoi areas around the sample vertices |
| [min](S2FunTri.min_py.html) | the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima |
| [plot](S2FunTri.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plus](S2FunTri.plus_py.html) |  |
| [power](S2FunTri.power_py.html) |  |
| [rdivide](S2FunTri.rdivide_py.html) |  |
| [rotate](S2FunTri.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [S2FunTri](S2FunTri.S2FunTri_py.html) | interpolate sampled spherical data linearly over a triangulation |
| [sqrt](S2FunTri.sqrt_py.html) | take square roots at the vertices and interpolate those values linearly |
| [textureIndex](S2FunTri.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |
| [times](S2FunTri.times_py.html) |  |
| [uminus](S2FunTri.uminus_py.html) |  |
| [vertices](S2FunTri.vertices_py.html) | the vertices of the triangulation, the directions the values are given at |
| [volume](S2FunTri.volume_py.html) | the share of orientations within a radius of a centre: the integral of f over the ball, int_{angle(g, c) < r} f(g) dg, relative to the integral over all orientations |

MATLAB's [S2FunTri_index](S2FunTri_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funtri.py#L24">source</a></font>
{% endraw %}
