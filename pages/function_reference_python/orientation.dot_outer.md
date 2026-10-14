---
title: 'orientation.dot_outer'
sidebar: function_reference_sidebar
permalink: orientation.dot_outer_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.dot_outer.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the dot product up to symmetry, cos(omega/2) of the misorientation angle omega reduced over
the groups of both frames; MATLAB's orientation.dot and dot_outer

## Syntax

<div class="mx-form" markdown="1">

```python
d = dot(ori1, ori2)
```

Pairwise, broadcast.

</div>

<div class="mx-form" markdown="1">

```python
d = dot(ori1.reshape(-1, 1), ori2)
```

Every pair, MATLAB's dot_outer.

</div>

<div class="mx-form" markdown="1">

```python
d = dot(ori1, ori2, symmetry=False)
```

Of the rotations as stored.

</div>

## Description

MATLAB's dot_outer is the broadcast of a column against a row. With symmetry=False, or with
a rotation, it is rotation.dot: |q1 . q2|, or the signed product with antipodal=False.

## Input

| `ori1` | orientation |
| `ori2` | orientation, or a rotation |

## Keywords

| keyword | default | description |
|---|---|---|
| `symmetry` | `True` | reduce over the symmetric equivalents; False takes the rotations as stored |
| `antipodal` | `True` | without symmetry, the absolute value of the product; False keeps its sign. With symmetry it is not used, the grain exchange comes from ori1 and ori2 |

## Output

| `d` | cos(omega/2), of the broadcast shape |

## See also

[orientation.angle](orientation.angle_py.html), [rotation.dot](rotation.dot_py.html)

MATLAB's [orientation.dot_outer](orientation.dot_outer.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L508">source</a></font>
{% endraw %}
