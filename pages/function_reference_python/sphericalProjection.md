---
title: 'The class sphericalProjection'
sidebar: function_reference_sidebar
permalink: sphericalProjection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalProjection.html
status: Reference
---
{% raw %}
a projection of the sphere to the plane, restricted to a region and a hemisphere

## Syntax

```python
sphericalProjection(sR, pC, antipodal=False, upper=True)
proj.project(v)        the plane coordinates, NaN outside the region
proj.iproject(x, y)    the direction drawn at a point of the plane
```

Fields: sR, the region shown; pC, the plotting convention; antipodal, whether v and -v
are one point; upper, whether the chart shows the hemisphere out of the screen;
symmetric, whether the data carry the symmetry of the frame, as a function does.

## Members

| | |
|---|---|
| [boundary](sphericalProjection.boundary_py.html) | the boundary of the region as plane curves, one (x, y) pair per arc |
| [bounds](sphericalProjection.bounds_py.html) | the bounding box of the drawn region, from its boundary, as (xmin, xmax, ymin, ymax) |
| [chartRegion](sphericalProjection.chartRegion_py.html) | the region as seen in the frame of the convention, folded into the upper hemisphere |
| [extent](sphericalProjection.extent_py.html) | the radius of the whole hemisphere, the natural extent of a chart |
| [frame](sphericalProjection.frame_py.html) | the frame of the region shown |
| [grid](sphericalProjection.grid_py.html) | a grid regular in the polar angles of the chart, one strip of polar angles per azimuth so that the cells follow the boundary: the directions, in the frame of the region, and their plane coordinates, all nTheta x nRho |
| [gridLines](sphericalProjection.gridLines_py.html) | the meridians and small circles of the convention at a spacing, clipped to the region: plane curves with NaN where they leave it |
| [iproject](sphericalProjection.iproject_py.html) | the direction drawn at the plane point (x, y) |
| [isPlain](sphericalProjection.isPlain_py.html) | whether the chart draws the polar angles as plain coordinates, False here |
| [labels](sphericalProjection.labels_py.html) | the labels: the Miller indices at the corners of the sector of a crystal frame, or at its axes when it has no sector |
| [polarAngle](sphericalProjection.polarAngle_py.html) | the polar angle drawn at the plane radius r, the inverse of radius |
| [polarIn](sphericalProjection.polarIn_py.html) | the polar coordinates of directions in the frame of the convention, folded into the hemisphere of the chart |
| [project](sphericalProjection.project_py.html) | the plane coordinates (x, y) of directions, NaN outside the region |
| [projectUnchecked](sphericalProjection.projectUnchecked_py.html) | the plane coordinates of directions known to lie in the chart |
| [radius](sphericalProjection.radius_py.html) | the plane radius r(theta) a polar angle is drawn at, 2 sin(theta / 2) for the equal area chart |
| [withRegion](sphericalProjection.withRegion_py.html) | the same chart showing another region, for an outline drawn behind the data |

MATLAB's [sphericalProjection](sphericalProjection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L29">source</a></font>
{% endraw %}
