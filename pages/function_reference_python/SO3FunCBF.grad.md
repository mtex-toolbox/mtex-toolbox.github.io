---
title: 'SO3FunCBF.grad'
sidebar: function_reference_sidebar
permalink: SO3FunCBF.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunCBF.grad.html
status: Reference
---
{% raw %}
A method of [SO3FunCBF](SO3FunCBF_index_py.html).

the gradient of a fibre ODF at orientations, or without them the vector field of the
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

Over every pair of a symmetric equivalent h of the crystal direction and the specimen
direction r, the gradient is psi'(t) (g h x r) on the left and psi'(t) (h x g^-1 r) on
the right, t = g h . r and psi' the derivative of the kernel in t.

## Input

| | |
|---|---|
| `SO3F` | SO3FunCBF |

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

[S2Kernel.grad](S2Kernel.grad_py.html), [SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html), [SO3TangentVector](SO3TangentVector_index_py.html)

MATLAB's [SO3FunCBF.grad](SO3FunCBF.grad.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L705">source</a></font>
{% endraw %}
