---
title: 'vector3d.surf'
sidebar: function_reference_sidebar
permalink: vector3d.surf_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.surf.html
status: Reference
---
{% raw %}
a function on the sphere as a surface in space, the sphere pushed out to |f| and
coloured by f; MATLAB's S2Fun/surf

## Syntax

<div class="mx-form" markdown="1">

```python
surf(sF)
```

The function as a surface.

</div>

<div class="mx-form" markdown="1">

```python
surf(sF, resolution=2*degree, scaling=False)
```

A finer mesh, the values as they are.

</div>

## Description

The radius of the surface in a direction is the absolute value of the function there, the
colour its value, the real part of a complex function. A single real function is first
scaled to (f - mean) / (max - min) + 1, as MATLAB does, which shows its shape as an
ovoid around the unit sphere; scaling=False draws the values as they are. A list of
functions is drawn one panel each, in a new figure.

## Input

| `sF` | S2Fun, or a list of them |

## Keywords

| keyword | default | description |
|---|---|---|
| `layout` | `None` | (rows, columns) of the panels of a list of functions |
| `figSize` | `None` | the size of a new figure, a name such as 'large' or (width, height) in inches |
| `scaling` | `True` | scale a single real function to an ovoid around the unit sphere |
| `colormap` | `'parula'` | the colour map of the values |
| `resolution` | `5*degree` | the spacing of the mesh on the sphere, an angle |
| `edgeColor` | `(0.1, 0.1, 0.1)` | the colour of the edges of the mesh, 'none' for none |

## Output

| `h` | the Poly3DCollection of the surface, a list of them for a list of functions |

## See also

[plot3d](S2Fun.plot3d_py.html), [plot](S1Grid.plot_py.html), [S2FunPlotting](S2FunPlotting_py.html)

## Used on

[S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunPlotting](S2FunPlotting_py.html), [S2FunQuadrature](S2FunQuadrature_py.html), [S2Kernels](S2Kernels_py.html), [SphericalHarmonics](SphericalHarmonics_py.html), [PiezoElectricity](PiezoElectricity_py.html)

MATLAB's [vector3d.surf](vector3d.surf.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L379">source</a></font>
{% endraw %}
