---
title: 'S1Fun.S1Fun'
sidebar: function_reference_sidebar
permalink: S1Fun.S1Fun_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Fun.S1Fun.html
status: Reference
---
{% raw %}
a function on the circle by its Fourier coefficients fhat, k = -L..L, over e^{-ikx} as MATLAB's

## Syntax

```python
S1FunHarmonic(fhat, *, real=None, bandwidth=None, dtype=None)
```

```python
S1FunHarmonic(fhat)
S1FunHarmonic(fun, bandwidth=L)     the coefficients of a callable by quadrature
S1FunHarmonic(psi, bandwidth=L)     the coefficients of an S1 kernel
S1FunHarmonic(f, bandwidth=L)       another function truncated, or any with a harmonic form
```

## Used on

[S1FunHarmonics](S1FunHarmonics_py.html)

MATLAB's [S1Fun.S1Fun](S1Fun.S1Fun.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L34">source</a></font>
{% endraw %}
