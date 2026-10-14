---
title: 'The class gnomonicProjection'
sidebar: function_reference_sidebar
permalink: gnomonicProjection_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the gnomonic projection: r = tan(theta), great circles drawn as straight lines

## Input

| `sR` | sphericalRegion to display; None selects the whole sphere before hemisphere restriction |
| `pC` | plottingConvention defining screen axes; None uses the current default |
| `antipodal` | identify opposite directions; default False |
| `upper` | show the hemisphere pointing out of the screen; default True |

## Members

| [extent](gnomonicProjection.extent_py.html) | the radius of the polar angle 80 degrees, the extent of a gnomonic chart |
| [polarAngle](gnomonicProjection.polarAngle_py.html) | the polar angle arctan(r) drawn at the plane radius r |
| [radius](gnomonicProjection.radius_py.html) | the plane radius tan(theta) of the polar angle theta |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L382">source</a></font>
{% endraw %}
