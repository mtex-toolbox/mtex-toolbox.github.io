---
title: 'complianceTensor.rand'
sidebar: function_reference_sidebar
permalink: complianceTensor.rand_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: complianceTensor.rand.html
status: Reference
---
{% raw %}
A method of [complianceTensor](complianceTensor_index_py.html).

a random tensor with the symmetries its class and frame ask for: a plain tensor of entries
drawn uniformly from [0, 1], as MATLAB's, a symmetric one the symmetric part of such a tensor,
symmetrised in its frame, a stiffness or compliance one positive definite besides; the numbers
give the list shape, rank= the rank of a plain tensor, rng= the generator

## Syntax

```python
T = tensor.rand(rank=4)
T = tensor.rand(100, cs, rank=2)
S = complianceTensor.rand()
C = stiffnessTensor.rand(cs, rng=np.random.default_rng(0))
```

## Signature

```python
complianceTensor.rand(*args, rank=None, rng=None, **kwargs)
```

MATLAB's [complianceTensor.rand](complianceTensor.rand.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L814">source</a></font>
{% endraw %}
