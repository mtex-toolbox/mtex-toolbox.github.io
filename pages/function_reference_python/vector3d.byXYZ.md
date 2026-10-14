---
title: 'vector3d.byXYZ'
sidebar: function_reference_sidebar
permalink: vector3d.byXYZ_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

construct a list of vectors from rows of Cartesian coordinates.

## Syntax

<div class="mx-form" markdown="1">

```python
v = vector3d.byXYZ([[1, 0, 0], [0, 1, 0]])
```

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d.byXYZ([[1, 2], [3, 4]])
```

Append a zero z coordinate.

</div>

## Input

| `xyz` | numeric array of shape (n, 3) or (n, 2) |

## Output

| `v` | vector3d of shape (n,); coordinates are not normalised |

## See also

[vector3d](vector3d_index_py.html), [vector3d.byPolar](vector3d.byPolar_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.byXYZ(xyz)
```

</div>

## Used on

[VectorDefinition](VectorDefinition_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L486">source</a></font>
{% endraw %}
