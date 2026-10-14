---
title: 'tensor.sym'
sidebar: function_reference_sidebar
permalink: tensor.sym_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.sym.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

symmetrise a tensor over permutations of its Cartesian indices

## Syntax

<div class="mx-form" markdown="1">

```python
S = T.sym()
```

</div>

## Description

For rank two this gives (T + T.transpose()) / 2. Higher ranks average over all index
permutations, giving a fully symmetric tensor. Array dimensions and the reference frame
are retained. This does not average over the crystal symmetry group; use symmetrise for that.

## Output

| `S` | tensor of the same class and rank |

## See also

[tensor.antiSym](tensor.antiSym_py.html), [tensor.symmetrise](tensor.symmetrise_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
tensor.sym(self)
```

</div>

MATLAB's [tensor.sym](tensor.sym.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L509">source</a></font>
{% endraw %}
