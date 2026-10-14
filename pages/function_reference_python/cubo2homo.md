---
title: 'cubo2homo'
sidebar: function_reference_sidebar
permalink: cubo2homo_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: cubo2homo.html
status: Reference
---
{% raw %}
map cubochoric coordinates from a cube to the equal-volume homochoric ball.

## Syntax

<div class="mx-form" markdown="1">

```python
ballCoordinates = cubo2homo(cubeCoordinates)
```

</div>

## Description

Input and output are numeric arrays with shape (..., 3). Coordinates are dimensionless.
Use the cubochoric domain produced by homo2cubo or rotation.cubochoric; the result lies
in the ball of radius `(3*pi/4)**(1/3)`.

## See also

[homo2cubo](homo2cubo_py.html), [rotation.byCubochoric](rotation.byCubochoric_py.html), [rotation.byHomochoric](rotation.byHomochoric_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
cubo2homo(c)
```

</div>

## Used on

[RotationRepresentations](RotationRepresentations_py.html)

MATLAB's [cubo2homo](cubo2homo.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/homochoric.py#L104">source</a></font>
{% endraw %}
