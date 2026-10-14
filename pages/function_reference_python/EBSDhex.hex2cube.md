---
title: 'EBSDhex.hex2cube'
sidebar: function_reference_sidebar
permalink: EBSDhex.hex2cube_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSDhex.hex2cube.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the cube coordinates x, y, z of cells of a hexagonal grid, given by their row and column
(counted from 0) or by their flat index; x + y + z = 0, and the six neighbours of a cell
differ by one step in two of the three; MATLAB's EBSDhex/hex2cube

## Syntax

By row and column:

```python
x, y, z = hex2cube(ebsd, row, col)
```

By flat index:

```python
x, y, z = ebsd.hex2cube([0, 100, 200])
```

A cell of a hexagonal grid is addressed by its row and column, the offset coordinates; the
cube coordinates make the neighbours one step apart in two of three, see
redblobgames.com/grids/hexagons. Which index is staggered, and which way, is read off the
positions, so it holds at any rotation of the map. The indices count from 0 and the flat
index runs in the order of the grid, where MATLAB counts from 1 in column major order.

## Input

| | |
|---|---|
| `ebsd` | EBSD gridded on a hexagonal lattice, at least 3 x 3 cells |
| `row` | the rows of the cells, or their flat indices when col is not given |

## Output

| | |
|---|---|
| `x, y, z` | the cube coordinates |

## Keywords

| | default | |
|---|---|---|
| `col` | `None` | the columns of the cells |

## See also

[cube2hex](EBSDhex.cube2hex_py.html)

## Used on

[EBSDIndex](EBSDIndex_py.html)

MATLAB's [EBSDhex.hex2cube](EBSDhex.hex2cube.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/hexgrid.py#L24">source</a></font>
{% endraw %}
