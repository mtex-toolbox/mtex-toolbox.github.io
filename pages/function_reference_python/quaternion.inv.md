---
title: 'quaternion.inv'
sidebar: function_reference_sidebar
permalink: quaternion.inv_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.inv.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

return the multiplicative inverse of each quaternion.

## Syntax

<div class="mx-form" markdown="1">

```python
inverse = q.inv()
```

</div>

## Description

The inverse is `conj(q)/norm(q)**2`, so `q*inverse` is the identity for nonzero q.
The result is a quaternion, with the same array shape. Zero quaternions have no
inverse and produce nonfinite coefficients.

## See also

[quaternion.conj](quaternion.conj_py.html), [rotation.inv](rotation.inv_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
quaternion.inv(self)
```

</div>

MATLAB's [quaternion.inv](quaternion.inv.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L236">source</a></font>
{% endraw %}
