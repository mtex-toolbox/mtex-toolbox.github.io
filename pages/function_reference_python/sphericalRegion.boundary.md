---
title: 'sphericalRegion.boundary'
sidebar: function_reference_sidebar
permalink: sphericalRegion.boundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.boundary.html
status: Reference
---
{% raw %}
A method of [sphericalRegion](sphericalRegion_index_py.html).

the boundary as arcs, one vector3d per arc: each circle is cut at the corners on it and
the pieces whose midpoint lies inside are kept

## Syntax

Points every degree along each arc:

```python
arcs = sR.boundary()
```

Coarser:

```python
arcs = sR.boundary(resolution=5*degree)
```

## Input

| | |
|---|---|
| `sR` | sphericalRegion |

## Output

| | |
|---|---|
| `arcs` | list of vector3d, the points along every arc of the boundary |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `1*degree` | the largest spacing of the points along an arc |

## See also

[sphericalRegion.vertices](sphericalRegion.vertices_py.html), [plot](S1Grid.plot_py.html)

MATLAB's [sphericalRegion.boundary](sphericalRegion.boundary.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L284">source</a></font>
{% endraw %}
