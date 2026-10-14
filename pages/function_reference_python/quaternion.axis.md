---
title: 'quaternion.axis'
sidebar: function_reference_sidebar
permalink: quaternion.axis_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.axis.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

return a unit vector along the rotation axis of each quaternion.

## Syntax

<div class="mx-form" markdown="1">

```python
a = q.axis()
```

</div>

## Description

The result is a vector3d with the same shape as q. The axis of the identity rotation
is not geometrically unique; use [`quaternion.angle`](quaternion.angle_py.html) when only the rotation magnitude
is needed.

## See also

[rotation.byAxisAngle](rotation.byAxisAngle_py.html), [quaternion.angle](quaternion.angle_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
quaternion.axis(self)
```

</div>

MATLAB's [quaternion.axis](quaternion.axis.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L306">source</a></font>
{% endraw %}
