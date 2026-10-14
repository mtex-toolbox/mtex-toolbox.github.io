---
title: 'S1FunHarmonic.interpolate'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.interpolate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHarmonic.interpolate.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

the Fourier series through samples on the circle, as MATLAB's: equispaced samples by
quadrature; others merged where they coincide and fitted by least squares at the
bandwidth round(n / 4), regularised by lambda |k|^(2 s), with LSQR

## Syntax

```python
S1FunHarmonic.interpolate(x, values, bandwidth=None, weights=None, regularisation=1e-05, SobolevIndex=2, tol=1e-06, maxIter=100)
```

MATLAB's [S1FunHarmonic.interpolate](S1FunHarmonic.interpolate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L77">source</a></font>
{% endraw %}
