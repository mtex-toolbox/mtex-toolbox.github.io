---
title: 'SO3VectorFieldRBF.SO3VectorFieldRBF'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldRBF.SO3VectorFieldRBF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldRBF.SO3VectorFieldRBF.html
status: Reference
---
{% raw %}
a vector field on SO(3) as a sum of radial kernels at centre orientations with weight vectors,
exactly equivariant; from tangent vectors at orientations or another field it is fitted

## Syntax

```python
SO3VectorFieldRBF(center, weights=None, psi=None, *args, kernel=None, resolution=None)
```

```python
SO3VectorFieldRBF(center, weights, psi)
SO3VectorFieldRBF(t, kernel=psi)                  through tangent vectors t
SO3VectorFieldRBF(F, resolution=5*degree)         another field on a grid
```

MATLAB's [SO3VectorFieldRBF.SO3VectorFieldRBF](SO3VectorFieldRBF.SO3VectorFieldRBF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L748">source</a></font>
{% endraw %}
