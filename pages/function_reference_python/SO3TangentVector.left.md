---
title: 'SO3TangentVector.left'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.left_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.left.html
status: Reference
---
{% raw %}
A method of [SO3TangentVector](SO3TangentVector_index_py.html).

express the tangent vectors on the left of their reference rotations.

## Syntax

<div class="mx-form" markdown="1">

```python
leftVector = tangent.left()
```

</div>

## Description

Right components are rotated by the reference. For orientations, left components
are expressed in the target frame. The reference and represented endpoint stay the same;
a vector already on the left is returned directly.

## See also

[SO3TangentVector.right](SO3TangentVector.right_py.html), [SO3TangentVector.exp](SO3TangentVector.exp_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3TangentVector.left(self)
```

</div>

MATLAB's [SO3TangentVector.left](SO3TangentVector.left.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L262">source</a></font>
{% endraw %}
