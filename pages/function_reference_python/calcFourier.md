---
title: 'calcFourier'
sidebar: function_reference_sidebar
permalink: calcFourier_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the harmonic coefficients of a kernel.

## Syntax

<div class="mx-form" markdown="1">

```python
coefficients = calcFourier(psi)
```

</div>

## Description

For an MTEX object, calcFourier(x, ...) calls x.calcFourier(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
calcFourier(x, *args, **kwargs)
```

</div>

## Methods it calls

| [S1Kernel](S1Kernel.calcFourier_py.html) | the Fourier coefficients of the kernel, degrees -L . |
| [S2Kernel](S2Kernel.calcFourier_py.html) | the Legendre coefficients A_0 . |
| [SO3Kernel](SO3Kernel.calcFourier_py.html) | the Chebyshev coefficients A_0 . |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
