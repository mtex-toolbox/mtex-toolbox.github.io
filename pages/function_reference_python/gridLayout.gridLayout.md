---
title: 'gridLayout.gridLayout'
sidebar: function_reference_sidebar
permalink: gridLayout.gridLayout_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: gridLayout.gridLayout.html
status: Reference
---
{% raw %}
the order a grid is stored in: the directions of the specimen its row index and its column
index advance along

## Syntax

<div class="mx-form" markdown="1">

```python
gL = gridLayout()
```

Row along y, col along x.

</div>

<div class="mx-form" markdown="1">

```python
gL = gridLayout(row, col)
```

The directions stated.

</div>

<div class="mx-form" markdown="1">

```python
gL = gridLayout(vector3d.X, -vector3d.Y, name='fsd')
```

With a name.

</div>

<div class="mx-form" markdown="1">

```python
gL = gridLayout.columnMajor()
```

The two named layouts.

</div>

<div class="mx-form" markdown="1">

```python
gL = gridLayout.rowMajor()
```

</div>

<div class="mx-form" markdown="1">

```python
gL = gridLayout.assumedFor(fr)
```

The order a frame is drawn in.

</div>

## Description

An array is indexed [i, j]; which specimen directions the two indices advance along is not
in the array and has to be stated. That is the layout, a relation between the array and a
frame in which no screen enters: a direction may point either way, so the layout also says
whether an index runs with the coordinate or against it. The two directions are
perpendicular. gL.basis is row, col and row x col; gridify(ebsd, gL) stores a map in this
layout, ebsd.layout says the one it is in.

## Input

| `row` | vector3d, the direction the row index advances along |
| `col` | vector3d, the direction the column index advances along |

## Keywords

| keyword | default | description |
|---|---|---|
| `name` | `''` | what the layout is called |

## Output

| `gL` | gridLayout |

## See also

[gridify](gridify_py.html), [referenceFrame](referenceFrame_index_py.html), [plottingConvention](plottingConvention_index_py.html), [EBSDGrid](EBSDGrid_py.html)

## Used on

[EBSDGrid](EBSDGrid_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html)

MATLAB's [gridLayout.gridLayout](gridLayout.gridLayout.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/gridlayout.py#L29">source</a></font>
{% endraw %}
