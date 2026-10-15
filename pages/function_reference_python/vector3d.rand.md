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

<div class="mx-form" markdown="1">

```python
v = vector3d.rand()
```

One random unit vector.

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d.rand(m, n)
```

An m x n array of them.

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d.rand(100, antipodal=True)
```

Random axes.

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d.rand(100, sR)
```

Uniform in the region sR.

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d.rand(100, rng=np.random.default_rng(0))
```

Reproducible.

</div>

## Description

In a region the uniform vectors outside it are rejected until enough are left.

## Input

| `shape` | the sizes of the array, one tuple or several integers, and a sphericalRegion as the last argument |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | the vectors as axes |
| `rng` | `None` | the NumPy random generator, a fresh one by default |

## Output

| `v` | vector3d of unit vectors |

## See also

[rotation.rand](rotation.rand_py.html), [equispacedS2Grid](equispacedS2Grid_py.html)

MATLAB's [vector3d.rand](vector3d.rand.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L523">source</a></font>
{% endraw %}
