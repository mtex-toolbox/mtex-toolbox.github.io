---
title: 'The class SO3DirichletKernel'
sidebar: function_reference_sidebar
permalink: SO3DirichletKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3DirichletKernel.html
status: Reference
---
{% raw %}
the Dirichlet kernel on SO(3), sum_n (2n+1) U_2n(t) up to the degree N, of integral one:
the kernel for physical properties

## Syntax

<div class="mx-form" markdown="1">

```python
SO3DirichletKernel(35)
SO3DirichletKernel()        N the preference maxSO3Bandwidth
```

</div>

## Members

| [bandwidth](SO3DirichletKernel.bandwidth_py.html) | the degree N of the kernel |
| [radon](SO3DirichletKernel.radon_py.html) | the Radon transform: the Dirichlet kernel on the sphere of the same degree |

## Used on

[ODFShapes](ODFShapes_py.html), [SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3DirichletKernel](SO3DirichletKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L569">source</a></font>
{% endraw %}
