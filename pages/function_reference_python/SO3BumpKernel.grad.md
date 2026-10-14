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

<div class="mx-form" markdown="1">

```python
d = psi.grad(t)
```

Zeros of the shape of t.

</div>

<div class="mx-form" markdown="1">

```python
dpsi = psi.grad()
```

The zero kernel.

</div>

## Input

| `psi` | SO3BumpKernel |
| `t` | ndarray of cosines cos(omega/2), or rotation |

## Keywords

| keyword | default | description |
|---|---|---|
| `other` | `None` | a second rotation: the angle between t and it |

## Output

| `d` | ndarray of zeros, or SO3Kernel without an argument |

## See also

[SO3Kernel.grad](SO3Kernel.grad_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L657">source</a></font>
{% endraw %}
