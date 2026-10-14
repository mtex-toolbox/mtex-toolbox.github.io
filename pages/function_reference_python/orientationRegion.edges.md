---
title: 'orientationRegion.edges'
sidebar: function_reference_sidebar
permalink: orientationRegion.edges_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientationRegion](orientationRegion_index_py.html).

the edges of the region, each a chain of points in axis angle coordinates in radians:
every pair of planes meets in a line of Rodrigues space, kept where the other planes
allow it; an open region is cut at a turn of nearly 180 degrees

## Syntax

40 points along every edge:

```python
E = oR.edges()
```

Coarser chains:

```python
E = oR.edges(points=5)
```

## Input

| | |
|---|---|
| `oR` | orientationRegion |

## Output

| | |
|---|---|
| `E` | list of (points, 3) arrays, the axis times the angle; empty when the sector of axes has caps |

## Keywords

| | default | |
|---|---|---|
| `points` | `40` | the number of points on each edge |
| `tol` | `1e-09` | the slack by which a parallel plane may miss the edge before it removes it |

## See also

[plot](S1Grid.plot_py.html), [orientationRegion.maxAngle](orientationRegion.maxAngle_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L232">source</a></font>
{% endraw %}
