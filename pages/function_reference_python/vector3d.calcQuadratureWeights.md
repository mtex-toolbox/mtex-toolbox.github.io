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

<div class="mx-form" markdown="1">

```python
w = calcQuadratureWeights(r)
```

A regular grid exactly, scattered points by Voronoi areas.

</div>

<div class="mx-form" markdown="1">

```python
w = calcQuadratureWeights(r, method='harmonic')
```

The least norm correction that integrates every harmonic the count allows.

</div>

## Description

On a regular grid of rings, a polar ladder from the pole in equal steps, the weights are
the Clenshaw-Curtis weights of the rings, shared by their points. They are exact on the
sphere and, with the equator ring halved, on a hemisphere.

For scattered directions the method chooses:

- 'voronoi', the default and MATLAB's only method: the areas of the spherical Voronoi cells,
an axis list counted on both hemispheres, duplicates sharing a cell. No cell counts more
than twice the 80 % quantile of the areas, so isolated points do not dominate.
- 'harmonic': equal weights corrected by the least change that integrates every spherical
harmonic the number of points allows.

Where neither works, as for fewer than four distinct directions, the weights are equal.

## Input

| `r` | vector3d |

## Keywords

| keyword | default | description |
|---|---|---|
| `method` | `'voronoi'` | 'voronoi' or 'harmonic', for scattered directions |

## Output

| `w` | ndarray of the shape of r, summing to one |

## See also

[PoleFigure.mean](PoleFigure.mean_py.html), [S2FunHarmonic.quadrature](S2FunHarmonic.quadrature_py.html)

MATLAB's [vector3d.calcQuadratureWeights](vector3d.calcQuadratureWeights.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L964">source</a></font>
{% endraw %}
