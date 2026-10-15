---
title: 'vector3d.normalize'
sidebar: function_reference_sidebar
permalink: vector3d.normalize_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.normalize.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the vectors scaled to unit length; with zeroToZero=True a zero vector stays zero

## Syntax

<div class="mx-form" markdown="1">

```python
v = v.normalize()
```

A zero vector becomes NaN.

</div>

<div class="mx-form" markdown="1">

```python
v = v.normalize(zeroToZero=True)
```

A zero vector stays zero.

</div>

## Input

| `v` | vector3d |

## Keywords

| keyword | default | description |
|---|---|---|
| `zeroToZero` | `False` | keep vectors of length zero at zero instead of NaN |

## Output

| `v` | vector3d of unit length, isNormalized set |

## See also

[vector3d.norm](vector3d.norm_py.html)

MATLAB's [vector3d.normalize](vector3d.normalize.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L925">source</a></font>
{% endraw %}
