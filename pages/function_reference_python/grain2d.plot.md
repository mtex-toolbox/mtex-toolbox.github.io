---
title: 'grain2d.plot'
sidebar: function_reference_sidebar
permalink: grain2d.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.plot.html
status: Reference
---
{% raw %}
plot(grains), plot(grains, property), plot(grains, grains.meanOrientation)

## Syntax

```python
plot(grains, color=None, faceColor=None, colormap='viridis', colorRange=None, colorbar=False, micronbar=None, refFrame=True, location=None, ipfDirection=None, boundary=True, lineWidth=1.0, lineColor=None, alpha=1.0, legend=None, displayName=None, translucent=None, **kw)
```

The grains drawn as the polygons the boundary encloses, coloured by phase, by a value per
grain, by their mean orientations or an orientation key, or in one colour, with the
boundary on top unless noBoundary. translucent=s fades a grain by its colour, as MATLAB:
s (1 - min(r, g, b)) for a colour, s v / max(v) for a value, so pale grains let the map
below show.

MATLAB's [grain2d.plot](grain2d.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L507">source</a></font>
{% endraw %}
