---
title: 'grainBoundary.simplify'
sidebar: function_reference_sidebar
permalink: grainBoundary.simplify_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.simplify.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

drop the vertices that carry no shape, chain by chain: a vertex goes when leaving it out
moves the boundary by less than epsilon, which on a pixel grid turns a staircase into the
straight line it approximates. The default tolerance is exactly that: a staircase of
spacing d never strays further than d / sqrt(2) from the line it approximates

## Syntax

```python
grainBoundary.simplify(gB, epsilon=None, protect=None, keepGrains=None)
```

MATLAB's [grainBoundary.simplify](grainBoundary.simplify.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L142">source</a></font>
{% endraw %}
