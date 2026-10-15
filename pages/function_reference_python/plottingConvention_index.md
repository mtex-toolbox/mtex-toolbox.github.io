---
title: 'The class plottingConvention'
sidebar: function_reference_sidebar
permalink: plottingConvention_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plottingConvention_index.html
status: Reference
---
{% raw %}
how a reference frame is laid out on screen: one rotation taking the screen axes to the
reference axes, `east = rot * x`, `north = rot * y`, `outOfScreen = rot * z`

## Syntax

<div class="mx-form" markdown="1">

```python
pC = plottingConvention(outOfScreen, east)
```

</div>

<div class="mx-form" markdown="1">

```python
pC = plottingConvention('y↑→x')
```

Each axis next to the screen direction it points to.

</div>

<div class="mx-form" markdown="1">

```python
pC = plottingConvention.ij
```

X east, y south, z into the screen.

</div>

## Members

| [char](plottingConvention.char_py.html) | 'y↑→x' when both screen axes are reference axes, the three names run together otherwise |
| [default3D](plottingConvention.default3D_py.html) | a tilted view for three dimensional plots |
| [default](plottingConvention.default_py.html) | the session default is the convention of the default specimen frame, so that everything holding that frame follows a change of it |
| [east](plottingConvention.east_py.html) | the reference direction pointing east on screen |
| [edax](plottingConvention.edax_py.html) | the EDAX/TSL frame of the given setting, 1 to 4, z out of the screen |
| [ij](plottingConvention.ij_py.html) | the convention of images: x east, y south, z into the screen |
| [intoScreen](plottingConvention.intoScreen_py.html) | the reference direction pointing into the screen |
| [isPictogram](plottingConvention.isPictogram_py.html) | whether both screen axes lie along reference axes, so that the convention reads as 'y↑→x' |
| [makeDefault](plottingConvention.makeDefault_py.html) | makes this convention the session default, that of the default specimen frame |
| [north](plottingConvention.north_py.html) | the reference direction pointing north on screen |
| [outOfScreen](plottingConvention.outOfScreen_py.html) | the reference direction pointing out of the screen |
| [setView](plottingConvention.setView_py.html) | a polar axes turned as the plotting convention says, a 3D axes looking down its out of screen direction |
| [south](plottingConvention.south_py.html) | the reference direction pointing south on screen |
| [west](plottingConvention.west_py.html) | the reference direction pointing west on screen |

## Used on

[Grains3D](Grains3D_py.html), [Grains3DOperations](Grains3DOperations_py.html), [SphericalProjections](SphericalProjections_py.html), [S2FunPlotting](S2FunPlotting_py.html)

MATLAB's [plottingConvention_index](plottingConvention_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plottingconvention.py#L31">source</a></font>
{% endraw %}
