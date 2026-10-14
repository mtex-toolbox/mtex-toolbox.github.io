---
title: 'The class plainProjection'
sidebar: function_reference_sidebar
permalink: plainProjection_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
rho over theta in degrees: the polar angles of the frame itself, no convention

## Input

| `sR` | sphericalRegion to display; None selects the whole sphere before hemisphere restriction |
| `pC` | plottingConvention defining screen axes; None uses the current default |
| `antipodal` | identify opposite directions; default False |
| `upper` | show the hemisphere pointing out of the screen; default True |

## Members

| [boundary](plainProjection.boundary_py.html) | the boundary of the region as plane coordinates, one pair of arrays per arc |
| [bounds](plainProjection.bounds_py.html) | the azimuth and polar ranges of the region in degrees, widened by the margin |
| [chartRegion](plainProjection.chartRegion_py.html) | the region shown, without its frame |
| [iproject](plainProjection.iproject_py.html) | the direction of the azimuth x and the polar angle y, both in degrees |
| [isPlain](plainProjection.isPlain_py.html) | whether the chart draws the polar angles as plain coordinates, True here |
| [polarIn](plainProjection.polarIn_py.html) | the polar coordinates of directions in their own frame, NaN outside the region |
| [project](plainProjection.project_py.html) | the plane coordinates (rho, theta) of directions in degrees, NaN outside the region |
| [projectUnchecked](plainProjection.projectUnchecked_py.html) | the plane coordinates (rho, theta) in degrees of directions known to lie in the chart |
| [withRegion](plainProjection.withRegion_py.html) | the same chart showing another region |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L408">source</a></font>
{% endraw %}
