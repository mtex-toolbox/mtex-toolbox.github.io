---
title: 'grainBoundary.characteristicShape'
sidebar: function_reference_sidebar
permalink: grainBoundary.characteristicShape_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.characteristicShape.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the characteristic shape of a set of boundary segments: every segment and its antipode,
sorted by direction and laid end to end, the convex, centrally symmetric outline whose
boundary length in each direction is the boundary length the map has in it. A convex
outline of a hundred thousand segments is sampled down to nmax, which keeps its extent

## Syntax

```python
grainBoundary.characteristicShape(x, nmax=1024)
```

MATLAB's [grainBoundary.characteristicShape](grainBoundary.characteristicShape.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L305">source</a></font>
{% endraw %}
