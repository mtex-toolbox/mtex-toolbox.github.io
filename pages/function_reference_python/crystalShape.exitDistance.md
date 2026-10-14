---
title: 'crystalShape.exitDistance'
sidebar: function_reference_sidebar
permalink: crystalShape.exitDistance_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

measure the distance from the vertex mean to the surface along a ray.

## Syntax

<div class="mx-form" markdown="1">

```python
distance = cS.exitDistance(direction)
```

</div>

## Description

The direction is normalised internally, so its length does not affect the result.
The output is a scalar in the current vertex-length units. This operation needs one
shape; select cS[k] when working with a list.

## Input

| `d` | nonzero vector3d direction or Cartesian triple |

## See also

[crystalShape.innerFace](crystalShape.innerFace_py.html), [crystalShape.diameter](crystalShape.diameter_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
crystalShape.exitDistance(self, d)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L408">source</a></font>
{% endraw %}
