---
title: 'ellipsoids3d'
sidebar: function_reference_sidebar
permalink: ellipsoids3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
ellipsoids as one polygon mesh of a scene3d; the surfaces plotEllipsoid draws, MATLAB's
plotEllipsoid

## Syntax

<div class="mx-form" markdown="1">

```python
mesh = ellipsoids3d(center, a, b, c)
```

Light blue ellipsoids.

</div>

<div class="mx-form" markdown="1">

```python
mesh = ellipsoids3d(center, a, b, c, color=[[1, 0, 0], [0, 0, 1]], n=12, m=6)
```

A colour each, coarser.

</div>

## Description

Every ellipsoid is the set center + cos(theta) a + sin(theta) (sin(rho) b + cos(rho) c),
divided into quadrilaterals along n longitudes rho and m latitudes theta; a, b and c are
the half axes as vectors, as principalComponents of 3D grains returns them.

## Input

| `center` | array (k, 3), the centres |
| `a, b, c` | arrays (k, 3), the three half axes of every ellipsoid |

## Keywords

| keyword | default | description |
|---|---|---|
| `color` | `'lightblue'` | one colour for all, a name or an RGB triple, or one RGB row per ellipsoid |
| `edgeAlpha` | `0.25` | the opacity of the edges of the quadrilaterals |
| `n` | `24` | the number of longitudes |
| `m` | `12` | the number of latitudes |

## Output

| `mesh` | mesh3d, the surfaces of all ellipsoids |

## See also

[plotEllipsoid](plotEllipsoid_py.html), [scene3d](scene3d_index_py.html), [arrows3d](arrows3d_py.html), [Grains3DProperties](Grains3DProperties_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/scene3d.py#L206">source</a></font>
{% endraw %}
