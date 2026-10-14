---
title: 'orientation.calcBinghamODF'
sidebar: function_reference_sidebar
permalink: orientation.calcBinghamODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.calcBinghamODF.html
status: Reference
---
{% raw %}
the estimate from orientations: the eigen decomposition of the quaternion tensor of the
sample projected to the fundamental region about its mean gives the axes, and the
concentrations follow from the eigenvalues, by the large concentration approximation
kappa_i = -1/(2 lambda_i) shifted to a smallest value of zero, or exactly by Newton on the moments

## Syntax

```python
calcBinghamODF(o, weights=None, exact=False)
```

## Used on

[BinghamODFs](BinghamODFs_py.html)

MATLAB's [orientation.calcBinghamODF](orientation.calcBinghamODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L358">source</a></font>
{% endraw %}
