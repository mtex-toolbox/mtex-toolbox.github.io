---
title: 'SO3FunRBF.calcError'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.calcError_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

the distance of two SO(3) functions on the equispaced grid of the resolution: 'l1' (the
default, as MATLAB's) is half the mean absolute difference, for densities the fraction of the
volume that would have to move to turn one into the other; 'l2' the norm of the difference
over the norm of g. With pole figures second, as MATLAB's calcError(odf, pf), the error of
PoleFigure.calcError, one number per pole figure, the modes and the default its own

## Syntax

```python
SO3FunRBF.calcError(f, g, mode=None, resolution=5*degree, epsilon=None)
```

```python
e = calcError(odf1, odf2)  # 'l1'
e = calcError(odf1, odf2, 'l2', resolution=2.5*degree)
e = calcError(odf, pf, 'RP')  # calcError(pf, odf, 'RP')
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L316">source</a></font>
{% endraw %}
