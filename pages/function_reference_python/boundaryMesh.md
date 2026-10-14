---
title: 'boundaryMesh'
sidebar: function_reference_sidebar
permalink: boundaryMesh_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the faces of a 3D grain boundary as a polygon mesh of a scene3d; what plot(gB) draws for a
grain3Boundary, MATLAB's grain3Boundary/plot

## Syntax

<div class="mx-form" markdown="1">

```python
mesh = boundaryMesh(gB)
```

Light blue faces.

</div>

<div class="mx-form" markdown="1">

```python
mesh = boundaryMesh(gB, gB.misorientation.angle() / degree)
```

Coloured by a value per face.

</div>

<div class="mx-form" markdown="1">

```python
mesh = boundaryMesh(gB, faceColor='red', faceAlpha=0.3, lineWidth=1)
```

One colour, translucent.

</div>

## Description

A face whose value or colour is NaN is not drawn.

## Input

| `gB` | grain3Boundary, the boundary faces |

## Keywords

| keyword | default | description |
|---|---|---|
| `color` | `None` | a value per face mapped by the colour map, an RGB row per face or one RGB triple |
| `faceColor` | `None` | one colour for all faces, when color is not given |
| `faceAlpha` | `1.0` | the opacity of the faces |
| `edgeColor` | `'k'` | the colour of the edges of the faces, 'none' for no edges |
| `edgeAlpha` | `1.0` | the opacity of the edges |
| `lineWidth` | `0.5` | the width of the edges in points |
| `colormap` | `None` | the colour map for values |
| `colorRange` | `None` | (min, max), the values the colour map spans; by default their range |

## Output

| `mesh` | mesh3d, the faces with a colour each; with a value per face it keeps the values, the colour map and the range for the colour bar |

## See also

[grainMesh](grainMesh_py.html), [scene3d](scene3d_index_py.html), [plot3d](S2Fun.plot3d_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/scene3d.py#L398">source</a></font>
{% endraw %}
