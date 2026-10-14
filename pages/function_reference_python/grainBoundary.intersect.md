---
title: 'grainBoundary.intersect'
sidebar: function_reference_sidebar
permalink: grainBoundary.intersect_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.intersect.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

where the line from p to q crosses each segment, MATLAB's [x, y] = intersect(gB, xy1, xy2):
the coordinates per segment, NaN where it is not crossed; segLength=True adds the
intercepts between successive crossings along the line

## Syntax

```python
grainBoundary.intersect(self, p, q, segLength=False)
```

MATLAB's [grainBoundary.intersect](grainBoundary.intersect.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L464">source</a></font>
{% endraw %}
