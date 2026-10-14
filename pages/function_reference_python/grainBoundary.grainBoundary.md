---
title: 'grainBoundary.grainBoundary'
sidebar: function_reference_sidebar
permalink: grainBoundary.grainBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.grainBoundary.html
status: Reference
---
{% raw %}
the grain boundary of a map: the segments F between the vertices V in walk order, each with
its two grains, pixels, phases and misrotation, the grain in grainId[:, 0] to the left of the
walk; chains, junctions and triple points are derived from that order

## Syntax

```python
grainBoundary(V, F, grainId, ebsdId, phaseId, misrotation, CSList, plane, frame, scanUnit='um')
```

```python
gB = grains.boundary
gB['Forsterite', 'Enstatite']
gB.segLength, gB.misorientation
```

MATLAB's [grainBoundary.grainBoundary](grainBoundary.grainBoundary.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L50">source</a></font>
{% endraw %}
