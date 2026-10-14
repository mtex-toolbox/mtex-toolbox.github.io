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
differ by one step in two of the three

## Syntax

```python
x, y, z = hex2cube(ebsd, row, col)
```

## Signature

```python
EBSD.hex2cube(ebsd, row, col=None)
```

## Used on

[EBSDIndex](EBSDIndex_py.html)

MATLAB's [EBSDhex.hex2cube](EBSDhex.hex2cube.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/hexgrid.py#L24">source</a></font>
{% endraw %}
