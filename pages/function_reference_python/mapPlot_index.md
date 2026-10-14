---
title: 'The class mapPlot'
sidebar: function_reference_sidebar
permalink: mapPlot_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the map plot of one axes: the axes, the layout of the plane on the screen, the unit

## Syntax

```python
mP = mapPlot(ax, x)
mP.layout, mP.extent, mP.unit, mP.mappable
```

## Members

| | |
|---|---|
| [extend](mapPlot.extend_py.html) | more data drawn into the map widen it, as hold on does in MATLAB, and the scale bar follows the new limits |
| [followView](mapPlot.followView_py.html) | a zoom, by xlim and ylim or in a window, takes the scale bar into the new view, as MATLAB redraws its bar in the corner of what is shown |
| [mappable](mapPlot.mappable_py.html) | every drawing coloured by values, so that a colour map or range set afterwards reaches all of them, as MATLAB's does |
| [onScreen](mapPlot.onScreen_py.html) | screen coordinates of points of the map plane, the layout applied to them |
| [outOfScreen](mapPlot.outOfScreen_py.html) | the normal of the map plane that points at the viewer, who looks from the other side when the layout flips the plane |
| [screenAxisNames](mapPlot.screenAxisNames_py.html) | which reference axis runs to the right and which up under the layout, by name and sign |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L40">source</a></font>
{% endraw %}
