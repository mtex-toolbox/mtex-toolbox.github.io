---
title: 'spatialTransformRigid.fit'
sidebar: function_reference_sidebar
permalink: spatialTransformRigid.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformRigid](spatialTransformRigid_index_py.html).

the translation fitted to point pairs, the weighted mean of their displacements

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformRigid.fit(posA, posB)
```

The mean displacement.

</div>

<div class="mx-form" markdown="1">

```python
T = spatialTransformRigid.fit(posA, posB, weights=w)
```

The weighted mean.

</div>

## Description

A point with a missing position or weight is dropped.

## Input

| `posA` | vector3d, the positions in frame A |
| `posB` | vector3d, the same points in frame B |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | one weight per point |

## Output

| `T` | spatialTransformRigid |

## See also

[spatialTransformShift.fit](spatialTransformShift.fit_py.html), [spatialTransformField.fit](spatialTransformField.fit_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L390">source</a></font>
{% endraw %}
