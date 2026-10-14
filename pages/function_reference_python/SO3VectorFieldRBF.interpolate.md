---
title: 'SO3VectorFieldRBF.interpolate'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldRBF.interpolate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldRBF.interpolate.html
status: Reference
---
{% raw %}
the function of least squares through values at nodes, on SO(3) for orientations, on the
sphere for directions, a vector field for vector values, fitted by LSQR with a Sobolev
penalty lambda_ of order s

## Syntax

```python
interpolate(nodes, values=None, *, bandwidth=None, lambda_=None, s=2, weights=None, maxIter=100, tol=None, withParameters=False)
```

```python
interpolate(ori, y)
interpolate(v, y, bandwidth=16, lambda_=1e-4)
interpolate(ori, y, withParameters=True)      also LSQR's flag, residual and iterations
```

MATLAB's [SO3VectorFieldRBF.interpolate](SO3VectorFieldRBF.interpolate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/density.py#L149">source</a></font>
{% endraw %}
