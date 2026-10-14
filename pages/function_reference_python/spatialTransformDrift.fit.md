---
title: 'spatialTransformDrift.fit'
sidebar: function_reference_sidebar
permalink: spatialTransformDrift.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformDrift](spatialTransformDrift_index_py.html).

a drift along the slow scan direction, the linear spline through the median displacement
of every scan line

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformDrift.fit(posA, posB)
```

Scan lines along x.

</div>

<div class="mx-form" markdown="1">

```python
T = spatialTransformDrift.fit(posA, posB, slowScan=xvector)
```

Scan lines along y.

</div>

<div class="mx-form" markdown="1">

```python
T = spatialTransformDrift.fit(posA, posB, extrapolate=True)
```

Continued beyond the lines.

</div>

## Description

The points of one scan line share their coordinate along the slow scan direction, up to
rounding; each line becomes a knot with the median displacement of its points. The median
rather than the mean: a line crossing a badly correlated patch is not pulled by it. The
weights only drop the points whose weight is not a number, since one number per line
leaves nothing for them to outvote; a weight zero is kept, as MATLAB keeps it.

## Input

| `posA` | vector3d, the positions in the first frame |
| `posB` | vector3d, where they went in the second, one for each |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | array, a weight per point pair; not a number drops a point |
| `slowScan` | `None` | vector3d, the slow scan direction, by default y |
| `extrapolate` | `False` | continue the end segments beyond the first and last line, where the drift is otherwise NaN |

## Output

| `T` | spatialTransformDrift, a knot per scan line |

## See also

[spatialTransformPoly.fit](spatialTransformPoly.fit_py.html), [spatialTransformField](spatialTransformField_index_py.html), [transform](transform_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L702">source</a></font>
{% endraw %}
