---
title: 'SO3FunHarmonic.eval'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.eval_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.eval.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

evaluate a harmonic orientation function at rotations or orientations.

## Syntax

<div class="mx-form" markdown="1">

```python
values = f(ori)
values = f.eval(ori)
```

</div>

## Description

An orientation argument must use the function's crystal and specimen bases; sibling
frames differing only in their symmetry group are also accepted. A plain rotation
supplies the rotation coefficients without frame checks. A quadratureSO3Grid can
be evaluated directly.

For one function, the result has the query shape. For a list of functions, the
function-list shape is appended to the query shape. Real functions return real values.

## Input

| `x` | orientation, rotation, quaternion, orthogonalTransform or quadratureSO3Grid |

## See also

[SO3FunHarmonic](SO3FunHarmonic_index_py.html), [SO3FunHandle.eval](SO3FunHandle.eval_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3FunHarmonic.eval(self, x)
```

</div>

MATLAB's [SO3FunHarmonic.eval](SO3FunHarmonic.eval.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L405">source</a></font>
{% endraw %}
