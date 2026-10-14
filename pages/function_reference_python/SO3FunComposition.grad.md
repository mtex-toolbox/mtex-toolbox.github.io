---
title: 'SO3FunComposition.grad'
sidebar: function_reference_sidebar
permalink: SO3FunComposition.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunComposition.grad.html
status: Reference
---
{% raw %}
A method of [SO3FunComposition](SO3FunComposition_index_py.html).

the gradient with respect to the tangent space basis, at the orientations x or as a
field, left or right sided; MATLAB's grad

## Syntax

<div class="mx-form" markdown="1">

```python
G = SO3F.grad()
```

The gradient field.

</div>

<div class="mx-form" markdown="1">

```python
g = G(ori)
```

Its values at orientations.

</div>

<div class="mx-form" markdown="1">

```python
G = SO3F.grad(side='right')
```

The right sided gradient.

</div>

## Description

A function without a harmonic form is differentiated by central differences of 0.05
degree along the three axes, a field evaluated when asked, as SO3F.grad(ori) is.

## Input

| `SO3F` | SO3Fun |

## Keywords

| keyword | default | description |
|---|---|---|
| `x` | `None` | orientation, where to evaluate the gradient; the field when None |
| `side` | `'left'` | 'left', the tangent vectors in specimen coordinates, or 'right', in crystal coordinates |

## Output

| `G` | SO3VectorFieldHandle, the gradient field |
| `g` | the gradient at the orientations |

## See also

[SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html), [SO3VectorField](SO3VectorField_index_py.html), [orientation.exp](orientation.exp_py.html)

MATLAB's [SO3FunComposition.grad](SO3FunComposition.grad.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L113">source</a></font>
{% endraw %}
