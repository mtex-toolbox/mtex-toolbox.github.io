---
title: 'plotzOutOfPlane'
sidebar: function_reference_sidebar
permalink: plotzOutOfPlane_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plotzOutOfPlane.html
status: Reference
---
{% raw %}
the default plotting convention of the session, and setting it: default('y↑→x'),
default(zvector, xvector) make a convention the default, default(north=xvector),
default(intoScreen=zvector) change those directions and keep the rest (MATLAB's plotx2north,
plotzIntoPlane); save=True keeps it in mtex_settings.json

## Syntax

```python
plottingConvention.default(outOfScreen=None, east=None, save=False, **directions)
```

```python
plottingConvention.default('y↓→x')
plottingConvention.default(north=xvector, save=True)
```

MATLAB's [plotzOutOfPlane](plotzOutOfPlane.html)
{% endraw %}
