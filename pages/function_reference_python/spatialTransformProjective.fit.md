---
title: 'spatialTransformProjective.fit'
sidebar: function_reference_sidebar
permalink: spatialTransformProjective.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformProjective](spatialTransformProjective_index_py.html).

the homography best mapping the positions posA onto posB, by the direct linear transform

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformProjective.fit(posA, posB)
```

Robust against outliers.

</div>

<div class="mx-form" markdown="1">

```python
T = spatialTransformProjective.fit(posA, posB, weights=w)
```

The points weighted.

</div>

<div class="mx-form" markdown="1">

```python
T = spatialTransformProjective.fit(posA, posB, robust=False) # plain least squares
```

</div>

## Description

The equations x' (h31 x + h32 y + 1) = h11 x + h12 y + h13, and likewise for y', are solved
by least squares, reweighted against outliers with Tukey's bisquare unless robust=False.
Both point sets are first centred and scaled, Hartley's normalisation, so that points far
from the origin do not dominate the fit.

A point with a missing position or no weight is dropped; at least four points are needed.

## Input

| `posA` | vector3d, the positions in the first frame |
| `posB` | vector3d, where they went in the second, one for each |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | array, the weight of every point pair |
| `robust` | `True` | reweight against outliers with Tukey's bisquare |
| `maxIter` | `50` | the largest number of reweighting steps |

## Output

| `T` | spatialTransformProjective, T * posA close to posB |

## References

- R. Hartley, In defense of the eight-point algorithm, IEEE Transactions on Pattern Analysis and Machine Intelligence 19 (1997) 580-593

## See also

[spatialTransformPoly.fit](spatialTransformPoly.fit_py.html), [spatialTransformProjective.byTilt](spatialTransformProjective.byTilt_py.html), [spatialTransformTilt](spatialTransformTilt_index_py.html), [transform](transform_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform/__init__.py#L482">source</a></font>
{% endraw %}
