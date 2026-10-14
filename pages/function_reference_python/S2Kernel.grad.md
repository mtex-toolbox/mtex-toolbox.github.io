---
title: 'S2Kernel.grad'
sidebar: function_reference_sidebar
permalink: S2Kernel.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Kernel.grad.html
status: Reference
---
{% raw %}
A method of [S2Kernel](S2Kernel_index_py.html).

the derivative of a kernel on the sphere with respect to the polar angle, or to its cosine

## Syntax

Dpsi/dtheta at the cosines t:

```python
d = psi.grad(t)
```

At the angles between the directions v and the z axis:

```python
d = psi.grad(v, zvector)
```

Dpsi/dt, the derivative in the cosine:

```python
d = psi.grad(t, polynomial=True)
```

The derivative as a kernel:

```python
dpsi = psi.grad()
```

The kernel is a Legendre series psi(t) in the cosine t of the angle; its derivative in t is
a Legendre series of its own, and the derivative in the angle theta is -sin(theta) dpsi/dt.
Without an argument the result is a kernel: a handle of the angular derivative, or the
Legendre series of dpsi/dt for polynomial=True.

## Input

| | |
|---|---|
| `psi` | S2Kernel |
| `t` | ndarray of cosines, or vector3d |
| `other` | vector3d, the direction the angles of t are measured from |

## Output

| | |
|---|---|
| `d` | ndarray, or S2Kernel / S2KernelHandle without an argument |

## Keywords

| | default | |
|---|---|---|
| `polynomial` | `False` | the derivative with respect to the cosine t instead of the angle |

## See also

[S2Kernel](S2Kernel_index_py.html), [S2FunHarmonic.grad](S2FunHarmonic.grad_py.html), [S2Kernels](S2Kernels_py.html)

MATLAB's [S2Kernel.grad](S2Kernel.grad.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L786">source</a></font>
{% endraw %}
