---
title: 'mapLayout'
sidebar: function_reference_sidebar
permalink: mapLayout_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the layout a convention asks for: the 2 x 2 matrix taking the in-plane coordinates of a map
to the screen, east to the right and north up

## Syntax

<div class="mx-form" markdown="1">

```python
M = mapLayout()
```

The default plotting convention.

</div>

<div class="mx-form" markdown="1">

```python
M = mapLayout('x↑→y')
```

X up, y to the right.

</div>

<div class="mx-form" markdown="1">

```python
M = mapLayout(pC, ebsd.lattice.plane)
```

A map in another plane.

</div>

## Description

The rows are the components of east and north along the coordinates of the map's plane (x
and y without a plane), snapped to the signed permutation an axis aligned convention is,
so that the picture is turned rather than resampled. A convention whose screen is not the
plane, as the xy convention of a map in the yz plane, draws the plane's own coordinates
east and north.

## Keywords

| keyword | default | description |
|---|---|---|
| `pC` | `None` | plottingConvention, or the string of one; by default plottingConvention.default |
| `plane` | `None` | the plane of the map, whose e1 and e2 are its coordinates |

## Output

| `M` | a 2 x 2 array |

## See also

[plottingConvention](plottingConvention_index_py.html), [mapRaster](mapRaster_py.html), [mapCells](mapCells_py.html), [mapPoints](mapPoints_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L42">source</a></font>
{% endraw %}
