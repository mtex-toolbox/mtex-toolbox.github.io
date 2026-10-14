---
title: 'vector3d.calcQuadratureWeights'
sidebar: function_reference_sidebar
permalink: vector3d.calcQuadratureWeights_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.calcQuadratureWeights.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

weights that integrate a function from samples at the directions, summing to one; MATLAB's
calcQuadratureWeights

## Syntax

A regular grid exactly, scattered points by Voronoi areas:

```python
w = calcQuadratureWeights(r)
```

The least norm correction that integrates every harmonic the count allows:

```python
w = calcQuadratureWeights(r, method='harmonic')
```

On a regular grid of rings (a polar ladder from the pole in equal steps) the weights are the
Clenshaw-Curtis weights of the rings shared by their points, exact on the sphere and, with
the equator ring halved, on a hemisphere. Scattered directions take the areas of their
spherical Voronoi cells (MATLAB's only method), an axis list counted on both hemispheres,
duplicates sharing a cell; method='harmonic' instead corrects equal weights by the least norm
change that integrates every spherical harmonic the number of points allows. Where neither
works the weights are equal.

## Input

| | |
|---|---|
| `r` | vector3d |

## Output

| | |
|---|---|
| `w` | ndarray of the shape of r, summing to one |

## Keywords

| | default | |
|---|---|---|
| `method` | `'voronoi'` | 'voronoi' or 'harmonic', for scattered directions |

## See also

[PoleFigure.mean](PoleFigure.mean_py.html), [S2FunHarmonic.quadrature](S2FunHarmonic.quadrature_py.html)

MATLAB's [vector3d.calcQuadratureWeights](vector3d.calcQuadratureWeights.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L966">source</a></font>
{% endraw %}
