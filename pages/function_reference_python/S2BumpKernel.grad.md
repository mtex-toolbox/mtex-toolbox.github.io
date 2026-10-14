---
title: 'S2BumpKernel.grad'
sidebar: function_reference_sidebar
permalink: S2BumpKernel.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S2BumpKernel](S2BumpKernel_index_py.html).

the derivative of the bump kernel, zero wherever it exists

## Syntax

Zero at every cosine t:

```python
d = psi.grad(t)
```

Zero at every direction v:

```python
d = psi.grad(v, zvector)
```

The zero kernel:

```python
dpsi = psi.grad()
```

The bump kernel is constant on its cap and beyond it, so its derivative vanishes but on the
rim of the cap, where it does not exist; the derivative in the angle and in its cosine
agree.

## Input

| | |
|---|---|
| `psi` | S2BumpKernel |
| `t` | ndarray of cosines, or vector3d |
| `other` | vector3d, the direction the angles of t are measured from |

## Output

| | |
|---|---|
| `d` | ndarray of zeros, or the zero S2Kernel without an argument |

## Keywords

| | default | |
|---|---|---|
| `polynomial` | `False` | the derivative with respect to the cosine, the same zero |

## See also

[S2Kernel.grad](S2Kernel.grad_py.html), [S2BumpKernel](S2BumpKernel_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L824">source</a></font>
{% endraw %}
