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

At the coordinates x, y:

```python
ebsd_new = interp(ebsd, x, y)
```

At the positions, a vector3d:

```python
ebsd_new = interp(ebsd, pos)
```

Empty outside the measurements:

```python
ebsd_new = interp(ebsd, x, y, fill=False, extrapolate=False)
```

The holes of the map are filled first, by the solver smooth and fill use, then each
position is interpolated within the lattice cell it falls in, linearly in the tangent
space of the component (grain or phase) of the nearest measured corner and over the
corners of that component only, so nothing is averaged across a grain boundary. A
position no measured corner surrounds takes the nearest measurement where extrapolate
allows it, and is notIndexed otherwise. The phase and the other properties are those of
the nearest measured corner. MATLAB takes the nearest measurement within its pixel; here
the orientations are interpolated.

## Input

| | |
|---|---|
| `ebsd` | EBSD, a map on a lattice |
| `pos` | vector3d, or an array of rows (x, y) or (x, y, z), the positions; or the x coordinates, with y |
| `y` | the y coordinates, with pos the x coordinates |

## Output

| | |
|---|---|
| `ebsd_new` | EBSD, the map at the positions, in the order given |

## Keywords

| | default | |
|---|---|---|
| `F` | `None` | EBSDFilter, the variational filter the holes are filled by; by default l1TVFilter() |
| `fill` | `True` | fill the holes of the map before interpolating |
| `extrapolate` | `True` | a position outside the measured cells takes the nearest measurement instead of staying empty |

## See also

[fill](fill_py.html), [smooth](smooth_py.html), [gridify](gridify_py.html), [EBSDGrid](EBSDGrid_py.html)

MATLAB's [EBSD.interp](EBSD.interp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/denoising.py#L512">source</a></font>
{% endraw %}
