---
title: 'mapImage.interp'
sidebar: function_reference_sidebar
permalink: mapImage.interp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.interp.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

the image values at positions: bilinear on the grid by default, 'nearest' or 'cubic';
outside the grid NaN, or the nearest border value with extrapolationMethod='nearest'

## Syntax

```python
mapImage.interp(self, pos, method='linear', extrapolationMethod='none')
```

MATLAB's [mapImage.interp](mapImage.interp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L243">source</a></font>
{% endraw %}
