---
title: 'plotS2Grid'
sidebar: function_reference_sidebar
permalink: plotS2Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plotS2Grid.html
status: Reference
---
{% raw %}
plotS2Grid(resolution=0.5 * degree, 'upper', cs): the directions a chart samples its surface
at, a (theta, rho) array in the frame given, so that values computed on it are drawn as they
lie, contourf(rGrid, values), without interpolation; MATLAB's plotS2Grid

## Syntax

```python
plotS2Grid(*args, resolution=1*degree, upper=False, lower=False, complete=False, antipodal=None)
```

## Used on

[SchmidFactor](SchmidFactor_py.html)

MATLAB's [plotS2Grid](plotS2Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L581">source</a></font>
{% endraw %}
