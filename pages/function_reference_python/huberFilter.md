---
title: 'The class huberFilter'
sidebar: function_reference_sidebar
permalink: huberFilter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: huberFilter.html
status: Reference
---
{% raw %}
the same, with an l1/l2 penalty that leaves a faceted boundary faceted: the quadratic
penalty of the curvature filter rounds every corner; the Huber one is quadratic below a
threshold and linear above it, so a vertex that turns by more than the threshold is paid
for once rather than by its square. It is solved by reweighting the same system until
nothing moves; maxIter is a safety limit, not a tuning knob

## Members

| | |
|---|---|
| [smooth](huberFilter.smooth_py.html) | the minimiser of \|V - V0\|^2 plus alpha times the Huber penalty of the curvature L V, by reweighting the sparse system until nothing moves, the fixed vertices kept |

## Used on

[GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html)

MATLAB's [huberFilter](huberFilter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing.py#L229">source</a></font>
{% endraw %}
