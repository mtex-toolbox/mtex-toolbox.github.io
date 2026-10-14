---
title: 'rotation.byHomochoric'
sidebar: function_reference_sidebar
permalink: rotation.byHomochoric_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.byHomochoric.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

construct rotations from coordinates in the homochoric ball.

## Syntax

<div class="mx-form" markdown="1">

```python
rot = rotation.byHomochoric(h)
```

</div>

## Description

Input may be vector3d or dimensionless Cartesian triples. A vector of length r
represents a rotation through omega satisfying `r**3 = 3*(omega - sin(omega))/4`.
Use coordinates inside the ball of radius `(3*pi/4)**(1/3)`.

## See also

rotation.homochoric, [rotation.byCubochoric](rotation.byCubochoric_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
rotation.byHomochoric(v)
```

</div>

MATLAB's [rotation.byHomochoric](rotation.byHomochoric.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L835">source</a></font>
{% endraw %}
