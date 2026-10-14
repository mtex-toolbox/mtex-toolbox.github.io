---
title: 'tensor.checkSymmetry'
sidebar: function_reference_sidebar
permalink: tensor.checkSymmetry_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.checkSymmetry.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

whether the tensor is invariant under every element of the group of its frame; MATLAB's
checkSymmetry

## Syntax

<div class="mx-form" markdown="1">

```python
tf = T.checkSymmetry()
```

Invariant up to 1e-6 of its norm.

</div>

<div class="mx-form" markdown="1">

```python
tf = T.checkSymmetry(atol=1e-3)
```

Up to 1e-3 of its norm.

</div>

## Input

| `T` | tensor |

## Keywords

| keyword | default | description |
|---|---|---|
| `atol` | `1e-06` | the tolerance relative to the largest norm of the tensors |

## Output

| `tf` | bool, one answer for the whole list |

## See also

[symmetrise](symmetrise_py.html), [tensor.isclose](tensor.eq_py.html)

MATLAB's [tensor.checkSymmetry](tensor.checkSymmetry.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L718">source</a></font>
{% endraw %}
