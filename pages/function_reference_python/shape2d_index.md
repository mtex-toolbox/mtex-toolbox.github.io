---
title: 'The class shape2d'
sidebar: function_reference_sidebar
permalink: shape2d_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
one closed outline in the plane of a map, so that every parameter above is there for a
curve that came from no segmentation, as the characteristic shape of a boundary and a
projection function drawn as a shape are. It is stored anticlockwise, so its area is the
positive one

## Members

| | |
|---|---|
| [allV](shape2d.allV_py.html) | the vertices of the outline as framed points, the same as Vs |
| [byFV](shape2d.byFV_py.html) | the outline of a set of segments laid end to end by direction, the characteristic shape |
| [byRhoTheta](shape2d.byRhoTheta_py.html) | an outline in polar coordinates, which is how a projection function becomes the shape it describes |
| [hull](shape2d.hull_py.html) | the convex hull of the outline, as an outline |
| [plot](shape2d.plot_py.html) | plot(shape): the outline of a characteristic shape in polar coordinates about its centre |
| [rho](shape2d.rho_py.html) | the radius of every vertex in polar coordinates of the plane |
| [shape2d](shape2d.shape2d_py.html) | one closed outline in the plane of a map, so that every parameter above is there for a curve that came from no segmentation, as the characteristic shape of a boundary and a projection function drawn as a shape are |
| [size](shape2d.size_py.html) | the number of outlines, one |
| [theta](shape2d.theta_py.html) | the angle of every vertex in polar coordinates of the plane, from the x axis |
| [Vs](shape2d.Vs_py.html) | the outline as framed points, and in polar coordinates |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L323">source</a></font>
{% endraw %}
