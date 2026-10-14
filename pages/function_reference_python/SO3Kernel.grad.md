---
title: 'SO3Kernel.grad'
sidebar: function_reference_sidebar
permalink: SO3Kernel.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Kernel.grad.html
status: Reference
---
{% raw %}
A method of [SO3Kernel](SO3Kernel_index_py.html).

the derivative with respect to the rotation angle omega at the cosine argument
t = cos(omega/2); MATLAB's grad

## Syntax

At the cosines of the half angles t:

```python
d = psi.grad(t)
```

At the angles of rotations:

```python
d = psi.grad(rot)
```

At the angles between two rotations:

```python
d = psi.grad(rot1, rot2)
```

The derivative as a kernel, an SO3KernelHandle:

```python
dpsi = psi.grad()
```

The derivative follows from sin(omega/2) psi = sum_n A_n sin((2n+1) omega/2); it vanishes at
omega = 0. MATLAB calls it the magnitude of the gradient: the gradient of the function
g -> psi(g) has this length.

## Input

| | |
|---|---|
| `psi` | SO3Kernel |
| `t` | ndarray of cosines cos(omega/2), or rotation |

## Output

| | |
|---|---|
| `d` | ndarray, or SO3KernelHandle without an argument |

## Keywords

| | default | |
|---|---|---|
| `other` | `None` | a second rotation: the derivative at the angle between t and it |

## See also

[SO3Kernel.eval](SO3Kernel.eval_py.html), [SO3FunRBF.grad](SO3FunRBF.grad_py.html)

MATLAB's [SO3Kernel.grad](SO3Kernel.grad.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L290">source</a></font>
{% endraw %}
