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
wrap a callable formula as a S2Kernel.

## Syntax

<div class="mx-form" markdown="1">

```python
psi = S2KernelHandle(fun, bandwidth=32)
```

</div>

## Description

The function must accept numeric arrays whose entries are cos(theta) and return
matching kernel values. Direct evaluation calls fun; harmonic coefficients are
computed by numerical quadrature. Choose the supplied formula's normalisation
explicitly; the wrapper does not rescale its values.

## Input

| `fun` | vectorised callable of cos(theta) |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` |  | maximum degree used for harmonic coefficients; the maxS2Bandwidth preference when omitted |

## Output

| `psi` | S2KernelHandle |

## Properties

| `fun` | original callable |
| `bandwidth` | largest retained harmonic degree |

## See also

[S2Kernel](S2Kernel_index_py.html), [calcDensity](calcDensity_py.html)

## Members

| [bandwidth](S2KernelHandle.bandwidth_py.html) | the degree the coefficients are computed to, the preference maxS2Bandwidth unless given |

MATLAB's [S2KernelHandle](S2KernelHandle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1270">source</a></font>
{% endraw %}
