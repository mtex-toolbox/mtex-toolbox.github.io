---
title: 'tensor.zeros'
sidebar: function_reference_sidebar
permalink: tensor.zeros_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

a tensor of zeros of the rank of the class, or a list of them; MATLAB's tensor.zeros

## Syntax

<div class="mx-form" markdown="1">

```python
T = tensor.zeros(cs, 5)
```

Five tensors of rank two in the frame cs.

</div>

<div class="mx-form" markdown="1">

```python
T = tensor.zeros(rank=4)
```

One tensor of rank four.

</div>

<div class="mx-form" markdown="1">

```python
C = stiffnessTensor.zeros(cs)
```

A stiffness tensor of zeros.

</div>

## Description

The numbers among the arguments give the shape of the list, a reference frame the frame;
other keywords go to the constructor of the class (unit, name, ...).

## Input

| `n, m, ...` | the shape of the list |
| `cs` | referenceFrame, the frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `rank` | `None` | the rank, by default that of the class, two for a plain tensor |

## Output

| `T` | a tensor of the class |

## See also

[tensor.ones](tensor.ones_py.html), [tensor.eye](tensor.eye_py.html), [tensor.rand](tensor.rand_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L970">source</a></font>
{% endraw %}
