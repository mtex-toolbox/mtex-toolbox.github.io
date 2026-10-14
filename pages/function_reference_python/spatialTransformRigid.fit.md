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

The mean displacement:

```python
T = spatialTransformRigid.fit(posA, posB)
```

The weighted mean:

```python
T = spatialTransformRigid.fit(posA, posB, weights=w)
```

A point with a missing position or weight is dropped; other keywords are accepted and not
used.

## Input

| | |
|---|---|
| `posA` | vector3d, the positions in frame A |
| `posB` | vector3d, the same points in frame B |

## Output

| | |
|---|---|
| `T` | spatialTransformRigid |

## Keywords

| | default | |
|---|---|---|
| `weights` | `None` | one weight per point |

## See also

[spatialTransformShift.fit](spatialTransformShift.fit_py.html), [spatialTransformField.fit](spatialTransformField.fit_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L342">source</a></font>
{% endraw %}
