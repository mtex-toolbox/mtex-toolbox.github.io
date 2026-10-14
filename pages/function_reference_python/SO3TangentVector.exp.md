---
title: 'SO3TangentVector.exp'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.exp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.exp.html
status: Reference
---
{% raw %}
A method of [SO3TangentVector](SO3TangentVector_index_py.html).

return the rotations reached by the tangent vectors from their references.

## Syntax

<div class="mx-form" markdown="1">

```python
endpoint = tangent.exp()
```

</div>

## Description

The vector length is a rotation angle in radians. A left vector gives `exp(v)*reference`;
a right vector gives `reference*exp(v)`. The result keeps the reference type and frames.

## See also

[quaternion.log](quaternion.log_py.html), [orientation.log](orientation.log_py.html), [SO3TangentVector.left](SO3TangentVector.left_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3TangentVector.exp(self)
```

</div>

MATLAB's [SO3TangentVector.exp](SO3TangentVector.exp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L306">source</a></font>
{% endraw %}
