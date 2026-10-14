---
title: 'mapExtent'
sidebar: function_reference_sidebar
permalink: mapExtent_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the extent of what a map plot has to show, on the screen: (xlo, xhi, ylo, yhi)

## Syntax

A map:

```python
e = mapExtent(ebsd)
```

Grains, turned to another convention:

```python
e = mapExtent(grains, layout=mapLayout('x↑→y'))
```

A map reaches a lattice spacing beyond its outer measurements, the padding of a grid left
out; grains end at the vertices of their boundary, a boundary or a list of triple points at
its vertices. Nothing to show gives zeros.

## Input

| | |
|---|---|
| `x` | EBSD, grain2d, grainBoundary or triplePointList |

## Output

| | |
|---|---|
| `e` | (xlo, xhi, ylo, yhi) |

## Keywords

| | default | |
|---|---|---|
| `layout` | `None` | the 2 x 2 matrix taking the plane to the screen, mapLayout; by default the identity |

## See also

[scaleBar](scaleBar_py.html), [mapLayout](mapLayout_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L327">source</a></font>
{% endraw %}
