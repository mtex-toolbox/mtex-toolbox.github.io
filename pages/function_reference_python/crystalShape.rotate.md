---
title: 'crystalShape.rotate'
sidebar: function_reference_sidebar
permalink: crystalShape.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalShape.rotate.html
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

rotate crystal vertices, or place them in a specimen using an orientation.

## Syntax

<div class="mx-form" markdown="1">

```python
placed = ori*cS
turned = cS.rotate(rot)
```

</div>

## Description

One rotation moves all vertices of a shape. A list of rotations or orientations makes
a list of shapes with the same face connectivity. An orientation maps the vertices
from the crystal frame to its target frame; CS continues to identify the original crystal.

## Input

| `rot` | rotation or orientation, scalar or a list |

## See also

[crystalShape.frame](crystalShape.frame_py.html), [crystalShape.CS](crystalShape.CS_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
crystalShape.rotate(self, rot)
```

</div>

MATLAB's [crystalShape.rotate](crystalShape.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L391">source</a></font>
{% endraw %}
