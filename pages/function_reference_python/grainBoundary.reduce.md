---
title: 'grainBoundary.reduce'
sidebar: function_reference_sidebar
permalink: grainBoundary.reduce_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.reduce.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

keep every n-th vertex along each chain, whatever the shape: it thins a straight run and
a corner alike, so prefer simplify, which spends its vertices where the shape
needs them

## Syntax

```python
grainBoundary.reduce(gB, n=2, protect=None, keepGrains=None)
```

MATLAB's [grainBoundary.reduce](grainBoundary.reduce.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L130">source</a></font>
{% endraw %}
