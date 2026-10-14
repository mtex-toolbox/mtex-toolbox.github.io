---
title: 'SO3FunRBF.SO3FunRBF'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.SO3FunRBF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.SO3FunRBF.html
status: Reference
---
{% raw %}
a function on SO(3) as a sum of radial kernels psi at centre orientations with weights, plus a
constant c0; the weights default to a mean of one

## Syntax

```python
SO3FunRBF(center, psi=None, weights=None, c0=0.0)
```

```python
SO3FunRBF(ori, psi, weights, c0)
```

## Used on

[SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3FunRBF.SO3FunRBF](SO3FunRBF.SO3FunRBF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L141">source</a></font>
{% endraw %}
