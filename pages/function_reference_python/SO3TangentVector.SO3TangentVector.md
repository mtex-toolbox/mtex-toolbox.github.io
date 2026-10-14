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
left, exp(v) * oriRef, or on the right, oriRef * exp(v); from vectors or skew matrices

## Syntax

```python
SO3TangentVector(v, oriRef)
SO3TangentVector(v, oriRef, 'right')
SO3TangentVector(S, oriRef, side)      from skew matrices of shape (..., 3, 3)
```

## Signature

```python
SO3TangentVector(v, oriRef, side='left')
```

## Used on

[SingleSlipModel](SingleSlipModel_py.html), [RotationTangentSpace](RotationTangentSpace_py.html)

MATLAB's [SO3TangentVector.SO3TangentVector](SO3TangentVector.SO3TangentVector.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L93">source</a></font>
{% endraw %}
