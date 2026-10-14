---
title: 'SO3Fun.calcComponents'
sidebar: function_reference_sidebar
permalink: SO3Fun.calcComponents_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.calcComponents.html
status: Reference
---
{% raw %}
the modal orientations of an SO(3) function by steepest ascent from seeds, their volumes and which
mode each seed flowed into; modes within the tolerance merge, and modes of less than one percent
are dropped unless exact=True; the seeds are the centres of a radial function or a 2.5 degree grid

## Syntax

```python
calcComponents(f, seed=None, weights=None, tol=1.5*degree, maxIter=100, radius=inf, exact=False, verbose=True)
```

```python
modes, weights, centerId = calcComponents(odf)
modes, weights, centerId = calcComponents(odf, seed=ori, radius=10*degree, exact=True)
```

## Used on

[ODFComponents](ODFComponents_py.html)

MATLAB's [SO3Fun.calcComponents](SO3Fun.calcComponents.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L675">source</a></font>
{% endraw %}
