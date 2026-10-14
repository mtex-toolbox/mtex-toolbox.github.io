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

<div class="mx-form" markdown="1">

```python
e = mapExtent(ebsd)
```

A map.

</div>

<div class="mx-form" markdown="1">

```python
e = mapExtent(grains, layout=mapLayout('x↑→y'))
```

Grains, turned to another convention.

</div>

## Description

A map reaches the unit cell around its outer measurements, half a spacing on a square grid,
as MATLAB's plot, the padding of a grid left out; grains end at the vertices of their boundary, a boundary or a list of triple points at
its vertices. Nothing to show gives zeros.

## Input

| `x` | EBSD, grain2d, grainBoundary or triplePointList |

## Keywords

| keyword | default | description |
|---|---|---|
| `layout` | `None` | the 2 x 2 matrix taking the plane to the screen, mapLayout; by default the identity |

## Output

| `e` | (xlo, xhi, ylo, yhi) |

## See also

[scaleBar](scaleBar_py.html), [mapLayout](mapLayout_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L327">source</a></font>
{% endraw %}
