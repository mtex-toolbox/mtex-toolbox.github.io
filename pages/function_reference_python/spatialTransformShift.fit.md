---
title: 'spatialTransformShift.fit'
sidebar: function_reference_sidebar
permalink: spatialTransformShift.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformShift](spatialTransformShift_index_py.html).

the affine map fitted to point pairs by weighted least squares, the positions posA in frame A
and where they went, posB

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformShift.fit(posA, posB)
```

PosB = T(posA) as nearly as can be.

</div>

<div class="mx-form" markdown="1">

```python
T = spatialTransformShift.fit(posA, posB, weights=w)
```

The points weighted.

</div>

## Description

The degree one polynomial fit of spatialTransformPoly.fit, plain least squares without
the reweighting against outliers, as MATLAB's. A point with a missing position or weight
is dropped.

## Input

| `posA` | vector3d, the positions in frame A |
| `posB` | vector3d, the same points in frame B |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | one weight per point |

## Output

| `T` | spatialTransformShift |

## See also

[spatialTransformPoly.fit](spatialTransformPoly.fit_py.html), [spatialTransformRigid.fit](spatialTransformRigid.fit_py.html), [spatialTransformProjective.fit](spatialTransformProjective.fit_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L292">source</a></font>
{% endraw %}
