---
title: 'projectIntoRegion'
sidebar: function_reference_sidebar
permalink: projectIntoRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the image of a direction that lies in a region, under the group; the antipode of an axis
counts as an image; the direction itself when no image lies inside

## Syntax

<div class="mx-form" markdown="1">

```python
w = projectIntoRegion(v, sR)
```

Under the group of v's frame.

</div>

<div class="mx-form" markdown="1">

```python
w = projectIntoRegion(v, sR, cs.sym)
```

Under another group.

</div>

## Description

The antipode counts when v or the region is antipodal.

## Input

| `v` | vector3d or Miller |
| `sR` | sphericalRegion |
| `pg` | the point group, by default that of the frame of v |

## Output

| `w` | the images, of the class and shape of v |

## See also

[sphericalRegion.checkInside](sphericalRegion.checkInside_py.html), [projectIntoFundamentalRegion](projectIntoFundamentalRegion_py.html), [tilesSphere](tilesSphere_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
projectIntoRegion(v, sR, pg=None)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L684">source</a></font>
{% endraw %}
