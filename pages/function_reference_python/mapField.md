---
title: 'mapField'
sidebar: function_reference_sidebar
permalink: mapField_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the field or function of op applied pointwise to a field v and further fields, functions or
numbers, by quadrature on the component grid of v; reduce=True sums the result over the
components, invariant=True puts a scalar result on the full frames

## Syntax

```python
mapField(op, v, *args, bandwidth=None, invariant=False, reduce=False)
```

```python
mapField(np.cross, v, w)
mapField(np.multiply, v, w, reduce=True, invariant=True)     the inner product
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L630">source</a></font>
{% endraw %}
