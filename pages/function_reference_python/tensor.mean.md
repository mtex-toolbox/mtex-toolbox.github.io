---
title: 'tensor.mean'
sidebar: function_reference_sidebar
permalink: tensor.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.mean.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

the mean over the list, or along axes of it, weighted or not; with an ODF or orientations
the texture average (calcTensor). MATLAB's three outputs, the Voigt, Reuss and Hill means, are
asked for by name. NumPy's np.mean(T) and np.mean(T, axis=1) call it

## Syntax

```python
tensor.mean(self, *args, weights=None, axis=None, dtype=None, out=None, keepdims=False, **kwargs)
```

```python
T.mean()
T.mean(axis=1)          # along the second axis, MATLAB's mean(T, 2)
TReuss = T.mean('Reuss')
TVoigt, TReuss, THill = T.mean('all')
T.mean(odf)
```

MATLAB's [tensor.mean](tensor.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L618">source</a></font>
{% endraw %}
