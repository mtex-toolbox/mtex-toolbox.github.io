---
title: 'newMtexFigure'
sidebar: function_reference_sidebar
permalink: newMtexFigure_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: newMtexFigure.html
status: Reference
---
{% raw %}
a new mtexFigure laid out for n axes, which becomes the current one

## Syntax

A new figure:

```python
mtexFig = newMtexFigure()
```

Laid out for 4 axes, large:

```python
mtexFig = newMtexFigure(4, figSize='large')
```

One row of three axes:

```python
mtexFig = newMtexFigure(layout=(1, 3))
```

The keywords are those of mtexFigure: figSize, hold, figure, columns, layout,
innerPlotSpacing, outerPlotSpacing, marginx, marginy. The figure is always new, so MATLAB's
second output, whether it is, has no counterpart.

## Input

| | |
|---|---|
| `n` | the number of axes the layout is made for |

## Output

| | |
|---|---|
| `mtexFig` | mtexFigure |

## See also

[mtexFigure](mtexFigure_index_py.html), [nextAxis](nextAxis_py.html), [gcm](gcm_py.html)

## Signature

```python
newMtexFigure(n=1, **kwargs)
```

## Used on

[CrystalReferenceSystem](CrystalReferenceSystem_py.html), [FundamentalSector](FundamentalSector_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3DOperations](Grains3DOperations_py.html), [Grains3DProperties](Grains3DProperties_py.html), [Grains3DReconstruction](Grains3DReconstruction_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [NeperInterface](NeperInterface_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html)

MATLAB's [newMtexFigure](newMtexFigure.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L494">source</a></font>
{% endraw %}
