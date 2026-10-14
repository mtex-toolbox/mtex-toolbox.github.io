---
title: 'The class S1KernelHandle'
sidebar: function_reference_sidebar
permalink: S1KernelHandle_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
wrap a callable formula as a S1Kernel.

## Syntax

<div class="mx-form" markdown="1">

```python
psi = S1KernelHandle(fun, bandwidth=32)
```

</div>

## Description

The function must accept numeric arrays whose entries are an angle in radians and return
matching kernel values. Direct evaluation calls fun; harmonic coefficients are
computed by numerical quadrature. Choose the supplied formula's normalisation
explicitly; the wrapper does not rescale its values.

## Input

| `fun` | vectorised callable of an angle in radians |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` |  | maximum degree used for harmonic coefficients; the maxS1Bandwidth preference when omitted |

## Output

| `psi` | S1KernelHandle |

## Properties

| `fun` | original callable |
| `bandwidth` | largest retained harmonic degree |

## See also

[S1Kernel](S1Kernel_index_py.html), [calcDensity](calcDensity_py.html)

## Members

| [bandwidth](S1KernelHandle.bandwidth_py.html) | the degree the coefficients are computed to, the preference maxS1Bandwidth unless given |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1696">source</a></font>
{% endraw %}
