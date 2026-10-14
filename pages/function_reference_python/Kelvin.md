---
title: 'Kelvin'
sidebar: function_reference_sidebar
permalink: Kelvin_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
convert tensor coefficients to orthonormal Kelvin (Mandel) notation

## Syntax

<div class="mx-form" markdown="1">

```python
K = Kelvin(T)
```

</div>

## Description

The pair order is (11, 22, 33, 23, 13, 12), as in Voigt notation, with a factor sqrt(2)
for each off-diagonal pair. A rank-four tensor gives a 6-by-6 matrix. These factors preserve
the Euclidean inner product of symmetric tensors and are used for tensor matrix functions.
Leading array dimensions are retained.

## Input

| `T` | tensor of rank 2, 3 or 4 |

## Output

| `K` | numeric coefficient array in Kelvin notation |

## See also

[Voigt](tensor.Voigt_py.html), [tensor.expm](tensor.expm_py.html), [tensor.logm](tensor.logm_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
Kelvin(T)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L104">source</a></font>
{% endraw %}
