---
title: 'mapImage.edgeMap'
sidebar: function_reference_sidebar
permalink: mapImage.edgeMap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.edgeMap.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

the edge transform: how unlike its eight neighbours at padWidth pixels each pixel is, every
channel contrast normalised over its 2nd to 98th percentile, a neighbour off the image
differenced against zero. Absolute brightness is not comparable between a band contrast map
and a backscatter image, but their boundaries are, so registration correlates this

## Syntax

```python
mapImage.edgeMap(mg, padWidth=1)
```

MATLAB's [mapImage.edgeMap](mapImage.edgeMap.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L541">source</a></font>
{% endraw %}
