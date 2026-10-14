---
title: 'grain3d.smoothBoundary'
sidebar: function_reference_sidebar
permalink: grain3d.smoothBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.smoothBoundary.html
status: Reference
---
{% raw %}
A method of [grain3d](grain3d_index_py.html).

the grains with their boundary surfaces smoothed, hierarchically: the triple lines along
themselves first, then the faces; the vertices where four or more grains meet stay

## Syntax

```python
grains.smoothBoundary(10)                 a laplaceFilter of 10 iterations
grains.smoothBoundary(taubinFilter(20))   any boundary filter
grains.smoothBoundary(5, moveOuterBoundary=True)
```

## Signature

```python
grain3d.smoothBoundary(self, *args, **kwargs)
```

MATLAB's [grain3d.smoothBoundary](grain3d.smoothBoundary.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L413">source</a></font>
{% endraw %}
