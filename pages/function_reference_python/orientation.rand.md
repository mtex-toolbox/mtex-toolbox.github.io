---
title: 'orientation.rand'
sidebar: function_reference_sidebar
permalink: orientation.rand_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

random orientations

## Syntax

One random orientation:

```python
ori = orientation.rand(cs)
```

N of them:

```python
ori = orientation.rand(n, cs, ss)
```

An m x n array:

```python
ori = orientation.rand(m, n, cs)
```

Within 10 degree of the identity:

```python
ori = orientation.rand(n, cs, maxAngle=10*degree)
```

The rotations are uniformly distributed on SO(3), or within the ball of radius maxAngle
about the identity; the symmetry of the frames does not enter the draw.

## Input

| | |
|---|---|
| `args` | the shape, as numbers; the crystal frame cs and the specimen frame ss, or a second crystal frame for misorientations |

## Output

| | |
|---|---|
| `ori` | orientation |

## Keywords

| | default | |
|---|---|---|
| `rng` | `None` | a NumPy random generator, for draws that repeat |
| `antipodal` | `False` | misorientations with grain exchange |
| `maxAngle` | `None` | the largest rotational angle, in radians |

## See also

[rotation.rand](rotation.rand_py.html), [orientation.id](orientation.id_py.html), [discreteSample](discreteSample_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L239">source</a></font>
{% endraw %}
