---
title: 'EBSDsquare'
sidebar: function_reference_sidebar
permalink: EBSDsquare_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a map on a square grid from arrays in map shape, the rows of the array its rows of pixels;
MATLAB's EBSDsquare, used to build a synthetic map

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd = EBSDsquare(rot, phaseId, CSList)
```

Pixels of unit step.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = EBSDsquare(rot, CSList=CSList, dxy=0.5)
```

One phase, another step.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = EBSDsquare(rot, phaseId, CSList, dxy=(1, 2))
```

Rectangular pixels.

</div>

## Description

Pixel (i, j) sits at x = j dx, y = i dy. The map is gridified, as a gridded map read from a
file is.

## Input

| `rotations` | rotation of shape (rows, columns) |
| `phaseId` | int array of the same shape, the index into CSList; phase 1 everywhere by default |
| `CSList` | phaseList, or a list of crystalFrame with 'notIndexed' first |

## Keywords

| keyword | default | description |
|---|---|---|
| `dxy` | `(1.0, 1.0)` | the step of the grid, one number or (dx, dy) |
| `scanUnit` | `'um'` | the unit of the positions |
| `frame` | `None` | specimenFrame of the positions |
| `prop` | `None` | dict of the properties, each of the shape of the map |

## Output

| `ebsd` | EBSD in map shape |

## See also

[EBSD](EBSD_index_py.html), [gridify](gridify_py.html), [simulateEBSD](simulateEBSD_index_py.html), [QuadruplePoints](QuadruplePoints_py.html)

## Used on

[QuadruplePoints](QuadruplePoints_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L895">source</a></font>
{% endraw %}
