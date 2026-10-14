---
title: 'S1BumpKernel.grad'
sidebar: function_reference_sidebar
permalink: S1BumpKernel.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S1BumpKernel](S1BumpKernel_index_py.html).

the derivative of the bump kernel, zero wherever it exists; without an argument the zero kernel

## Syntax

<div class="mx-form" markdown="1">

```python
d = psi.grad(x)
```

Zeros of the shape of x.

</div>

<div class="mx-form" markdown="1">

```python
dpsi = psi.grad()
```

The zero kernel.

</div>

## Input

| `psi` | S1BumpKernel |

## Keywords

| keyword | default | description |
|---|---|---|
| `x` | `None` | the angles; without them the zero kernel is returned |

## Output

| `d` | ndarray of zeros, or S1Kernel without an argument |

## See also

[S1Kernel.grad](S1Kernel.grad_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1632">source</a></font>
{% endraw %}
