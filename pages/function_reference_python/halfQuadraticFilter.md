---
title: 'The class halfQuadraticFilter'
sidebar: function_reference_sidebar
permalink: halfQuadraticFilter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: halfQuadraticFilter.html
status: Reference
---
{% raw %}
the filter of Bergmann, Chan, Hielscher, Persch and Steidl: the data term and the
regularisation each quadratic or an absolute value, and an absolute value keeps a step
where a square blurs it. eps is the difference at which the penalty turns from a square
into a line, threshold the one above which two neighbours are not smoothed together at
all, a subgrain boundary the filter is to leave alone

## Input

| `smoothingLength` | spatial wavelength controlling smoothing |
| `alpha` | dimensionless regularisation weight, overriding smoothingLength |
| `l1DataFit` | use a robust absolute-value data penalty; default True |
| `l1TV` | use a robust total-variation penalty; default True |
| `threshold` | misorientation cutoff in radians above which neighbours are not smoothed together; default 15*degree |
| `eps` | transition scale between quadratic and absolute-value penalties |
| `maxIter` | maximum iteration count; default 100 |
| `tol` | angular stopping tolerance in radians; default 0.001*degree |

## Used on

[EBSDDenoising](EBSDDenoising_py.html), [EBSDFilling](EBSDFilling_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [GND](GND_py.html), [WBV](WBV_py.html)

MATLAB's [halfQuadraticFilter](halfQuadraticFilter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/filters/variational.py#L59">source</a></font>
{% endraw %}
