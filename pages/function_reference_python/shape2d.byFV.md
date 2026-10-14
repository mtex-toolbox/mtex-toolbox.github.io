---
title: 'shape2d.byFV'
sidebar: function_reference_sidebar
permalink: shape2d.byFV_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: shape2d.byFV.html
status: Reference
---
{% raw %}
A method of [shape2d](shape2d_index_py.html).

the outline of a set of segments laid end to end by direction, the characteristic shape;
MATLAB's shape2d.byFV

## Syntax

In the xy plane:

```python
cShape = shape2d.byFV(gB.F, gB.V)
```

In the plane of a map:

```python
cShape = shape2d.byFV(gB.F, gB.V, plane=gB.plane, frame=gB.frame)
```

Every segment and its antipode, sorted by the angle of its direction and summed up, give a
closed, convex and centrally symmetric outline centred at the origin. An outline of more
than nmax vertices is sampled down to nmax. The plane and frame keywords go to shape2d.

## Input

| | |
|---|---|
| `F` | (n, 2) int array, the vertex indices of every segment |
| `V` | (m, 2) or (m, 3) array of the vertices |

## Output

| | |
|---|---|
| `cShape` | shape2d |

## Keywords

| | default | |
|---|---|---|
| `nmax` | `1024` | the largest number of vertices of the outline |

## See also

[grainBoundary.characteristicShape](grainBoundary.characteristicShape_py.html), [shape2d.byRhoTheta](shape2d.byRhoTheta_py.html)

MATLAB's [shape2d.byFV](shape2d.byFV.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L436">source</a></font>
{% endraw %}
