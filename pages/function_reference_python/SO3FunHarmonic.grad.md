---
title: 'SO3FunHarmonic.grad'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.grad.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the gradient, a harmonic vector field on SO(3), left or with side='right' right; with x its
values at the orientations x

## Syntax

<div class="mx-form" markdown="1">

```python
G = SO3F.grad()
```

The gradient, an SO3VectorFieldHarmonic.

</div>

<div class="mx-form" markdown="1">

```python
g = SO3F.grad(ori)
```

Its values at orientations, tangent vectors.

</div>

<div class="mx-form" markdown="1">

```python
g = SO3F.grad(ori, side='right')
```

The right tangent vectors, in the crystal frame.

</div>

<div class="mx-form" markdown="1">

```python
ori_new = exp(5*degree*normalize(g))
```

5 degree along the gradient from ori.

</div>

## Description

The left gradient gives its tangent vectors in the specimen frame, the right one in the
crystal frame; MATLAB passes SO3TangentSpace.rightVector for the right. The tangent vectors
carry their orientations, so exp takes no second argument as MATLAB's exp(v, rot).

## Input

| `SO3F` | SO3FunHarmonic |
| `x` | orientation, where to evaluate the gradient |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `'left'` | 'left' or 'right', the tangent space |

## Output

| `G` | SO3VectorFieldHarmonic |
| `g` | SO3TangentVector, the values at x |

## See also

[SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html), [orientation.exp](orientation.exp_py.html), [SO3FunRBF.grad](SO3FunRBF.grad_py.html), [SO3FunCBF.grad](SO3FunCBF.grad_py.html)

MATLAB's [SO3FunHarmonic.grad](SO3FunHarmonic.grad.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L688">source</a></font>
{% endraw %}
