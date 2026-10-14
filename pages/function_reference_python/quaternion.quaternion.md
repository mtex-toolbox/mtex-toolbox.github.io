---
title: 'quaternion.quaternion'
sidebar: function_reference_sidebar
permalink: quaternion.quaternion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.quaternion.html
status: Reference
---
{% raw %}
quaternions a + b i + c j + d k, the coefficients along the last axis; q * q2 is the product,
q * v rotates a vector

## Syntax

<div class="mx-form" markdown="1">

```python
quaternion(a, b, c, d)
quaternion(abcd)                     an array of shape (..., 4) or (4, N)
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
quaternion(*args, dtype=None)
```

</div>

## Used on

[RotationDefinition](RotationDefinition_py.html)

MATLAB's [quaternion.quaternion](quaternion.quaternion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L48">source</a></font>
{% endraw %}
