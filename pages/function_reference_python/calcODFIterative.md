---
title: 'calcODFIterative'
sidebar: function_reference_sidebar
permalink: calcODFIterative_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the reconstruction refined successively (MATLAB calcODFIterative): a ladder of kernel
halfwidths from sqrt(e)^(steps-1) times the target down to the target, those above 45
degree dropped, each solved on the grid of its own width and started from the previous
ODF evaluated on that grid, the nodes below the thinning fraction of the mean weight
removed before the solve

## Syntax

```python
calcODFIterative(pf, *args, resolution=None, halfwidth=None, kernel=None, maxSteps=5, thinning=0.025, verbose=False, **kwargs)
```

## Used on

[PoleFigureRefinement](PoleFigureRefinement_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L437">source</a></font>
{% endraw %}
