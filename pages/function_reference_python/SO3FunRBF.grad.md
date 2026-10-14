---
title: 'SO3FunRBF.grad'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.grad.html
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

the gradient of a kernel sum at orientations, or without them the vector field of the
gradients of its harmonic expansion, as MATLAB's grad

## Syntax

The gradients at ori, tangent vectors on the left:

```python
g = SO3F.grad(ori)
```

Tangent vectors on the right, in crystal coordinates:

```python
g = SO3F.grad(ori, side='right')
```

The gradient field, an SO3VectorFieldHarmonic:

```python
G = SO3F.grad()
```

Every centre contributes minus the kernel's angular derivative along the geodesic to every
symmetric equivalent within its support; a query with none in reach takes the nearest
centre alone. The left side expresses a tangent vector in specimen coordinates, the right
one in crystal coordinates.

## Input

| | |
|---|---|
| `SO3F` | SO3FunRBF |

## Output

| | |
|---|---|
| `g` | SO3TangentVector at the orientations |
| `G` | SO3VectorFieldHarmonic without them |

## Keywords

| | default | |
|---|---|---|
| `x` | `None` | the orientations; without them the gradient field is returned |
| `side` | `'left'` | 'left' or 'right', the side of the tangent vectors |

## See also

[SO3Kernel.grad](SO3Kernel.grad_py.html), [SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html), [SO3TangentVector](SO3TangentVector_index_py.html)

MATLAB's [SO3FunRBF.grad](SO3FunRBF.grad.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L328">source</a></font>
{% endraw %}
