---
title: 'grainBoundary.refine'
sidebar: function_reference_sidebar
permalink: grainBoundary.refine_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.refine.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

split every segment into pieces of about length delta: the old vertices stay where they
are and the new ones lie on the old segments, so the boundary keeps its shape and its
length and only the sampling gets finer, which gives a smoothing that follows evenly
spaced degrees of freedom. Every piece carries the grains, the phases, the pair of
measurements and the misorientation of the segment it lies on

## Syntax

```python
grainBoundary.refine(gB, delta=None)
```

MATLAB's [grainBoundary.refine](grainBoundary.refine.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L269">source</a></font>
{% endraw %}
