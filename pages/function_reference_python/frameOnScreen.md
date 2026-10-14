---
title: 'frameOnScreen'
sidebar: function_reference_sidebar
permalink: frameOnScreen_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the (right, up, towards the viewer) components of the axes of the frame in the picture of
a map: the plane's coordinates taken to the screen by the layout, and the normal towards
the viewer, who looks from the other side of the plane when the layout flips it

## Syntax

<div class="mx-form" markdown="1">

```python
s = frameOnScreen(ebsd.lattice.plane)
```

X, y, z under the identity.

</div>

<div class="mx-form" markdown="1">

```python
s = frameOnScreen(ebsd.lattice.plane, mapLayout('x↑→y'))
```

Z pointing away.

</div>

## Input

| `pl` | the plane of the map |

## Keywords

| keyword | default | description |
|---|---|---|
| `layout` | `None` | the 2 x 2 matrix taking the plane to the screen, mapLayout; by default the identity |

## Output

| `s` | a list of three (right, up, out) triples, for x, y and z |

## See also

[triadGeometry](triadGeometry_py.html), [mapLayout](mapLayout_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L434">source</a></font>
{% endraw %}
