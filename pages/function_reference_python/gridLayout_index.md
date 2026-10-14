---
title: 'The class gridLayout'
sidebar: function_reference_sidebar
permalink: gridLayout_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the order a grid is stored in: the directions of the specimen its row index and its column
index advance along

## Syntax

Row along y, col along x:

```python
gL = gridLayout()
```

The directions stated:

```python
gL = gridLayout(row, col)
```

With a name:

```python
gL = gridLayout(vector3d.X, -vector3d.Y, name='fsd')
```

The two named layouts:

```python
gL = gridLayout.columnMajor()
```

```python
gL = gridLayout.rowMajor()
```

The order a frame is drawn in:

```python
gL = gridLayout.assumedFor(fr)
```

An array is indexed [i, j]; which specimen directions the two indices advance along is not
in the array and has to be stated. That is the layout, a relation between the array and a
frame in which no screen enters: a direction may point either way, so the layout also says
whether an index runs with the coordinate or against it. The two directions are
perpendicular. gL.basis is row, col and row x col; gridify(ebsd, gL) stores a map in this
layout, ebsd.layout says the one it is in.

## Input

| | |
|---|---|
| `row` | vector3d, the direction the row index advances along |
| `col` | vector3d, the direction the column index advances along |

## Output

| | |
|---|---|
| `gL` | gridLayout |

## Keywords

| | default | |
|---|---|---|
| `name` |  | what the layout is called |

## See also

[gridify](gridify_py.html), [referenceFrame](referenceFrame_index_py.html), [plottingConvention](plottingConvention_index_py.html), [EBSDGrid](EBSDGrid_py.html)

## Members

| | |
|---|---|
| [assumedFor](gridLayout.assumedFor_py.html) | the layout of an array drawn with row 0 at the top and the columns to the right, read against the convention of the frame: what the relation was before layouts were stated, and named so that the assumption shows wherever the layout is displayed |
| [basis](gridLayout.basis_py.html) | the directions row, col and row x col as one vector3d of three |
| [columnMajor](gridLayout.columnMajor_py.html) | the layout with the first index along y, the second along x, MATLAB's images |
| [gridLayout](gridLayout.gridLayout_py.html) | the order a grid is stored in: the directions of the specimen its row index and its column index advance along |
| [layoutIndex](gridLayout.layoutIndex_py.html) | the index that lays out an array whose first and second index run along d = (d1, d2) as gL asks, new[r, c] = old.flat[lin[r, c]] |
| [rowMajor](gridLayout.rowMajor_py.html) | the layout with the first index along x, the second along y |

## Used on

[EBSDGrid](EBSDGrid_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/gridlayout.py#L29">source</a></font>
{% endraw %}
