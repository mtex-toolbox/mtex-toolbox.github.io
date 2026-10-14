---
title: 'mapImage.plot'
sidebar: function_reference_sidebar
permalink: mapImage.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.plot.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

plot(mg), plot(imgList), plot(imgList, edge=True), plot(mg, channel=1)

## Syntax

```python
mapImage.plot(mg, channel=None, edge=False, micronbar=None, refFrame=True, colormap=None, layout=None, figSize=None, **kw)
```

An image drawn where it sits on the specimen, in the screen orientation of its frame; a list
of images one axes each, titled by their names. One channel is grey through the colour map,
three are drawn as RGB; edge draws the edge transform a registration matches on, its
contrast stretched over the 2nd to 98th percentile.

MATLAB's [mapImage.plot](mapImage.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L1038">source</a></font>
{% endraw %}
