---
title: 'quaternion.cubochoric'
sidebar: function_reference_sidebar
permalink: quaternion.cubochoric_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.cubochoric.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

express rotations as equal-volume coordinates in a cube.

## Syntax

<div class="mx-form" markdown="1">

```python
c = rot.cubochoric()
```

</div>

## Description

The homochoric ball is mapped to a cube centred at zero. The result is a vector3d
whose coordinates are dimensionless, with the same array shape as rot.

## See also

[rotation.byCubochoric](rotation.byCubochoric_py.html), [quaternion.homochoric](quaternion.homochoric_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
quaternion.cubochoric(self)
```

</div>

## Used on

[RotationRepresentations](RotationRepresentations_py.html)

MATLAB's [quaternion.cubochoric](quaternion.cubochoric.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L429">source</a></font>
{% endraw %}
