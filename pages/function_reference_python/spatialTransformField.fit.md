---
title: 'spatialTransformField.fit'
sidebar: function_reference_sidebar
permalink: spatialTransformField.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformField](spatialTransformField_index_py.html).

the field of the displacements of the point pairs, at the points of frame A

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformField.fit(posA, posB)
```

The displacements as measured.

</div>

## Description

There is nothing to fit: the field interpolates its samples exactly. The weights only
drop the points whose weight is not a number, as the points with a missing position are
dropped, so the same call works on the output of a failed correlation; a weight zero is
kept, as MATLAB keeps it.

## Input

| `posA` | vector3d, the positions in frame A |
| `posB` | vector3d, the same points in frame B |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | one weight per point |

## Output

| `T` | spatialTransformField |

## See also

[spatialTransformField](spatialTransformField_index_py.html), [spatialTransformPoly.fit](spatialTransformPoly.fit_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L724">source</a></font>
{% endraw %}
