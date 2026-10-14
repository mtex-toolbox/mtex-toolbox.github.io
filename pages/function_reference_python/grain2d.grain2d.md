---
title: 'grain2d.grain2d'
sidebar: function_reference_sidebar
permalink: grain2d.grain2d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.grain2d.html
status: Reference
---
{% raw %}
the grains of a map, MATLAB's grain2d: a table of ids, phases, pixel counts, mean orientations
and properties, with the boundary, the inner boundary and the loops of every grain's polygon

## Syntax

```python
grain2d(id, phaseId, CSList, numPixel, meanRotation, GOS, frame, prop=None, boundary=None, innerBoundary=None, loops=None, phaseMap=None)
```

```python
grains = calcGrains(ebsd)
grains['Forsterite'], grains[grains.numPixel > 10], grains.selectByGrainId(ids)
```

MATLAB's [grain2d.grain2d](grain2d.grain2d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/grains.py#L74">source</a></font>
{% endraw %}
