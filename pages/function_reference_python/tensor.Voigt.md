---
title: 'tensor.Voigt'
sidebar: function_reference_sidebar
permalink: tensor.Voigt_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.Voigt.html
status: Reference
---
{% raw %}
convert tensor coefficients to compact Voigt notation

## Syntax

<div class="mx-form" markdown="1">

```python
V = Voigt(T)
```

</div>

## Description

The pair order is (11, 22, 33, 23, 13, 12). Rank-two tensors give six components,
rank-three tensors give a 3-by-6 matrix, and rank-four tensors give a 6-by-6 matrix.
Leading array dimensions are retained. Off-diagonal components acquire factors of two
when T.doubleConvention is True, as for compliance and strain conventions.

## Input

| `T` | tensor of rank 2, 3 or 4 |

## Output

| `V` | numeric array in Voigt notation |

## See also

[Kelvin](Kelvin_py.html), [tensor](tensor_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
Voigt(T)
```

</div>

MATLAB's [tensor.Voigt](tensor.Voigt.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L85">source</a></font>
{% endraw %}
