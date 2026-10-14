---
title: 'saveFigure'
sidebar: function_reference_sidebar
permalink: saveFigure_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: saveFigure.html
status: Reference
---
{% raw %}
saveFigure('name.png'): the current figure written cropped to its content, the format by the
extension; a bitmap at 1.5 times the screen resolution, a map at 2.5 times and without
smoothing between its cells, so that no colour is invented between measurements
(MATLAB saveFigure); 'crop' and 'pdf' of MATLAB's TeX tools need nothing here

## Syntax

```python
saveFigure(fname, fig=None, *args, **kwargs)
```

## Used on

[PlottingExport](PlottingExport_py.html)

MATLAB's [saveFigure](saveFigure.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L560">source</a></font>
{% endraw %}
