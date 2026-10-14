---
title: 'grainMesh'
sidebar: function_reference_sidebar
permalink: grainMesh_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the faces of 3D grains as a polygon mesh of a scene3d, coloured by grain; what plot(grains)
draws for grain3d, MATLAB's grain3d/plot

## Syntax

<div class="mx-form" markdown="1">

```python
mesh = grainMesh(grains)
```

Coloured by phase.

</div>

<div class="mx-form" markdown="1">

```python
mesh = grainMesh(grains, grains.meanOrientation)
```

By orientation, the ipf key of the phase.

</div>

<div class="mx-form" markdown="1">

```python
mesh = grainMesh(grains, grains.volume, colormap='viridis', faceAlpha=0.5)
```

By a value, translucent.

</div>

<div class="mx-form" markdown="1">

```python
mesh = grainMesh(grains, faceColor='lightblue', edgeColor='none')
```

One colour, no edges.

</div>

## Description

A face of the set of grains is outer when it belongs to one grain and is drawn in that
grain's colour; a face between two of the grains is inner and drawn grey, and only when
the faces are translucent, faceAlpha below 1. A grain whose value is NaN is not drawn.

## Input

| `grains` | grain3d, the grains |

## Keywords

| keyword | default | description |
|---|---|---|
| `color` | `None` | what colours a grain: None for its phase, an orientation per grain, a value per grain mapped by the colour map, an RGB row per grain, or the name of a property |
| `faceColor` | `None` | one colour for all grains, when color is not given |
| `faceAlpha` | `1.0` | the opacity of the faces |
| `edgeColor` | `'k'` | the colour of the edges of the faces, 'none' for no edges |
| `edgeAlpha` | `1.0` | the opacity of the edges |
| `lineWidth` | `0.5` | the width of the edges in points |
| `colormap` | `None` | the colour map for values |
| `colorRange` | `None` | (min, max), the values the colour map spans; by default their range |
| `ipfDirection` | `None` | the specimen direction of the inverse pole figure key for orientations |

## Output

| `mesh` | mesh3d, the faces with a colour each; with a value per grain it keeps the values, the colour map and the range for the colour bar |

## See also

[boundaryMesh](boundaryMesh_py.html), [volumeSlices](volumeSlices_py.html), [scene3d](scene3d_index_py.html), [plot3d](S2Fun.plot3d_py.html), [Grains3D](Grains3D_py.html), [EBSD3Plotting](EBSD3Plotting_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/scene3d.py#L336">source</a></font>
{% endraw %}
