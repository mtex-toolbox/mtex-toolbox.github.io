---
title: 'sphericalRegion.checkInside'
sidebar: function_reference_sidebar
permalink: sphericalRegion.checkInside_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.checkInside.html
status: Reference
---
{% raw %}
A method of [sphericalRegion](sphericalRegion_index_py.html).

whether directions lie in the region, up to a small tolerance at the boundary

## Syntax

A boolean per direction:

```python
inside = sR.checkInside(v)
```

A wider margin at the boundary:

```python
inside = sR.checkInside(v, tol=1e-2)
```

A direction is inside when <v, N> >= alpha - tol for every boundary circle, the length
of v not mattering. For an antipodal region or antipodal directions, -v inside counts too.

## Input

| | |
|---|---|
| `sR` | sphericalRegion |
| `v` | vector3d, or an (..., 3) array |

## Output

| | |
|---|---|
| `inside` | boolean array in the shape of v |

## Keywords

| | default | |
|---|---|---|
| `tol` | `0.0001` | the margin in the cosines |

## See also

[projectIntoRegion](projectIntoRegion_py.html), [sphericalRegion.volume](sphericalRegion.volume_py.html)

MATLAB's [sphericalRegion.checkInside](sphericalRegion.checkInside.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L95">source</a></font>
{% endraw %}
