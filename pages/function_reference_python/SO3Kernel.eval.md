---
title: 'SO3Kernel.eval'
sidebar: function_reference_sidebar
permalink: SO3Kernel.eval_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Kernel.eval.html
status: Reference
---
{% raw %}
A method of [SO3Kernel](SO3Kernel_index_py.html).

the kernel at the cosine argument t (the angle on S1), or at a rotation or direction, or
between two of them; MATLAB's eval

## Syntax

<div class="mx-form" markdown="1">

```python
v = psi.eval(t)
```

At the cosines t, cos(omega/2) on SO(3), cos(theta) on S2.

</div>

<div class="mx-form" markdown="1">

```python
v = psi(t)
```

The same.

</div>

<div class="mx-form" markdown="1">

```python
v = psi.eval(rot)
```

At the angles of rotations, or the polar angles of directions.

</div>

<div class="mx-form" markdown="1">

```python
v = psi.eval(rot1, rot2)
```

At the angles between two rotations or two directions.

</div>

## Description

A kernel on SO(3) is a function of the cosine of half the rotation angle, one on the sphere
of the cosine of the polar angle, one on the circle of the angle itself. Rotations or
directions are reduced to that argument first: |a| of a rotation, the dot product of two;
the z coordinate of a direction, the cosine between two.

## Input

| `psi` | SO3Kernel, S2Kernel or S1Kernel |
| `t` | ndarray of arguments, or rotation (SO3Kernel), or vector3d (S2Kernel) |

## Keywords

| keyword | default | description |
|---|---|---|
| `other` | `None` | a second rotation or direction: the kernel at the angle between t and it |

## Output

| `v` | ndarray, the values |

## See also

[SO3Kernel.grad](SO3Kernel.grad_py.html), [SO3Kernel.calcFourier](SO3Kernel.calcFourier_py.html)

MATLAB's [SO3Kernel.eval](SO3Kernel.eval.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L96">source</a></font>
{% endraw %}
