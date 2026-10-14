---
title: 'rotation.rand'
sidebar: function_reference_sidebar
permalink: rotation.rand_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.rand.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

uniformly distributed rotations, the Haar measure; with maxAngle restricted to the ball
of that rotational angle about the identity, the angle by inverting its distribution
(w - sin w) / pi, the axis uniform; rng= a NumPy random generator

## Syntax

One:

```python
rot = rotation.rand()
```

A list of 100:

```python
rot = rotation.rand(100)
```

A 10 x 3 array:

```python
rot = rotation.rand(10, 3)
```

Within 10 degree of the identity:

```python
rot = rotation.rand(100, maxAngle=10*degree)
```

Reproducible:

```python
rot = rotation.rand(100, rng=np.random.default_rng(0))
```

## Input

| | |
|---|---|
| `shape` | the sizes of the array, one tuple or several integers |

## Output

| | |
|---|---|
| `rot` | quaternions of the class it is called on, rotation or quaternion |

## Keywords

| | default | |
|---|---|---|
| `rng` | `None` | the NumPy random generator, a fresh one by default |
| `maxAngle` | `None` | the largest rotational angle about the identity |

## See also

[orientation.rand](orientation.rand_py.html), [vector3d.rand](vector3d.rand_py.html), [rotation.id](rotation.id_py.html)

MATLAB's [rotation.rand](rotation.rand.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L80">source</a></font>
{% endraw %}
