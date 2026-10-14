---
title: 'quaternion.homochoric'
sidebar: function_reference_sidebar
permalink: quaternion.homochoric_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.homochoric.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

express rotations as equal-volume coordinates in a ball.

## Syntax

<div class="mx-form" markdown="1">

```python
h = rot.homochoric()
```

</div>

## Description

The vector points along the rotation axis and has length
`(3*(omega - sin(omega))/4)**(1/3)`, with omega in radians. The identity maps to zero;
rotations through pi reach the ball radius `(3*pi/4)**(1/3)`.

## See also

[rotation.byHomochoric](rotation.byHomochoric_py.html), [quaternion.cubochoric](quaternion.cubochoric_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
quaternion.homochoric(self)
```

</div>

## Used on

[RotationRepresentations](RotationRepresentations_py.html)

MATLAB's [quaternion.homochoric](quaternion.homochoric.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L416">source</a></font>
{% endraw %}
