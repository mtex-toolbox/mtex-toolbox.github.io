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

One range over every axes:

```python
setColorRange('equal')
```

The range given:

```python
setColorRange((0, 4))
```

Each axes of a figure given its own range:

```python
setColorRange('tight', fig=mtexFig)
```

MATLAB's 'log' option is setColorScale('log'), its choice of the figures ('all', 'current',
'figure') the keyword fig, and 'zero2white' has no counterpart.

## Input

| | |
|---|---|
| `colorRange` | 'equal', 'tight' or (lo, hi) |

## Keywords

| | default | |
|---|---|---|
| `fig` | `None` | the mtexFigure; the current one by default |

## See also

[mtexFigure.setColorRange](mtexFigure.setColorRange_py.html), [setColorScale](setColorScale_py.html), [mtexColorbar](mtexColorbar_py.html)

## Used on

[OrientationGrid](OrientationGrid_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSDSelect](EBSDSelect_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [EBSDSimulation](EBSDSimulation_py.html), [AnisotropicTheory](AnisotropicTheory_py.html), [IsotropicTheory](IsotropicTheory_py.html), [Properties](Properties_py.html), [BoundaryCurvature](BoundaryCurvature_py.html), [CSLBoundaries](CSLBoundaries_py.html), [QuadruplePoints](QuadruplePoints_py.html)

MATLAB's [setColorRange](setColorRange.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L799">source</a></font>
{% endraw %}
