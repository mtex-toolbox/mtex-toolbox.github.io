---
title: 'checkSymmetry'
sidebar: function_reference_sidebar
permalink: checkSymmetry_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
whether the tensor is invariant under the group of its frame, T.checkSymmetry(); MATLAB's
checkSymmetry

## Syntax

<div class="mx-form" markdown="1">

```python
tf = checkSymmetry(T)
```

Invariant up to 1e-6 of its norm.

</div>

<div class="mx-form" markdown="1">

```python
tf = checkSymmetry(T, atol=1e-3)
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

[tensor.checkSymmetry](tensor.checkSymmetry_py.html), [symmetrise](symmetrise_py.html)

## Used on

[TensorImport](TensorImport_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1832">source</a></font>
{% endraw %}
