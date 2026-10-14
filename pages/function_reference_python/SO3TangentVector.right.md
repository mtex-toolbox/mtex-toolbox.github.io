---
title: 'SO3TangentVector.right'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.right_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.right.html
status: Reference
---
{% raw %}
A method of [SO3TangentVector](SO3TangentVector_index_py.html).

express the tangent vectors on the right of their reference rotations.

## Syntax

<div class="mx-form" markdown="1">

```python
rightVector = tangent.right()
```

</div>

## Description

Left components are rotated by the inverse reference. For orientations, right components
are expressed in the source crystal frame. The reference and represented endpoint stay
the same; a vector already on the right is returned directly.

## See also

[SO3TangentVector.left](SO3TangentVector.left_py.html), [SO3TangentVector.exp](SO3TangentVector.exp_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3TangentVector.right(self)
```

</div>

MATLAB's [SO3TangentVector.right](SO3TangentVector.right.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L277">source</a></font>
{% endraw %}
