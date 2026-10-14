---
title: 'S1Kernel.grad'
sidebar: function_reference_sidebar
permalink: S1Kernel.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S1Kernel](S1Kernel_index_py.html).

the derivative of a kernel on the circle, -2 sum_k k c_k sin(kx)

## Syntax

<div class="mx-form" markdown="1">

```python
d = psi.grad(x)
```

At the angles x.

</div>

<div class="mx-form" markdown="1">

```python
dpsi = psi.grad()
```

The derivative as a kernel, an S1KernelHandle.

</div>

## Input

| `psi` | S1Kernel |

## Keywords

| keyword | default | description |
|---|---|---|
| `x` | `None` | the angles; without them the derivative is returned as a kernel |

## Output

| `d` | ndarray, or S1KernelHandle without an argument |

## See also

[S1Kernel.calcFourier](S1Kernel.calcFourier_py.html), [S1FunHarmonic.grad](S1FunHarmonic.grad_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1095">source</a></font>
{% endraw %}
