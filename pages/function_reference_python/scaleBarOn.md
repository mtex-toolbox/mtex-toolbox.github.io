---
title: 'scaleBarOn'
sidebar: function_reference_sidebar
permalink: scaleBarOn_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a scale bar in one corner of a map: a round length near a tenth of its width, written
above the bar, and above it the axes of the specimen frame as they lie on the screen

## Syntax

<div class="mx-form" markdown="1">

```python
label = scaleBarOn(mP)
```

In the lower left corner.

</div>

<div class="mx-form" markdown="1">

```python
label = scaleBarOn(mP, location='ne', length=500, color='w', background='k')
```

500 um, white on black.

</div>

## Description

Every map plot draws one unless micronbar=False, so this is what to call to draw one into a
map plot without, or to draw it again elsewhere; it replaces the bar the map plot had. The
length is a round number near fraction of the width of the map, in a unit that keeps it
readable (nm, um, mm).

## Input

| `mP` | mapPlot, the map plot to draw into, mapPlot(h.axes, ebsd) of a map drawn as h |
| `x` | the map or grains drawn; the extent is taken from mP, so it may be left out |

## Keywords

| keyword | default | description |
|---|---|---|
| `location` | `'sw'` | the corner, 'sw', 'se', 'nw' or 'ne' |
| `fraction` | `0.1` | the length of the bar as a fraction of the width of the map, about |
| `refFrame` | `True` | draw the axes of the specimen frame above the bar |
| `color` | `'k'` | the colour of the bar, the text and the frame of the box |
| `background` | `'w'` | the colour of the box |
| `alpha` | `0.75` | the opacity of the box |
| `length` | `None` | the length of the bar in the map's unit instead of a round one |

## Output

| `label` | str, the length written on the bar, None when the map has no extent |

## See also

[EBSD.plot](EBSD.plot_py.html), [scaleBar](scaleBar_py.html), [EBSDPlotting](EBSDPlotting_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L1211">source</a></font>
{% endraw %}
