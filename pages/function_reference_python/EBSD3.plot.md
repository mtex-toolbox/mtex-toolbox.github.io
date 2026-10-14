---
title: 'EBSD3.plot'
sidebar: function_reference_sidebar
permalink: EBSD3.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.plot.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

plot(ebsd), plot(ebsd, values), plot(ebsd, ori): three orthogonal slices through the
voxels of a volume, as MATLAB's EBSD3/plot shows it in slice planes; at=(i, j, k) the voxel
index of the three slices, None for a slice left out, the middle by default

## Syntax

```python
EBSD3.plot(ebsd, color=None, how2plot=None, figSize=None, at=None, **kw)
```

MATLAB's [EBSD3.plot](EBSD3.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L73">source</a></font>
{% endraw %}
