---
title: 'The class curvatureFilter'
sidebar: function_reference_sidebar
permalink: curvatureFilter_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the smooth boundary as the minimiser of |V - V0|^2 + alpha |L V|^2, where L V is how far
a vertex sits off the line through its neighbours. There is no iteration count: the
minimiser is the solution of one sparse system, so the result depends on alpha alone.
alpha is stated as a length, the wavelength damped to half amplitude, detail finer than
it goes, detail coarser than it stays, which means the same thing at any step size

## Members

| [smooth](curvatureFilter.smooth_py.html) | the minimiser of \|V - V0\|^2 + alpha \|L V\|^2 over the free vertices, one sparse system |

## Used on

[GrainSmoothing](GrainSmoothing_py.html), [GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing.py#L204">source</a></font>
{% endraw %}
