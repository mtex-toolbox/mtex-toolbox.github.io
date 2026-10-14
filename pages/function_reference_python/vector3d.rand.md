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

Reproducible:

```python
v = vector3d.rand(100, rng=np.random.default_rng(0))
```

In a region the uniform vectors outside it are rejected until enough are left.

## Input

| | |
|---|---|
| `shape` | the sizes of the array, one tuple or several integers, and a sphericalRegion as the last argument |

## Output

| | |
|---|---|
| `v` | vector3d of unit vectors |

## Keywords

| | default | |
|---|---|---|
| `antipodal` | `False` | the vectors as axes |
| `rng` | `None` | the NumPy random generator, a fresh one by default |

## See also

[rotation.rand](rotation.rand_py.html), [equispacedS2Grid](equispacedS2Grid_py.html)

MATLAB's [vector3d.rand](vector3d.rand.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L438">source</a></font>
{% endraw %}
