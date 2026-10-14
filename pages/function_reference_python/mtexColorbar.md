---
title: 'mtexColorbar'
sidebar: function_reference_sidebar
permalink: mtexColorbar_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mtexColorbar.html
status: Reference
---
{% raw %}
a colour bar per axes of the current figure, or one when the ranges agree; toggled off when
the figure has bars; MATLAB's mtexColorbar

## Syntax

A bar per axes, or one for all:

```python
mtexColorbar()
```

A bar with a title:

```python
mtexColorbar(title='misorientation angle')
```

A horizontal bar below:

```python
mtexColorbar('southoutside', title='mrd')
```

A bar per axes, also where the ranges agree:

```python
mtexColorbar('multiple')
```

One bar for all axes needs the same colour range on them, which setColorRange('equal')
gives first. A MATLAB location, 'eastoutside', 'southoutside', 'northoutside',
'westoutside' or without 'outside', may stand in place of fig or be given as location=;
further keywords go to matplotlib's colorbar.

## Output

| | |
|---|---|
| `bars` | list of the matplotlib colour bars drawn, empty when they were removed |

## Keywords

| | default | |
|---|---|---|
| `fig` | `None` | the mtexFigure; the current one by default |
| `title` | `None` | the label of the bar, or a list of one per bar |

## See also

[mtexFigure.colorbar](mtexFigure.colorbar_py.html), [setColorRange](setColorRange_py.html), [setColorScale](setColorScale_py.html)

## Used on

[OrientationGrid](OrientationGrid_py.html), [OrientationInversePoleFigure](OrientationInversePoleFigure_py.html), [OrientationPoleFigure](OrientationPoleFigure_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DProperties](Grains3DProperties_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDFilling](EBSDFilling_py.html), [EBSDGROD](EBSDGROD_py.html)

MATLAB's [mtexColorbar](mtexColorbar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L699">source</a></font>
{% endraw %}
