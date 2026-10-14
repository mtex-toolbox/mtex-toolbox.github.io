---
title: 'mapImage.pos2ind'
sidebar: function_reference_sidebar
permalink: mapImage.pos2ind_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.pos2ind.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

the pixel of the image covering each position; MATLAB's mapImage.pos2ind

## Syntax

<div class="mx-form" markdown="1">

```python
i, j, inside = mg.pos2ind(pos)
```

Row and column, and whether on the grid.

</div>

<div class="mx-form" markdown="1">

```python
ind = mg.pos2ind(pos, linear=True)
```

The index into the flattened grid.

</div>

## Description

On a regular grid this is a projection and a rounding, not a search: the two steps are
perpendicular, so the row and the column separate. The row and column are counted from zero
and not clipped to the grid; the linear index is -1 outside it, where MATLAB's is NaN.

## Input

| `mg` | mapImage |
| `pos` | vector3d, or an (..., 2) or (..., 3) array of positions |

## Keywords

| keyword | default | description |
|---|---|---|
| `linear` | `False` | return the linear index alone |

## Output

| `i, j` | int arrays, row and column of the pixel |
| `inside` | bool array, whether it lies on the grid |
| `ind` | int array, the index into the flattened grid, row by row, -1 outside |

## See also

[mapImage.interp](mapImage.interp_py.html), [mapImage.subGrid](mapImage.subGrid_py.html)

MATLAB's [mapImage.pos2ind](mapImage.pos2ind.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L243">source</a></font>
{% endraw %}
