---
title: 'spatialTransformShift.parts'
sidebar: function_reference_sidebar
permalink: spatialTransformShift.parts_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformShift](spatialTransformShift_index_py.html).

decompose the affine linear part into scales, rotation and shear

## Syntax

<div class="mx-form" markdown="1">

```python
sx, sy, rotationAngle, shearAngle = T.parts()
```

</div>

## Description

A QR decomposition separates a rotation from an upper-triangular scale and shear.
Both angles are returned in degrees. A reflection is represented by a signed second
scale. Translation is not included in these four values; it is T.M[:2, 2].

## Output

| `sx` | first scale factor |
| `sy` | second scale factor, signed for reflections |
| `rotationAngle` | rotation in degrees |
| `shearAngle` | shear angle in degrees |

## Signature

<div class="mx-form" markdown="1">

```python
spatialTransformShift.parts(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform/__init__.py#L307">source</a></font>
{% endraw %}
