---
title: 'The class sphericalPlot'
sidebar: function_reference_sidebar
permalink: sphericalPlot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalPlot.html
status: Reference
---
{% raw %}
the spherical plot of one axes: its projection, boundary, grid and labels

## Syntax

```python
sP = sphericalPlot(ax, proj)
sP.proj, sP.sR, sP.antipodal, sP.bounds, sP.minData, sP.maxData, sP.mappable
```

## Members

| | |
|---|---|
| [annotateMinMax](sphericalPlot.annotateMinMax_py.html) | the data range in the corners, MATLAB's TL and BL annotations |
| [antipodal](sphericalPlot.antipodal_py.html) | whether the chart shows axes, antipodal directions |
| [hemisphereLabel](sphericalPlot.hemisphereLabel_py.html) | writes upper or lower, the hemisphere shown, in the top right corner of the chart |
| [sR](sphericalPlot.sR_py.html) | the spherical region the chart shows |
| [updateMinMax](sphericalPlot.updateMinMax_py.html) | widens the recorded data range by the finite values drawn |

MATLAB's [sphericalPlot](sphericalPlot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L69">source</a></font>
{% endraw %}
