---
title: 'tensor.eq'
sidebar: function_reference_sidebar
permalink: tensor.eq_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.eq.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

whether two tensors of one rank and shape agree coefficientwise within rtol and atol;
MATLAB's eq, T1 == T2

## Syntax

Equal up to rounding:

```python
T1.isclose(T2)
```

Every coefficient within 1e-3:

```python
T1.isclose(T2, atol=1e-3)
```

The comparison is that of np.allclose, |a - b| <= atol + rtol |b|, over all coefficients;
one answer for the whole list. T1 == T2 is the exact equality, of the frame too.

## Input

| | |
|---|---|
| `T1, T2` | tensor |

## Output

| | |
|---|---|
| `tf` | bool |

## Keywords

| | default | |
|---|---|---|
| `rtol` | `1e-08` | the tolerance relative to the coefficients of T2 |
| `atol` | `0.0` | the absolute tolerance |

## See also

[tensor.checkSymmetry](tensor.checkSymmetry_py.html), [tensor.norm](tensor.norm_py.html)

MATLAB's [tensor.eq](tensor.eq.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L393">source</a></font>
{% endraw %}
