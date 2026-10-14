---
title: 'spatialTransformPoly.fit'
sidebar: function_reference_sidebar
permalink: spatialTransformPoly.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformPoly](spatialTransformPoly_index_py.html).

the polynomial displacement best mapping the positions posA onto posB

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformPoly.fit(posA, posB)
```

An affine map.

</div>

<div class="mx-form" markdown="1">

```python
T = spatialTransformPoly.fit(posA, posB, degree=2)
```

A quadratic displacement.

</div>

<div class="mx-form" markdown="1">

```python
T = spatialTransformPoly.fit(posA, posB, degree=2, weights=w, robust=False)
```

Weighted least squares.

</div>

## Description

The displacement posB - posA is fitted over the basis [1 x y], or [1 x y x^2 xy y^2] for
degree 2, by least squares, reweighted against outliers with Tukey's bisquare. A point with
a missing position or no weight is dropped; degree 1 needs at least three points, degree 2
six.

## Input

| `posA` | vector3d, the positions in the first frame |
| `posB` | vector3d, where they went in the second, one for each |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | array, the weight of every point pair |
| `degree` | `1` | 1 or 2, the degree of the polynomial |
| `robust` | `True` | reweight against outliers with Tukey's bisquare |
| `maxIter` | `50` | the largest number of reweighting steps |

## Output

| `T` | spatialTransformPoly, T * posA close to posB |

## See also

[spatialTransformProjective.fit](spatialTransformProjective.fit_py.html), [spatialTransformDrift.fit](spatialTransformDrift.fit_py.html), [spatialTransformTilt](spatialTransformTilt_index_py.html), [transform](transform_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L529">source</a></font>
{% endraw %}
