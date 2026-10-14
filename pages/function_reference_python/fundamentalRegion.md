---
title: 'fundamentalRegion'
sidebar: function_reference_sidebar
permalink: fundamentalRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fundamentalRegion.html
status: Reference
---
{% raw %}
fundamentalRegion(x, ...) is x.fundamentalRegion(...), the method of the object passed

## Syntax

```python
fundamentalRegion(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [orientation](orientation.fundamentalRegion_py.html) | the fundamental region of the orientations, the orientationRegion of the groups of CS and SS |
| [referenceFrame](referenceFrame.fundamentalRegion_py.html) | the fundamental region in orientation space of this group, or of the pair with another frame |
| [symmetry](symmetry.fundamentalRegion_py.html) | the fundamental region of orientations of this group and another one, the Dirichlet domain of the identity |

## Used on

[OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [OrientationVisualization3d](OrientationVisualization3d_py.html), [CSLBoundaries](CSLBoundaries_py.html), [MisorientationGrainExchangeSym](MisorientationGrainExchangeSym_py.html)

MATLAB's [fundamentalRegion](fundamentalRegion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
