---
title: 'EBSDhex.cube2hex'
sidebar: function_reference_sidebar
permalink: EBSDhex.cube2hex_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSDhex.cube2hex.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the row and column (counted from 0) of the cells with cube coordinates x, y, z, NaN for a
cell outside the grid

## Syntax

```python
row, col = cube2hex(ebsd, x, y, z)
```

## Signature

```python
EBSD.cube2hex(ebsd, x, y, z)
```

MATLAB's [EBSDhex.cube2hex](EBSDhex.cube2hex.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/hexgrid.py#L43">source</a></font>
{% endraw %}
