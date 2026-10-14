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

the derivative with respect to the polar angle at the cosine argument t, dpsi/dtheta =
-sin(theta) dpsi/dt with dpsi/dt as its own Legendre series; polynomial=True is the
derivative with respect to t, and without an argument the kernel of either

## Syntax

```python
S2Kernel.grad(self, t=None, other=None, *, polynomial=False)
```

MATLAB's [S2Kernel.grad](S2Kernel.grad.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L700">source</a></font>
{% endraw %}
