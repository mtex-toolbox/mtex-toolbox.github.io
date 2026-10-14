---
title: 'The class edistProjection'
sidebar: function_reference_sidebar
permalink: edistProjection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: edistProjection.html
status: Reference
---
{% raw %}
the equidistant projection: r = theta

## Input

| `sR` | sphericalRegion to display; None selects the whole sphere before hemisphere restriction |
| `pC` | plottingConvention defining screen axes; None uses the current default |
| `antipodal` | identify opposite directions; default False |
| `upper` | show the hemisphere pointing out of the screen; default True |

## Members

| [polarAngle](edistProjection.polarAngle_py.html) | the polar angle drawn at the plane radius r, r itself |
| [radius](edistProjection.radius_py.html) | the plane radius of the polar angle theta, theta itself |

MATLAB's [edistProjection](edistProjection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L340">source</a></font>
{% endraw %}
