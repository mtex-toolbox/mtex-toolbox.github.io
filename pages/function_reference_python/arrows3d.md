---
title: 'arrows3d'
sidebar: function_reference_sidebar
permalink: arrows3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
arrows in space as the items of a scene3d, a line for the shaft and a cone for the head;
what quiver3d and quiver of 3D grains draw

## Syntax

<div class="mx-form" markdown="1">

```python
items = arrows3d(P, D)
```

Arrows from the points P along D.

</div>

<div class="mx-form" markdown="1">

```python
items = arrows3d(P, D, color='r', antipodal=True)
```

Red segments pointing both ways.

</div>

## Description

Every arrow runs from its point P to P + D, its head a cone headSize of its length long.
Arrows with a zero or non finite D are left out. The items are added to a scene with
scene3d.add, which the renderer of a 3D figure draws.

## Input

| `P` | array (n, 3), the starting points |
| `D` | array (n, 3), the arrows |

## Keywords

| keyword | default | description |
|---|---|---|
| `color` | `(0.0, 0.0, 1.0)` | one colour for all arrows, a name or an RGB triple, or one RGB row per arrow |
| `lineWidth` | `1.0` | the width of the shafts in points |
| `antipodal` | `False` | draw segments from P - D to P + D without heads, for axes |
| `headSize` | `0.25` | the length of the head as a fraction of the arrow |
| `sides` | `12` | the number of sides of the cone of a head |

## Output

| `items` | [lines3d, mesh3d], the shafts and the heads, or [lines3d] for antipodal arrows |

## See also

[scene3d](scene3d_index_py.html), [quiver3d](S2AxisField.quiver3_py.html), [ellipsoids3d](ellipsoids3d_py.html), [OrientationVisualization3d](OrientationVisualization3d_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/scene3d.py#L131">source</a></font>
{% endraw %}
