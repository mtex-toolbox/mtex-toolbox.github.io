---
title: 'mapImage.imboxfilt'
sidebar: function_reference_sidebar
permalink: mapImage.imboxfilt_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.imboxfilt.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

a box filter of k pixels, or (rows, cols), odd: the window shrinks at the border and around
a missing value, so a NaN padding neither spreads nor darkens the frame (MATLAB's own,
movmean down the columns and then along the rows)

## Syntax

<div class="mx-form" markdown="1">

```python
mapImage.imboxfilt(mg, k=3)
```

</div>

MATLAB's [mapImage.imboxfilt](mapImage.imboxfilt.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L582">source</a></font>
{% endraw %}
