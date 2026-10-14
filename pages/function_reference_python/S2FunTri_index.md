---
title: 'The class S2FunTri'
sidebar: function_reference_sidebar
permalink: S2FunTri_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunTri_index.html
status: Reference
---
{% raw %}
a function on the sphere by its values at the vertices of a spherical triangulation, linear
in between; a direction given twice takes the mean of its values

## Syntax

```python
S2FunTri(v, values)          the values at the directions v
S2FunTri(sT, values)         on a triangulation already made
S2FunTri(fun)                a callable sampled on a 1.5 degree grid
```

## Members

| | |
|---|---|
| [abs](S2FunTri.abs_py.html) | the absolute value of the function, taken at the vertices, again a function on the triangulation |
| [CS](S2FunTri.CS_py.html) | the frame of the vertices, MATLAB's sF.CS |
| [eval](S2FunTri.eval_py.html) | the values at the directions v, the barycentric mean of the values at the corners of the triangle each lies in |
| [frame](S2FunTri.frame_py.html) | the frame of the vertices |
| [mean](S2FunTri.mean_py.html) | the mean by the area of the Voronoi cell of every vertex |
| [min](S2FunTri.min_py.html) | the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima |
| [plot](S2FunTri.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plus](S2FunTri.plus_py.html) |  |
| [power](S2FunTri.power_py.html) |  |
| [rdivide](S2FunTri.rdivide_py.html) |  |
| [rotate](S2FunTri.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [S2FunTri](S2FunTri.S2FunTri_py.html) | a function on the sphere by its values at the vertices of a spherical triangulation, linear in between |
| [sqrt](S2FunTri.sqrt_py.html) | the square root of the function, taken at the vertices |
| [textureIndex](S2FunTri.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |
| [times](S2FunTri.times_py.html) |  |
| [uminus](S2FunTri.uminus_py.html) |  |
| [vertices](S2FunTri.vertices_py.html) | the vertices of the triangulation, the directions the values are given at |
| [volume](S2FunTri.volume_py.html) | the share of orientations within a radius of a centre: the integral of f over the ball, int_{angle(g, c) < r} f(g) dg, relative to the integral over all orientations |

MATLAB's [S2FunTri_index](S2FunTri_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funtri.py#L24">source</a></font>
{% endraw %}
