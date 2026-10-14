---
title: 'The class orthographicProjection'
sidebar: function_reference_sidebar
permalink: orthographicProjection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orthographicProjection.html
status: Reference
---
{% raw %}
the orthographic projection: r = sin(theta)

## Input

| `sR` | sphericalRegion to display; None selects the whole sphere before hemisphere restriction |
| `pC` | plottingConvention defining screen axes; None uses the current default |
| `antipodal` | identify opposite directions; default False |
| `upper` | show the hemisphere pointing out of the screen; default True |

## Members

| [polarAngle](orthographicProjection.polarAngle_py.html) | the polar angle arcsin(r) drawn at the plane radius r |
| [radius](orthographicProjection.radius_py.html) | the plane radius sin(theta) of the polar angle theta |

MATLAB's [orthographicProjection](orthographicProjection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L361">source</a></font>
{% endraw %}
