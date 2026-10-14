---
title: 'regularSO3Grid'
sidebar: function_reference_sidebar
permalink: regularSO3Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: regularSO3Grid.html
status: Reference
---
{% raw %}
the regular raster of Euler angles over the Euler box of the frames, as the ODF sections
show it

## Syntax

The resolution 5 degree:

```python
ori = regularSO3Grid(CS)
```

Another resolution:

```python
ori = regularSO3Grid(CS, SS, resolution=2.5*degree)
```

Ten phi2 sections:

```python
ori = regularSO3Grid(CS, SS, sections=10)
```

The Bunge angles phi2 run in sections from zero below their bound, and on each section
the (Phi, phi1) raster with both ends of Phi and phi1 from zero below its bound, all at
the resolution; the bounds are the Euler box of the crystal and the specimen symmetry. The
result is an array of the shape (Phi, phi1, phi2). MATLAB's other outputs, the section
flags phi1 and Phi, the 'ZYZ' convention and the Clenshaw-Curtis grid are not there.

## Input

| | |
|---|---|
| `CS` | crystalFrame |
| `SS` | specimenFrame, by default the default specimen frame |

## Output

| | |
|---|---|
| `ori` | orientation of shape (Phi, phi1, phi2) |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `5*degree` | the spacing of the Euler angles |
| `sections` | `None` | the number of phi2 sections, instead of the resolution |

## See also

[equispacedSO3Grid](equispacedSO3Grid_py.html), [phi2Sections](phi2Sections_index_py.html), [eulerRegion](eulerRegion_py.html)

## Used on

[OrientationGrid](OrientationGrid_py.html)

MATLAB's [regularSO3Grid](regularSO3Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/so3grid.py#L332">source</a></font>
{% endraw %}
