---
title: 'vector3d.det'
sidebar: function_reference_sidebar
permalink: vector3d.det_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.det.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the triple product, vector3d/det
det(a, b, c) the triple product; det(v) of three vectors the determinant of their matrix

## Syntax

<a, b x c>, element by element:

```python
d = det(a, b, c)
```

Three vectors as the rows of a matrix:

```python
d = det(v)
```

## Input

| | |
|---|---|
| `a` | vector3d |
| `b, c` | vector3d, the second and third factor |

## Output

| | |
|---|---|
| `d` | the triple products |

## See also

[vector3d.cross](vector3d.cross_py.html), [vector3d.dot](vector3d.dot_py.html)

## Signature

```python
vector3d.det(self, b=None, c=None)
```

MATLAB's [vector3d.det](vector3d.det.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1187">source</a></font>
{% endraw %}
