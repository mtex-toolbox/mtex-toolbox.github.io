---
title: 'The class splineFilter'
sidebar: function_reference_sidebar
permalink: splineFilter_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: splineFilter_index.html
status: Reference
---
{% raw %}
the smoothing spline: the field of least |u - f|^2 + alpha |L u|^2, with L the Laplacian
of the neighbour graph; one linear system, no iteration

## Input

| `smoothingLength` | spatial wavelength controlling smoothing; None uses the default length relative to the pixel spacing |
| `alpha` | dimensionless regularisation weight, overriding smoothingLength |

## Used on

[EBSDDenoising](EBSDDenoising_py.html)

MATLAB's [splineFilter_index](splineFilter_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/filters/variational.py#L43">source</a></font>
{% endraw %}
