---
title: 'orientation.plotPDF'
sidebar: function_reference_sidebar
permalink: orientation.plotPDF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.plotPDF.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

plotPF(ori, h), plotPF(ori, data, h), plotPF(ori, h, points=100, contourf=True, antipodal=True),
plotPF(odf, h), plotPF(pf)

## Syntax

```python
orientation.plotPDF(o, *args, points=None, all=False, superposition=None, **kw)
```

The pole figures of a list of orientations: every orientation applied to every equivalent
of h, as markers on the specimen sector, coloured by a value per orientation when given;
a style draws the density of the poles instead. An ODF draws its pole figures, a measured
PoleFigure itself (MATLAB's plotPDF).

MATLAB's [orientation.plotPDF](orientation.plotPDF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polefigureplot.py#L198">source</a></font>
{% endraw %}
