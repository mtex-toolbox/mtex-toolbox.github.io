---
title: 'S2FunTri.S2FunTri'
sidebar: function_reference_sidebar
permalink: S2FunTri.S2FunTri_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunTri.S2FunTri.html
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

## Signature

<div class="mx-form" markdown="1">

```python
S2FunTri(nodes, values=None)
```

</div>

MATLAB's [S2FunTri.S2FunTri](S2FunTri.S2FunTri.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funtri.py#L24">source</a></font>
{% endraw %}
