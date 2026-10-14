---
title: 'grain2d.simplifyBoundary'
sidebar: function_reference_sidebar
permalink: grain2d.simplifyBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.simplifyBoundary.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the grains with the vertices of their boundary that carry no shape dropped, those whose
removal moves the boundary by less than epsilon, the inner boundary kept on it; MATLAB's
grain2d.simplifyBoundary

## Syntax

<div class="mx-form" markdown="1">

```python
grains = grains.simplifyBoundary()
```

The pixel staircase straightened.

</div>

<div class="mx-form" markdown="1">

```python
grains = grains.simplifyBoundary(50)
```

A tolerance of 50 map units.

</div>

## Description

Douglas-Peucker chain by chain: a straight run collapses into one segment while a corner
stays. The junctions stay where they are and the polygons are traced again, so the grain
areas move by at most about epsilon times the perimeter. A grain too small for the
tolerance is left as it is rather than collapsed.

## Input

| `grains` | grain2d |

## Keywords

| keyword | default | description |
|---|---|---|
| `epsilon` | `None` | the tolerance in the units of the map, by default the median segment length over sqrt(2), how far a staircase strays from the line it approximates |

## Output

| `grains` | grain2d |

## See also

[grainBoundary.simplify](grainBoundary.simplify_py.html), [grain2d.reduceBoundary](grain2d.reduceBoundary_py.html), [grain2d.refineBoundary](grain2d.refineBoundary_py.html), [smoothBoundary](smoothBoundary_py.html)

MATLAB's [grain2d.simplifyBoundary](grain2d.simplifyBoundary.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L466">source</a></font>
{% endraw %}
