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

One random unit vector:

```python
v = vector3d.rand()
```

An m x n array of them:

```python
v = vector3d.rand(m, n)
```

Random axes:

```python
v = vector3d.rand(100, antipodal=True)
```

Uniform in the region sR:

```python
v = vector3d.rand(100, sR)
```

## Signature

```python
vector3d.rand(*shape, antipodal=False, rng=None)
```

MATLAB's [vector3d.rand](vector3d.rand.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L424">source</a></font>
{% endraw %}
