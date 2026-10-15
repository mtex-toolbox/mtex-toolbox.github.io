---
title: 'The class infimalConvolutionFilter'
sidebar: function_reference_sidebar
permalink: infimalConvolutionFilter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: infimalConvolutionFilter.html
status: Reference
---
{% raw %}
the field split into two, u = u1 + u2, one penalised in its differences and one in its
Laplacian, which keeps both a step and a slope: the infimal convolution of first and
second order total variation

## Input

| `smoothingLength` | spatial smoothing scale for the first-order part |
| `alpha` | dimensionless regularisation weight, overriding smoothingLength |
| `beta` | regularisation weight for the second-order part; None derives it from the smoothing length |
| `threshold` | misorientation cutoff in radians; default 15*degree |
| `eps` | transition scale used to regularise absolute-value penalties |
| `maxIter` | maximum iteration count; default 20 |
| `tol` | angular stopping tolerance in radians; default 0.001*degree |

## Used on

[EBSDDenoising](EBSDDenoising_py.html)

MATLAB's [infimalConvolutionFilter](infimalConvolutionFilter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/filters/variational.py#L132">source</a></font>
{% endraw %}
