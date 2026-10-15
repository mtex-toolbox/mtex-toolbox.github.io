---
title: 'The class laplaceFilter'
sidebar: function_reference_sidebar
permalink: laplaceFilter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: laplaceFilter.html
status: Reference
---
{% raw %}
repeated local averaging, the default. A Laplacian is a low pass filter with gain 1 - lk,
below one everywhere but at k = 0, so it shrinks every convex region, without bound; and
the count of iterations is not a physical quantity, the same call on the same sample
measured at a finer step does something else. The averaging counts the vertex itself with
the weight of its degree, (2V + Vl + Vr) / 4 for a degree of two, so lambda acts on half
the Laplacian and the default of 0.5 is in truth a rate of 0.25

## Input

| `iter` | number of smoothing steps; default 1 |
| `lambda_` | smoothing parameter, with each step moving by lambda_/2 towards the neighbour mean; default 0.5 |

## Members

| [smooth](laplaceFilter.smooth_py.html) | the vertices after iter steps of local averaging at the rate lambda_ / 2, the fixed ones kept |

## Used on

[Grains3DSmoothing](Grains3DSmoothing_py.html)

MATLAB's [laplaceFilter](laplaceFilter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing/__init__.py#L147">source</a></font>
{% endraw %}
