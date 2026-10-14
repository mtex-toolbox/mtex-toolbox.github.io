---
title: 'mapImage.rescale'
sidebar: function_reference_sidebar
permalink: mapImage.rescale_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.rescale.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

the values stretched to [lo, hi], all channels of an image together or each on its own; a
non finite value is left out of the range and left alone, a flat image unchanged

## Syntax

```python
mapImage.rescale(mg, lo=0.0, hi=1.0, perChannel=False)
```

MATLAB's [mapImage.rescale](mapImage.rescale.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L406">source</a></font>
{% endraw %}
