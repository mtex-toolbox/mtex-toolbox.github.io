---
title: 'grainBoundary.calcGBND'
sidebar: function_reference_sidebar
permalink: grainBoundary.calcGBND_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.calcGBND.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

calcGBND(gB, ebsd, halfwidth=5*degree, nonneg=True): the density of the boundary normals in
the crystal frame of the one phase of gB; calcGBND(gB, grains, moriRef, ...) the density
of the normals of the boundaries near that misorientation, the grain boundary character
distribution, taking both sides of a relation that is its own inverse unless oneSide

## Syntax

```python
grainBoundary.calcGBND(gB, source, moriRef=None, halfwidth=10*degree, nonneg=False, bump=False, oneSide=False)
```

MATLAB's [grainBoundary.calcGBND](grainBoundary.calcGBND.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/gbnd.py#L146">source</a></font>
{% endraw %}
