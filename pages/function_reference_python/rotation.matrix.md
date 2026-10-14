---
title: 'rotation.matrix'
sidebar: function_reference_sidebar
permalink: rotation.matrix_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.matrix.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

return the numeric rotation matrix of each unit quaternion.

## Syntax

<div class="mx-form" markdown="1">

```python
M = rot.matrix()
rotated = M @ vector
```

</div>

## Description

The output shape is rot.shape + (3, 3). Matrices act on Cartesian column vectors;
`rot*v` is the vector3d form of the same action. General quaternions should be
normalised before interpreting the matrix as a proper rotation.

## See also

[rotation.byMatrix](rotation.byMatrix_py.html), [quaternion.Euler](quaternion.Euler_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
rotation.matrix(self)
```

</div>

MATLAB's [rotation.matrix](rotation.matrix.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L390">source</a></font>
{% endraw %}
