---
title: 'The class boundaryFilter'
sidebar: function_reference_sidebar
permalink: boundaryFilter_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the base of the boundary smoothing filters: smooth(V, net, h) moves the free vertices V of a
boundary network sampled at the spacing h, the fixed ones stay

## Members

| | |
|---|---|
| [laplaceStep](boundaryFilter.laplaceStep_py.html) | one step of the normalised Laplacian: every free vertex moves by the given rate towards the mean of its neighbours |
| [smooth](boundaryFilter.smooth_py.html) | V are the vertices (n, 2) of the network, h the spacing they are sampled at |
| [solveDirichlet](boundaryFilter.solveDirichlet_py.html) | solve M V = V0 for the vertices that may move: the fixed ones are eliminated rather than penalised, so they stay exactly where they are and enter through the right hand side |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing.py#L105">source</a></font>
{% endraw %}
