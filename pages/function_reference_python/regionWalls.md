---
title: 'regionWalls'
sidebar: function_reference_sidebar
permalink: regionWalls_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the walls of a region cut down to an axis sector: the plane of every boundary arc of the
sector from the identity out to the surface, one polygon per arc

## Syntax

<div class="mx-form" markdown="1">

```python
W = regionWalls(fundamentalRegion(cs, cs))
```

The walls of a misorientation region.

</div>

<div class="mx-form" markdown="1">

```python
W = regionWalls(fundamentalRegion(cs, cs), resolution=5*degree)
```

With coarser arcs.

</div>

## Description

A region whose axes are not cut down to a sector has no walls and gives an empty list.

## Input

| `oR` | orientationRegion |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `2*degree` | the spacing of the points along the boundary arcs of the sector |

## Output

| `W` | list of (k, 3) arrays, every polygon starting at the origin |

## See also

[regionSurface](regionSurface_py.html), [regionLines](regionLines_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L165">source</a></font>
{% endraw %}
