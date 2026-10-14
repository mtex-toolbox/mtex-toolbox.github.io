---
title: 'S2FunHarmonic.grad'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.grad.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the surface gradient: a vector field, or its values at the directions x; MATLAB's grad

## Syntax

<div class="mx-form" markdown="1">

```python
sVF = grad(sF)
```

The gradient as a vector field.

</div>

<div class="mx-form" markdown="1">

```python
g = grad(sF, v)
```

The gradient at the directions v, vector3d.

</div>

## Description

The gradient is tangent to the sphere, the derivative of the function along the sphere.

## Input

| `sF` | S2FunHarmonic |

## Keywords

| keyword | default | description |
|---|---|---|
| `x` | `None` | vector3d, the directions at which to evaluate the gradient |

## Output

| `sVF` | S2VectorFieldHarmonic, or vector3d at x |

## See also

[S2VectorFieldHarmonic](S2VectorFieldHarmonic_index_py.html), [S2FunHarmonic.laplace](S2FunHarmonic.laplace_py.html)

MATLAB's [S2FunHarmonic.grad](S2FunHarmonic.grad.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L718">source</a></font>
{% endraw %}
