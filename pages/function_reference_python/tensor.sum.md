---
title: 'tensor.sum'
sidebar: function_reference_sidebar
permalink: tensor.sum_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.sum.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

the sum of a list of tensors, over all of them or along axes

## Syntax

<div class="mx-form" markdown="1">

```python
T = T.sum()
```

The sum of all tensors.

</div>

<div class="mx-form" markdown="1">

```python
T = T.sum(axis=1)
```

Along the second axis, MATLAB's sum(T, 2).

</div>

<div class="mx-form" markdown="1">

```python
T = np.sum(T, axis=(0, 1), keepdims=True)
```

NumPy's sum, the axes kept.

</div>

## Description

Without an axis the whole list is summed, where MATLAB sums along the first non singleton
dimension. NumPy's np.sum(T) and np.sum(T, axis=1) call it.

## Input

| `T` | tensor |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `None` | the axis or tuple of axes of the list to sum along |
| `dtype` | `None` | NumPy's argument, refused unless None |
| `out` | `None` | NumPy's argument, refused unless None |
| `keepdims` | `False` | keep the summed axes with length one |

## Output

| `T` | tensor, the sum |

## See also

[tensor.mean](tensor.mean_py.html)

MATLAB's [tensor.sum](tensor.sum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L855">source</a></font>
{% endraw %}
