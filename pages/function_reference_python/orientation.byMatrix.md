---
title: 'orientation.byMatrix'
sidebar: function_reference_sidebar
permalink: orientation.byMatrix_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.byMatrix.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientations of rotation matrices; MATLAB's orientation.byMatrix

## Syntax

<div class="mx-form" markdown="1">

```python
ori = orientation.byMatrix(M, cs, ss)
```

One 3 x 3 matrix, or (..., 3, 3).

</div>

<div class="mx-form" markdown="1">

```python
mori = orientation.byMatrix(M, cs, cs, antipodal=True)
```

A misorientation with grain exchange.

</div>

## Description

A matrix of determinant -1 is refused: an orientation is proper.

## Input

| `M` | a 3 x 3 rotation matrix, or an array of them along the last two axes |
| `frames` | the crystal frame, then the specimen frame or a second crystal frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | mark a misorientation with grain exchange |

## Output

| `ori` | orientation of the shape M.shape[:-2] |

## See also

[orientation.byAxisAngle](orientation.byAxisAngle_py.html), [orientation.byEuler](orientation.byEuler_py.html), [rotation.matrix](rotation.matrix_py.html)

MATLAB's [orientation.byMatrix](orientation.byMatrix.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L215">source</a></font>
{% endraw %}
