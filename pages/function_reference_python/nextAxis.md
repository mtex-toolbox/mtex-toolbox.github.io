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
nextAxis: the next plot goes into the next axes of the current figure; nextAxis(k) into
the axes k, nextAxis(i, j) into the one in row i and column j, all counted from 0 (MATLAB
counts them from 1); fig= names the mtexFigure, the current one by default

## Syntax

```python
nextAxis(k=None, j=None, fig=None)
```

```python
nextAxis()               # the next axes
nextAxis(2)              # the third axes
nextAxis(1, 0)           # the axes in the second row and the first column
ax = nextAxis(fig=mtexFig)
```

## Used on

[CrystalOperations](CrystalOperations_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html), [CrystalSymmetries](CrystalSymmetries_py.html), [SymmetryAlignment](SymmetryAlignment_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3DOperations](Grains3DOperations_py.html), [Grains3DProperties](Grains3DProperties_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [NeperInterface](NeperInterface_py.html), [EBSDGrid](EBSDGrid_py.html)

MATLAB's [nextAxis](nextAxis.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L379">source</a></font>
{% endraw %}
