---
title: 'The class taubinFilter'
sidebar: function_reference_sidebar
permalink: taubinFilter_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: taubinFilter_index.html
status: Reference
---
{% raw %}
smoothing without the shrinking: every smoothing pass is followed by a slightly larger
unshrinking one with a negative step, so the gain over the pair, (1 - lk)(1 - mk), is
about one over the low frequencies and the area is given back. This is approximate; the
areas move, only not systematically one way (Taubin, SIGGRAPH 1995)

## Input

| `iter` | number of smoothing and unshrinking step pairs; default 5 |
| `lambda_` | positive smoothing parameter; default 0.5 |
| `mu` | negative unshrinking parameter; default -0.53 |

## Members

| [smooth](taubinFilter.smooth_py.html) | the vertices after iter pairs of a smoothing step lambda_ and an unshrinking step mu, the fixed ones kept |

## Used on

[EBSD3Analysis](EBSD3Analysis_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [GrainSmoothing](GrainSmoothing_py.html), [GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html), [QuadruplePoints](QuadruplePoints_py.html)

MATLAB's [taubinFilter_index](taubinFilter_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing.py#L174">source</a></font>
{% endraw %}
