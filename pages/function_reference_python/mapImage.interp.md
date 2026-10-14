---
title: 'mapImage.interp'
sidebar: function_reference_sidebar
permalink: mapImage.interp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.interp.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

the image values at arbitrary positions; MATLAB's mapImage.interp

## Syntax

<div class="mx-form" markdown="1">

```python
v = mg.interp(pos)
```

Bilinear, NaN outside the grid.

</div>

<div class="mx-form" markdown="1">

```python
v = mg.interp(pos, 'nearest')
```

The value of the pixel covering it.

</div>

<div class="mx-form" markdown="1">

```python
v = mg.interp(pos, extrapolationMethod='nearest')
```

The nearest border value outside.

</div>

## Description

The positions reduce to fractional rows and columns of the regular grid, which are
interpolated: 'linear' bilinearly, 'nearest' by the covering pixel, and 'cubic', 'spline' or
'makima' through SciPy's RegularGridInterpolator (cubic, quintic and pchip). Resampling onto
another grid is this at the positions of the target.

## Input

| `mg` | mapImage |
| `pos` | vector3d, or an (..., 2) or (..., 3) array of positions |

## Keywords

| keyword | default | description |
|---|---|---|
| `method` | `'linear'` | 'linear', 'nearest', 'cubic', 'spline' or 'makima' |
| `extrapolationMethod` | `'none'` | 'none', NaN outside the grid, or 'nearest', the border value |

## Output

| `v` | array of the shape of pos, with the channels as a last axis when there are several |

## See also

[mapImage.pos2ind](mapImage.pos2ind_py.html), [EBSD.interp](EBSD.interp_py.html)

MATLAB's [mapImage.interp](mapImage.interp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L272">source</a></font>
{% endraw %}
