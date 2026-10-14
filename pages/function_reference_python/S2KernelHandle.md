---
title: 'The class S2KernelHandle'
sidebar: function_reference_sidebar
permalink: S2KernelHandle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2KernelHandle.html
status: Reference
---
{% raw %}
a kernel on the sphere given by a function of the cosine of the polar angle, its Legendre
coefficients by Gauss-Legendre quadrature

## Syntax

<div class="mx-form" markdown="1">

```python
S2KernelHandle(lambda t: t**2, bandwidth=16)
```

</div>

## Members

| [bandwidth](S2KernelHandle.bandwidth_py.html) | the degree the coefficients are computed to, the preference maxS2Bandwidth unless given |

MATLAB's [S2KernelHandle](S2KernelHandle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L968">source</a></font>
{% endraw %}
