---
title: 'plainProjection.boundary'
sidebar: function_reference_sidebar
permalink: plainProjection.boundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [plainProjection](plainProjection_index_py.html).

the boundary of the region as plane coordinates, one pair of arrays per arc

## Syntax

<div class="mx-form" markdown="1">

```python
b = plainProjection(sR).boundary()
```

(rho, theta) in degree every half degree.

</div>

<div class="mx-form" markdown="1">

```python
b = plainProjection(sR).boundary(resolution=2*degree)
```

Coarser arcs.

</div>

## Description

A whole sphere, which has no boundary of its own, gets the rectangle of its azimuth and
polar ranges, as the other charts get the horizon.

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `0.5*degree` | the spacing of the points along an arc |

## Output

| `b` | list of (rho, theta) pairs of arrays in degree, one per arc |

## See also

[plainProjection.bounds](plainProjection.bounds_py.html), [sphericalProjection.boundary](sphericalProjection.boundary_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical/__init__.py#L459">source</a></font>
{% endraw %}
