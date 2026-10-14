---
title: 'tensor.ones'
sidebar: function_reference_sidebar
permalink: tensor.ones_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

a tensor of ones of the rank of the class, or a list of them; MATLAB's tensor.ones

## Syntax

<div class="mx-form" markdown="1">

```python
T = tensor.ones(cs, 5)
```

Five tensors of rank two in the frame cs.

</div>

<div class="mx-form" markdown="1">

```python
T = tensor.ones(2, 3, rank=4)
```

A 2 x 3 list of tensors of rank four.

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

[tensor.zeros](tensor.zeros_py.html), [tensor.eye](tensor.eye_py.html), [tensor.rand](tensor.rand_py.html)

## Used on

[OrientationExport](OrientationExport_py.html), [EBSDGrid](EBSDGrid_py.html), [QuadruplePoints](QuadruplePoints_py.html), [GrainMerge](GrainMerge_py.html), [TransformationTexture](TransformationTexture_py.html), [SlipTransmission](SlipTransmission_py.html), [S2FunAxisField](S2FunAxisField_py.html), [S2FunSampling](S2FunSampling_py.html), [TensorDefinition](TensorDefinition_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L861">source</a></font>
{% endraw %}
