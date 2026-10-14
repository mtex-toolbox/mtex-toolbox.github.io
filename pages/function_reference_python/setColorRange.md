---
title: 'setColorRange'
sidebar: function_reference_sidebar
permalink: setColorRange_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: setColorRange.html
status: Reference
---
{% raw %}
one colour range over every axes of the current figure ('equal'), each its own ('tight') or
the one given as (lo, hi)

## Syntax

```python
setColorRange(colorRange='equal', fig=None)
```

```python
setColorRange('equal')
setColorRange((0, 4))
```

## Used on

[OrientationGrid](OrientationGrid_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSDSelect](EBSDSelect_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [EBSDSimulation](EBSDSimulation_py.html), [AnisotropicTheory](AnisotropicTheory_py.html), [IsotropicTheory](IsotropicTheory_py.html), [Properties](Properties_py.html), [BoundaryCurvature](BoundaryCurvature_py.html), [CSLBoundaries](CSLBoundaries_py.html), [QuadruplePoints](QuadruplePoints_py.html)

MATLAB's [setColorRange](setColorRange.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L556">source</a></font>
{% endraw %}
