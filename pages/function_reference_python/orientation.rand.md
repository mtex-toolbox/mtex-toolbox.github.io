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

<div class="mx-form" markdown="1">

```python
ori = orientation.rand(cs)
```

One random orientation.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.rand(n, cs, ss)
```

N of them.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.rand(m, n, cs)
```

An m x n array.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.rand(n, cs, maxAngle=10*degree)
```

Within 10 degree of the identity.

</div>

## Description

The rotations are uniformly distributed on SO(3), or within the ball of radius maxAngle
about the identity; the symmetry of the frames does not enter the draw.

## Input

| `args` | the shape, as numbers; the crystal frame cs and the specimen frame ss, or a second crystal frame for misorientations |

## Keywords

| keyword | default | description |
|---|---|---|
| `rng` | `None` | a NumPy random generator, for draws that repeat |
| `antipodal` | `False` | misorientations with grain exchange |
| `maxAngle` | `None` | the largest rotational angle, in radians |

## Output

| `ori` | orientation |

## See also

[rotation.rand](rotation.rand_py.html), [orientation.id](orientation.id_py.html), [discreteSample](discreteSample_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L379">source</a></font>
{% endraw %}
