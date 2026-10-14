---
title: 'The class curvatureFilter'
sidebar: function_reference_sidebar
permalink: curvatureFilter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: curvatureFilter.html
status: Reference
---
{% raw %}
the smooth boundary as the minimiser of |V - V0|^2 + alpha |L V|^2, where L V is how far
a vertex sits off the line through its neighbours. There is no iteration count: the
minimiser is the solution of one sparse system, so the result depends on alpha alone.
smoothingLength specifies the spatial wavelength damped to half amplitude. The weight
alpha is derived from this length and the vertex spacing, so the smoothing scale
remains comparable between samplings. Supplying alpha overrides that conversion.

## Input

| `smoothingLength` | spatial wavelength damped to half amplitude, in the units of the boundary |
| `alpha` | dimensionless regularisation weight, overriding smoothingLength |

## Members

| [smooth](curvatureFilter.smooth_py.html) | the minimiser of \|V - V0\|^2 + alpha \|L V\|^2 over the free vertices, one sparse system |

## Used on

[GrainSmoothing](GrainSmoothing_py.html), [GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html)

MATLAB's [curvatureFilter](curvatureFilter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing.py#L218">source</a></font>
{% endraw %}
