---
title: 'grain2d.caliper'
sidebar: function_reference_sidebar
permalink: grain2d.caliper_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.caliper.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the caliper, the Feret diameter, of every outline: its width across a direction, or the
longest or the shortest width as a framed axis of that length; MATLAB's grain2d.caliper

## Syntax

The longest, norm(cV) its length:

```python
cV = grains.caliper()
```

The narrowest, or 'longest', 'shortestPerp':

```python
cV = grains.caliper('shortest')
```

The width across a direction:

```python
c = grains.caliper(vector3d.X)
```

The widths across angles to the x axis:

```python
c = caliper(grains, [0, 30*degree])
```

The width across a direction is the extent of the convex hull projected onto it. 'longest'
is the diameter of the outline and 'shortest' its narrowest width, each the vector3d along
which it is measured with that length. 'shortestPerp' is the width measured along the
direction perpendicular to the shortest one, the direction an outline with flat faces is
aligned along. A list of directions or angles gives a width per outline and direction.

## Input

| | |
|---|---|
| `grains` | grain2d, or any set of outlines |

## Output

| | |
|---|---|
| `cV` | vector3d, one per outline, norm(cV) the length |
| `c` | array of the widths, (n,) or (n, k) for k directions |

## Keywords

| | default | |
|---|---|---|
| `arg` | `None` | 'longest' (by default), 'shortest' or 'shortestPerp', or a direction, an angle to the x axis of the map or a list of them |

## See also

[grain2d.diameter](grain2d.diameter_py.html), [grain2d.longAxis](grain2d.longAxis_py.html), [grain2d.paror](grain2d.paror_py.html), [ShapeParameters](ShapeParameters_py.html)

## Used on

[ProjectionBasedParameters](ProjectionBasedParameters_py.html)

MATLAB's [grain2d.caliper](grain2d.caliper.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L245">source</a></font>
{% endraw %}
