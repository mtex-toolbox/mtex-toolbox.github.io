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
the order a grid is stored in, the directions its row index and its column index advance along,
perpendicular; by default row along y and col along x

```python
gridLayout()
gridLayout(rowDir, colDir, name='fsd')
```

## Members

| | |
|---|---|
| [assumedFor](gridLayout.assumedFor_py.html) | the layout of an array drawn with row 0 at the top and the columns to the right, read against the convention of the frame: what the relation was before layouts were stated, and named so that the assumption shows wherever the layout is displayed |
| [basis](gridLayout.basis_py.html) | the directions row, col and row x col as one vector3d of three |
| [columnMajor](gridLayout.columnMajor_py.html) | the layout with the first index along y, the second along x, MATLAB's images |
| [gridLayout](gridLayout.gridLayout_py.html) | the order a grid is stored in, the directions its row index and its column index advance along, perpendicular |
| [layoutIndex](gridLayout.layoutIndex_py.html) | the index that lays out an array whose first and second index run along d = (d1, d2) as gL asks: new[r, c] = old.flat[lin[r, c]] |
| [rowMajor](gridLayout.rowMajor_py.html) | the layout with the first index along x, the second along y |

## Used on

[EBSDGrid](EBSDGrid_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/gridlayout.py#L29">source</a></font>
{% endraw %}
