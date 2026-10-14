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

a tensor of ones of the rank of the class, or of rank=, the list shape given by the numbers

## Syntax

```python
T = tensor.ones(cs, 5)
T = tensor.ones(2, 3, rank=4)
```

## Signature

```python
tensor.ones(*args, rank=None, **kwargs)
```

## Used on

[OrientationExport](OrientationExport_py.html), [EBSDGrid](EBSDGrid_py.html), [QuadruplePoints](QuadruplePoints_py.html), [GrainMerge](GrainMerge_py.html), [TransformationTexture](TransformationTexture_py.html), [SlipTransmission](SlipTransmission_py.html), [S2FunAxisField](S2FunAxisField_py.html), [S2FunSampling](S2FunSampling_py.html), [TensorDefinition](TensorDefinition_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L789">source</a></font>
{% endraw %}
