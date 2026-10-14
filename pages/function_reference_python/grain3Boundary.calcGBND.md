---
title: 'grain3Boundary.calcGBND'
sidebar: function_reference_sidebar
permalink: grain3Boundary.calcGBND_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3Boundary.calcGBND.html
status: Reference
---
{% raw %}
the boundary normal distribution of a 3D boundary: the face normals in specimen coordinates
weighted by area, with grains the normals in the crystal frame of the one phase, with moriRef
the grain boundary character of the faces whose misorientation is near moriRef; a planar
grainBoundary goes to the calcGBND of the traces

## Syntax

```python
calcGBND(gB, *args, **kwargs)
```

```python
calcGBND(gB3)
calcGBND(gB3, grains)
calcGBND(gB3, grains, moriRef, halfwidth=5*degree)
```

## Used on

[Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [BoundaryNormalDistribution](BoundaryNormalDistribution_py.html)

MATLAB's [grain3Boundary.calcGBND](grain3Boundary.calcGBND.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/gbnd3d.py#L22">source</a></font>
{% endraw %}
