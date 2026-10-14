---
title: 'Miller.mean'
sidebar: function_reference_sidebar
permalink: Miller.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.mean.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the mean vector: the arithmetic mean, the normalised weighted sum, or for axes the
largest principal axis of the moment matrix; crystal directions are first moved to the
equivalents closest to the mean, which return_projected=True also gives (MATLAB's mSym)

## Syntax

```python
vector3d.mean(self, weights=None, antipodal=False, robust=False, axis=None, symmetry=True, return_projected=False)
```

```python
m = mean(v)
m, vProjected = mean(h, return_projected=True)
```

MATLAB's [Miller.mean](Miller.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L702">source</a></font>
{% endraw %}
