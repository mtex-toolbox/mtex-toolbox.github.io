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

the sum of all tensors, or along axes of the array, MATLAB's sum(T, 2); NumPy's np.sum(T)
and np.sum(T, axis=1) call it

## Syntax

```python
tensor.sum(self, axis=None, dtype=None, out=None, keepdims=False, **kwargs)
```

```python
T.sum()                 # the sum of all tensors
T.sum(axis=1)           # along the second axis
np.sum(T, axis=(0, 1), keepdims=True)
```

MATLAB's [tensor.sum](tensor.sum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L672">source</a></font>
{% endraw %}
