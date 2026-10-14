---
title: 'homo2cubo'
sidebar: function_reference_sidebar
permalink: homo2cubo_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: homo2cubo.html
status: Reference
---
{% raw %}
map equal-volume homochoric coordinates from a ball to the cubochoric cube.

## Syntax

<div class="mx-form" markdown="1">

```python
cubeCoordinates = homo2cubo(ballCoordinates)
```

</div>

## Description

Input and output are numeric arrays with shape (..., 3). Homochoric coordinates are
dimensionless and lie inside the ball of radius `(3*pi/4)**(1/3)`. The map preserves
volume and sends the origin to the origin.

## See also

[cubo2homo](cubo2homo_py.html), rotation.homochoric, rotation.cubochoric

## Signature

<div class="mx-form" markdown="1">

```python
homo2cubo(h)
```

</div>

MATLAB's [homo2cubo](homo2cubo.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/homochoric.py#L74">source</a></font>
{% endraw %}
