---
title: 'EBSD.interp'
sidebar: function_reference_sidebar
permalink: EBSD.interp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.interp.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the map read at positions of one's own choosing, a new map with these positions

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd_new = interp(ebsd, x, y)
```

At the coordinates x, y.

</div>

<div class="mx-form" markdown="1">

```python
ebsd_new = interp(ebsd, pos)
```

At the positions, a vector3d.

</div>

<div class="mx-form" markdown="1">

```python
ebsd_new = interp(ebsd, x, y, fill=False, extrapolate=False)
```

Empty outside the measurements.

</div>

## Description

The orientation at a position is interpolated linearly from the corners of the lattice cell
it falls in, over the corners that share the grain (or, without grain ids, the phase) of
the nearest measured corner only, so nothing is averaged across a grain boundary. The
phase and the other properties are those of the nearest measured corner. MATLAB takes the
nearest measurement within its pixel instead.

With fill=True the holes of the map are first filled as fill(ebsd, F) fills them. A
position no measured corner surrounds takes the nearest measurement with
extrapolate=True, and is notIndexed otherwise.

## Input

| `ebsd` | EBSD, a map on a lattice |
| `pos` | vector3d, or an array of rows (x, y) or (x, y, z), the positions; or the x coordinates, with y |
| `y` | the y coordinates, with pos the x coordinates |

## Keywords

| keyword | default | description |
|---|---|---|
| `F` | `None` | EBSDFilter, the variational filter the holes are filled by; by default l1TVFilter() |
| `fill` | `True` | fill the holes of the map before interpolating |
| `extrapolate` | `True` | a position outside the measured cells takes the nearest measurement instead of staying empty |

## Output

| `ebsd_new` | EBSD, the map at the positions, in the order given |

## See also

[fill](fill_py.html), [smooth](smooth_py.html), [gridify](gridify_py.html), [EBSDGrid](EBSDGrid_py.html)

MATLAB's [EBSD.interp](EBSD.interp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/denoising.py#L562">source</a></font>
{% endraw %}
