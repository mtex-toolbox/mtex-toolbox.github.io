---
title: 'orientation.dot'
sidebar: function_reference_sidebar
permalink: orientation.dot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.dot.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the dot product up to symmetry, cos(omega/2) of the misorientation angle omega reduced over
the groups of both frames; MATLAB's orientation.dot and dot_outer

## Syntax

Pairwise, broadcast:

```python
d = dot(ori1, ori2)
```

Every pair, MATLAB's dot_outer:

```python
d = dot(ori1.reshape(-1, 1), ori2)
```

Of the rotations as stored:

```python
d = dot(ori1, ori2, symmetry=False)
```

MATLAB's dot_outer is the broadcast of a column against a row. With symmetry=False, or with
a rotation, it is rotation.dot: |q1 . q2|, or the signed product with antipodal=False.

## Input

| | |
|---|---|
| `ori1` | orientation |
| `ori2` | orientation, or a rotation |

## Output

| | |
|---|---|
| `d` | cos(omega/2), of the broadcast shape |

## Keywords

| | default | |
|---|---|---|
| `symmetry` | `True` | reduce over the symmetric equivalents; False takes the rotations as stored |
| `antipodal` | `True` | without symmetry, the absolute value of the product; False keeps its sign. With symmetry it is not used, the grain exchange comes from ori1 and ori2 |

## See also

[orientation.angle](orientation.angle_py.html), [rotation.dot](rotation.dot_py.html)

MATLAB's [orientation.dot](orientation.dot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L453">source</a></font>
{% endraw %}
