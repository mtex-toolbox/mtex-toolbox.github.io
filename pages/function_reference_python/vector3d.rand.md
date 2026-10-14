---
title: 'vector3d.rand'
sidebar: function_reference_sidebar
permalink: vector3d.rand_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.rand.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

uniformly distributed unit vectors or axes, on the sphere or in a sphericalRegion given
last; rng= a NumPy random generator

## Syntax

```python
vector3d.rand(*shape, antipodal=False, rng=None)
```

```python
v = vector3d.rand()                     # one random unit vector
v = vector3d.rand(m, n)                 # an m x n array of them
v = vector3d.rand(100, antipodal=True)  # random axes
v = vector3d.rand(100, sR)              # uniform in the region sR
```

MATLAB's [vector3d.rand](vector3d.rand.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L341">source</a></font>
{% endraw %}
