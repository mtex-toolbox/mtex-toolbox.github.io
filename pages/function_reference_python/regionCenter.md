---
title: 'regionCenter'
sidebar: function_reference_sidebar
permalink: regionCenter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the centre of a region (MATLAB @sphericalRegion/center): the pole of a single circle, the
bisector of the two boundaries furthest apart for a lune, the barycentre of the vertices
of a triangle, and the area centroid of anything larger. The fold is a symmetry of the
sector, so it is this centre and not the group's Dirichlet centre that it turns about

## Syntax

<div class="mx-form" markdown="1">

```python
c = regionCenter(cs.fundamentalSector())
```

The centre as an (3,) array.

</div>

<div class="mx-form" markdown="1">

```python
c = regionCenter(cs.fundamentalSector(), resolution=0.5*degree)
```

A finer grid for the centroid.

</div>

## Description

The resolution matters only for a region of four or more vertices, whose centroid is
summed over an equispaced grid of that spacing; a region without boundary has its centre
at z.

## Input

| `sR` | sphericalRegion |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `1*degree` | the spacing of the grid the area centroid is summed over |

## Output

| `c` | (3,) array, the unit vector of the centre |

## See also

[sphericalRegion.center](sphericalRegion.center_py.html), [polarCoordinates](sphericalRegion.polarCoordinates_py.html), [sectorFolds](sectorFolds_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectorfold.py#L41">source</a></font>
{% endraw %}
