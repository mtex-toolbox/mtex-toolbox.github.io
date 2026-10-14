---
title: 'rotation.fit'
sidebar: function_reference_sidebar
permalink: rotation.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.fit.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

the rotation best mapping the list u onto the list v, by Horn's quaternion method or
Kabsch's matrix method

## Syntax

<div class="mx-form" markdown="1">

```python
rot = rotation.fit(u, v)
```

Rot * u is nearest v.

</div>

<div class="mx-form" markdown="1">

```python
rot = rotation.fit(u, v, weights=w)
```

Some pairs counting more.

</div>

<div class="mx-form" markdown="1">

```python
rot = rotation.fit(u, v, method='kabsch')
```

By the singular value decomposition.

</div>

## Description

The rotation maximising the weighted sum of <rot u_i, v_i> over the unit vectors: Horn's
method takes the largest eigenvector of a 4 x 4 matrix, Kabsch's the singular value
decomposition of the cross covariance; both give the same rotation. MATLAB's call is
rotation.fit(r, l) with l = rot * r, the same order. MATLAB's handling of antipodal
vectors is not ported: the vectors are taken with their sign.

## Input

| `u, v` | vector3d, lists of one length |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | one weight per pair |
| `method` | `'horn'` | 'horn' or 'kabsch' |

## Output

| `rot` | rotation |

## References

- W. Kabsch, A solution for the best rotation to relate two sets of vectors, Acta Cryst. A32 (1976) 922
- B. K. P. Horn, Closed-form solution of absolute orientation using unit quaternions, Journal of the Optical Society of America A 4 (1987) 629

## See also

[rotation.map](rotation.map_py.html), [rotation.byMatrix](rotation.byMatrix_py.html)

MATLAB's [rotation.fit](rotation.fit.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L716">source</a></font>
{% endraw %}
