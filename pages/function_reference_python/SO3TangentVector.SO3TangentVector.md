---
title: 'SO3TangentVector.SO3TangentVector'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.SO3TangentVector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.SO3TangentVector.html
status: Reference
---
{% raw %}
a tangent vector of SO(3), a rotation vector v at a reference rotation or orientation, on the
left, `exp(v) * oriRef`, or on the right, `oriRef * exp(v)`; from vectors or skew matrices

## Syntax

<div class="mx-form" markdown="1">

```python
SO3TangentVector(v, oriRef)
SO3TangentVector(v, oriRef, 'right')
```

</div>

<div class="mx-form" markdown="1">

```python
SO3TangentVector(S, oriRef, side)
```

From skew matrices of shape (..., 3, 3).

</div>

## Input

| `v` | rotation-vector components as vector3d or numeric arrays, or skew-symmetric matrices |
| `oriRef` | reference rotation or orientation at which the tangent vectors are based |
| `side` | 'left' for exp(v)*oriRef or 'right' for oriRef*exp(v); default 'left' |

## Signature

<div class="mx-form" markdown="1">

```python
SO3TangentVector(v, oriRef, side='left')
```

</div>

## Used on

[SingleSlipModel](SingleSlipModel_py.html), [RotationTangentSpace](RotationTangentSpace_py.html)

MATLAB's [SO3TangentVector.SO3TangentVector](SO3TangentVector.SO3TangentVector.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L111">source</a></font>
{% endraw %}
