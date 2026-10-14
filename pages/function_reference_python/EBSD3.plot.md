---
title: 'EBSD3.plot'
sidebar: function_reference_sidebar
permalink: EBSD3.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.plot.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

the voxels of a volume in three orthogonal slice planes, coloured by phase, by a value, a
colour or an orientation per voxel; MATLAB's EBSD3.plot

## Syntax

Coloured by phase:

```python
plot(ebsd)
```

Coloured by a value per voxel:

```python
plot(ebsd, ebsd.prop['ConfidenceIndex'])
```

Coloured by the orientation:

```python
plot(ebsd['indexed'], ebsd['indexed'].orientations)
```

Two slices at the voxels given:

```python
plot(ebsd, at=(5, None, 10))
```

The slices are normal to the three axes of the voxel lattice, through the middle of the
volume unless at gives the voxel index of each. A voxel not indexed or without a value is
white. Orientations are coloured by an ipfColorKey of their phase, values by the colour
map. The options of the drawing are keywords too: faceColor, colormap, colorRange and
ipfDirection. The plot is a scene3d held by the mtexFigure, shown as the picture PyVista renders offscreen
(matplotlib's 3D axes without PyVista), so hold, setCamera and mtexColorbar act on it as on
any MTEX figure; show3d opens it in a window and exportHTML writes it as an interactive
page.

MATLAB's options of a planar map, the region, the points and the exact unit cells, have no
meaning here; the slices of one plane are drawn as a map by plot of ebsd.slice.

## Input

| | |
|---|---|
| `ebsd` | EBSD3 |
| `color` | a value, an RGB colour or an orientation per voxel; by default the phase colours |

## Output

| | |
|---|---|
| `fig` | mtexFigure |

## Keywords

| | default | |
|---|---|---|
| `how2plot` | `None` | the plottingConvention of the view, by default plottingConvention.default3D |
| `figSize` | `None` | the size of a new figure, 'small', 'normal', 'large', ..., or (width, height) in inches |
| `at` | `None` | (i, j, k), the voxel index of the slice normal to each axis of the lattice, None for a slice left out; by default the middle |

## See also

[EBSD3.slice](EBSD3.slice_py.html), [grain3d.plot](grain3d.plot_py.html), [EBSD.plot](EBSD.plot_py.html), [EBSD3Plotting](EBSD3Plotting_py.html)

MATLAB's [EBSD3.plot](EBSD3.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L122">source</a></font>
{% endraw %}
