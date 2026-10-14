---
title: 'EBSD.plot'
sidebar: function_reference_sidebar
permalink: EBSD.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.plot.html
status: Reference
---
{% raw %}
plot(ebsd), plot(ebsd, values), plot(ebsd, ori), plot(ebsd, rgb), plot(ebsd, faceColor='black')

## Syntax

```python
plot(ebsd, color=None, faceColor=None, backend=None, colormap='viridis', colorRange=None, colorbar=False, micronbar=None, refFrame=True, location=None, ipfDirection=None, maxPixels=None, edgeColor=None, lineWidth=0.5, alpha=1.0, legend=None, displayName=None, markerSize=4, **kw)
```

A spatial EBSD map coloured by phase, by a value per measurement, by orientations through
the inverse pole figure key of their phase, by an orientation colour key, or in one
colour. backend is 'imagesc' for the picture a rigid lattice is, 'patch' for one cell per
measurement, 'scatter' for the measurements alone; by default the first the map allows.

MATLAB's [EBSD.plot](EBSD.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L352">source</a></font>
{% endraw %}
