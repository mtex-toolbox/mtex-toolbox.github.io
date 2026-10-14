---
title: 'fibreODF'
sidebar: function_reference_sidebar
permalink: fibreODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibreODF.html
status: Reference
---
{% raw %}
a fibre ODF from crystal and specimen directions or from a fibre of P1, the weights
normalised to a mean of one

## Syntax

```python
fibreODF(h, r=None, *args, kernel=None, halfwidth=None, weights=None)
```

```python
odf = fibreODF(h, r)  # the de la Vallee Poussin kernel of halfwidth 10 degree
odf = fibreODF(h, r, halfwidth=15*degree)
odf = fibreODF(h, r, psi)  # the S2 kernel psi, also kernel=psi
odf = fibreODF(h, r, ss)  # the specimen frame named
odf = fibreODF(f, weights=w)  # from a fibre f, one weight per fibre
```

## Used on

[OrientationFibre](OrientationFibre_py.html), [ClusterDemo](ClusterDemo_py.html), [OptimalKernel](OptimalKernel_py.html), [BinghamODFs](BinghamODFs_py.html), [EulerAngleSections](EulerAngleSections_py.html), [FibreODFs](FibreODFs_py.html), [ODFCharacteristics](ODFCharacteristics_py.html), [ODFExport](ODFExport_py.html), [ODFInversePoleFigure](ODFInversePoleFigure_py.html), [ODFPlot](ODFPlot_py.html), [ODFPoleFigure](ODFPoleFigure_py.html), [RandomSampling](RandomSampling_py.html)

MATLAB's [fibreODF](fibreODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L791">source</a></font>
{% endraw %}
