---
title: 'hold'
sidebar: function_reference_sidebar
permalink: hold_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
hold on: the next plot goes into the current axes

## Syntax

The next plots go into the current axes:

```python
hold(True)
```

Each plot takes its axes for itself again:

```python
hold(False)
```

MATLAB's words, the figure held returned:

```python
mtexFig = hold('on')
```

## Signature

```python
hold(on=True)
```

## Used on

[CrystalDirections](CrystalDirections_py.html), [CrystalOperations](CrystalOperations_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html), [CrystalShapes](CrystalShapes_py.html), [FundamentalSector](FundamentalSector_py.html), [QuasiCrystals](QuasiCrystals_py.html), [DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [OrientationFibre](OrientationFibre_py.html), [OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [OrientationGrid](OrientationGrid_py.html), [OrientationStandard](OrientationStandard_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L516">source</a></font>
{% endraw %}
