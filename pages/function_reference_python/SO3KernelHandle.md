---
title: 'The class SO3KernelHandle'
sidebar: function_reference_sidebar
permalink: SO3KernelHandle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3KernelHandle.html
status: Reference
---
{% raw %}
wrap a callable formula as a SO3Kernel.

## Syntax

<div class="mx-form" markdown="1">

```python
psi = SO3KernelHandle(fun, bandwidth=32)
```

</div>

## Description

The function must accept numeric arrays whose entries are cos(omega/2) and return
matching kernel values. Direct evaluation calls fun; harmonic coefficients are
computed by numerical quadrature. Choose the supplied formula's normalisation
explicitly; the wrapper does not rescale its values.

## Input

| `fun` | vectorised callable of cos(omega/2) |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` |  | maximum degree used for harmonic coefficients; the maxS1Bandwidth preference when omitted |

## Output

| `psi` | SO3KernelHandle |

## Properties

| `fun` | original callable |
| `bandwidth` | largest retained harmonic degree |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html)

## Members

| [bandwidth](SO3KernelHandle.bandwidth_py.html) | the degree the coefficients are computed to, the preference maxS1Bandwidth unless given |

MATLAB's [SO3KernelHandle](SO3KernelHandle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L886">source</a></font>
{% endraw %}
