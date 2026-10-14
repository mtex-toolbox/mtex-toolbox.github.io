---
title: 'SO3BumpKernel.grad'
sidebar: function_reference_sidebar
permalink: SO3BumpKernel.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3BumpKernel](SO3BumpKernel_index_py.html).

the derivative of the bump kernel, zero wherever it exists; without an argument the zero kernel

## Syntax

Zeros of the shape of t:

```python
d = psi.grad(t)
```

The zero kernel:

```python
dpsi = psi.grad()
```

## Input

| | |
|---|---|
| `psi` | SO3BumpKernel |
| `t` | ndarray of cosines cos(omega/2), or rotation |

## Output

| | |
|---|---|
| `d` | ndarray of zeros, or SO3Kernel without an argument |

## Keywords

| | default | |
|---|---|---|
| `other` | `None` | a second rotation: the angle between t and it |

## See also

[SO3Kernel.grad](SO3Kernel.grad_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L533">source</a></font>
{% endraw %}
