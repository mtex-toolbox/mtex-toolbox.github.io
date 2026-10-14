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

Scan lines along x:

```python
T = spatialTransformDrift.fit(posA, posB)
```

Scan lines along y:

```python
T = spatialTransformDrift.fit(posA, posB, slowScan=xvector)
```

Continued beyond the lines:

```python
T = spatialTransformDrift.fit(posA, posB, extrapolate=True)
```

The points of one scan line share their coordinate along the slow scan direction, up to
rounding; each line becomes a knot with the median displacement of its points. The median
rather than the mean: a line crossing a badly correlated patch is not pulled by it. The
weights only drop the points of weight zero, since one number per line leaves nothing for
them to outvote.

## Input

| | |
|---|---|
| `posA` | vector3d, the positions in the first frame |
| `posB` | vector3d, where they went in the second, one for each |

## Output

| | |
|---|---|
| `T` | spatialTransformDrift, a knot per scan line |

## Keywords

| | default | |
|---|---|---|
| `weights` | `None` | array, a weight per point pair; zero drops a point |
| `slowScan` | `None` | vector3d, the slow scan direction, by default y |
| `extrapolate` | `False` | continue the end segments beyond the first and last line, where the drift is otherwise NaN |

## See also

[spatialTransformPoly.fit](spatialTransformPoly.fit_py.html), [spatialTransformField](spatialTransformField_index_py.html), [transform](transform_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L622">source</a></font>
{% endraw %}
