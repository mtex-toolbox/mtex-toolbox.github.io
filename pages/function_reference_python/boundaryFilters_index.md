---
title: 'Boundary filters'
sidebar: function_reference_sidebar
permalink: boundaryFilters_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: boundaryFilters_index.html
status: Reference
---
{% raw %}
Filters and shared boundary networks for smoothing reconstructed grain boundaries.

| Class or function | Description |
| --- | --- |
| [boundaryFilter](boundaryFilter_index_py.html) | the base of the boundary smoothing filters: smooth(V, net, h) moves the free vertices V of a boundary network sampled at the spacing h, the fixed ones stay |
| [laplaceFilter](laplaceFilter_index_py.html) | repeated local averaging, the default |
| [taubinFilter](taubinFilter_index_py.html) | smoothing without the shrinking: every smoothing pass is followed by a slightly larger unshrinking one with a negative step, so the gain over the pair, (1 - lk)(1 - mk), is about one over the low frequencies and the area is given back |
| [curvatureFilter](curvatureFilter_index_py.html) | the smooth boundary as the minimiser of \|V - V0\|^2 + alpha \|L V\|^2, where L V is how far a vertex sits off the line through its neighbours |
| [huberFilter](huberFilter_index_py.html) | smooth grain boundaries with a Huber curvature penalty that preserves sharp corners |
| [boundaryNetwork](boundaryNetwork_index_py.html) | the network the smoothing runs on: only the vertices the boundaries use, their neighbours in compressed form, and which of them may not move |
{% endraw %}
