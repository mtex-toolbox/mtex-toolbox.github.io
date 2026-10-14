---
title: 'tensor.vertcat'
sidebar: function_reference_sidebar
permalink: tensor.vertcat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.vertcat.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

the list of the tensors, MATLAB's [T1, T2]

## Syntax

<div class="mx-form" markdown="1">

```python
T = tensor.cat(T1, T2)
```

One after the other.

</div>

<div class="mx-form" markdown="1">

```python
C = cat(C1, C2)
```

The same, the class taken from the first.

</div>

<div class="mx-form" markdown="1">

```python
T = tensor.cat(T1, T2, axis=1)
```

Along the second axis of their lists.

</div>

## Description

The tensors have to agree in what they carry, the rank and the frame. Tensors of
different densities keep one density per tensor, as MATLAB's [C1, C2] does, which is
what a weighted mean averages; tensors with and without a density are refused.

## Input

| `T1, T2, ...` | tensor |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `0` | the axis of the list along which the tensors are joined |

## Output

| `T` | tensor, the list |

## See also

[cat](S1FunHarmonic.cat_py.html), [tensor.mean](tensor.mean_py.html)

MATLAB's [tensor.vertcat](tensor.vertcat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L881">source</a></font>
{% endraw %}
