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

<div class="mx-form" markdown="1">

```python
E = oR.edges()
```

40 points along every edge.

</div>

<div class="mx-form" markdown="1">

```python
E = oR.edges(points=5)
```

Coarser chains.

</div>

## Input

| `oR` | orientationRegion |

## Keywords

| keyword | default | description |
|---|---|---|
| `points` | `40` | the number of points on each edge |
| `tol` | `1e-09` | the slack by which a parallel plane may miss the edge before it removes it |

## Output

| `E` | list of (points, 3) arrays, the axis times the angle; empty when the sector of axes has caps |

## See also

[plot](S1Grid.plot_py.html), [orientationRegion.maxAngle](orientationRegion.maxAngle_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L232">source</a></font>
{% endraw %}
