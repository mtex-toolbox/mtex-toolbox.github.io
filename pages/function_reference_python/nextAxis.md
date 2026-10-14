---
title: 'nextAxis'
sidebar: function_reference_sidebar
permalink: nextAxis_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: nextAxis.html
status: Reference
---
{% raw %}
the axes the next plot goes into: the next of the current figure, or the one given by
its number or its row and column

## Syntax

The next axes:

```python
nextAxis()
```

The third axes:

```python
nextAxis(2)
```

The axes in the second row and the first column:

```python
nextAxis(1, 0)
```

The next axes of a figure given:

```python
ax = nextAxis(fig=mtexFig)
```

The axes are counted from 0, where MATLAB counts them from 1. An axes made by nextAxis stays
blank, without a frame, until a plot draws into it, as MATLAB leaves an unused cell; the
axes before k that do not exist yet are made blank too. Without a current figure a new one
is made.

## Input

| | |
|---|---|
| `k` | the number of the axes, counted from 0, or the row with j |
| `j` | the column, counted from 0 |

## Output

| | |
|---|---|
| `ax` | the matplotlib axes the next plot takes |

## Keywords

| | default | |
|---|---|---|
| `fig` | `None` | the mtexFigure; the current one by default |

## See also

[mtexFigure](mtexFigure_index_py.html), [newMtexFigure](newMtexFigure_py.html), [Multiplot](Multiplot_py.html)

## Used on

[CrystalOperations](CrystalOperations_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html), [CrystalSymmetries](CrystalSymmetries_py.html), [SymmetryAlignment](SymmetryAlignment_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3DOperations](Grains3DOperations_py.html), [Grains3DProperties](Grains3DProperties_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [NeperInterface](NeperInterface_py.html), [EBSDGrid](EBSDGrid_py.html)

MATLAB's [nextAxis](nextAxis.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L407">source</a></font>
{% endraw %}
