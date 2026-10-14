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

<div class="mx-form" markdown="1">

```python
hold(True)
```

The next plots go into the current axes.

</div>

<div class="mx-form" markdown="1">

```python
hold(False)
```

Each plot takes its axes for itself again.

</div>

<div class="mx-form" markdown="1">

```python
mtexFig = hold('on')
```

MATLAB's words, the figure held returned.

</div>

## Description

A plain matplotlib figure opened after the last MTEX figure is adopted as an mtexFigure;
without any figure a new one is made.

## Input

| `on` | True or 'on' to hold, False or 'off' to release |

## Output

| `mtexFig` | the mtexFigure held |

## See also

[gcm](gcm_py.html), [nextAxis](nextAxis_py.html), [mtexFigure](mtexFigure_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
hold(on=True)
```

</div>

## Used on

[CrystalDirections](CrystalDirections_py.html), [CrystalOperations](CrystalOperations_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html), [CrystalShapes](CrystalShapes_py.html), [FundamentalSector](FundamentalSector_py.html), [QuasiCrystals](QuasiCrystals_py.html), [DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [OrientationFibre](OrientationFibre_py.html), [OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [OrientationGrid](OrientationGrid_py.html), [OrientationStandard](OrientationStandard_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L686">source</a></font>
{% endraw %}
