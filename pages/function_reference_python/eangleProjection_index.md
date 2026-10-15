---
title: 'The class eangleProjection'
sidebar: function_reference_sidebar
permalink: eangleProjection_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: eangleProjection_index.html
status: Reference
---
{% raw %}
the equal angle, stereographic, projection: r = tan(theta / 2)

## Input

| `sR` | sphericalRegion to display; None selects the whole sphere before hemisphere restriction |
| `pC` | plottingConvention defining screen axes; None uses the current default |
| `antipodal` | identify opposite directions; default False |
| `upper` | show the hemisphere pointing out of the screen; default True |

## Members

| [polarAngle](eangleProjection.polarAngle_py.html) | the polar angle 2 arctan(r) drawn at the plane radius r |
| [radius](eangleProjection.radius_py.html) | the plane radius tan(theta / 2) of the polar angle theta |

MATLAB's [eangleProjection_index](eangleProjection_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical/__init__.py#L319">source</a></font>
{% endraw %}
