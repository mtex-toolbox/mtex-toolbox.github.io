---
title: 'tensor.rand'
sidebar: function_reference_sidebar
permalink: tensor.rand_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.rand.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

a random tensor with the symmetries its class and frame ask for: a plain tensor of entries
drawn uniformly from [0, 1], as MATLAB's, a symmetric one the symmetric part of such a tensor,
symmetrised in its frame, a stiffness or compliance one positive definite besides; the numbers
give the list shape, rank= the rank of a plain tensor, rng= the generator

## Syntax

```python
tensor.rand(*args, rank=None, rng=None, **kwargs)
```

```python
T = tensor.rand(rank=4)
T = tensor.rand(100, cs, rank=2)
S = complianceTensor.rand()
C = stiffnessTensor.rand(cs, rng=np.random.default_rng(0))
```

MATLAB's [tensor.rand](tensor.rand.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L748">source</a></font>
{% endraw %}
