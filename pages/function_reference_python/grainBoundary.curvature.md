---
title: 'grainBoundary.curvature'
sidebar: function_reference_sidebar
permalink: grainBoundary.curvature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.curvature.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the signed curvature of every segment: the Menger curvature through the midpoints of a
segment and its two neighbours along the chain, smoothed by a binomial filter along
it; positive where the boundary bulges into grainId[:, 1]

## Syntax

```python
grainBoundary.curvature(self, n=50)
```

MATLAB's [grainBoundary.curvature](grainBoundary.curvature.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L408">source</a></font>
{% endraw %}
