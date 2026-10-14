---
title: 'grain2d.refineBoundary'
sidebar: function_reference_sidebar
permalink: grain2d.refineBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.refineBoundary.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the grains with their boundary and inner boundary refined, every segment split into
pieces of about length delta; MATLAB's grain2d.refineBoundary

## Syntax

<div class="mx-form" markdown="1">

```python
grains = grains.refineBoundary()
```

Pieces of half the median segment length.

</div>

<div class="mx-form" markdown="1">

```python
grains = grains.refineBoundary(10)
```

Pieces of about 10 map units.

</div>

## Description

The vertices stay where they are and the new ones lie on the old segments, so the grains
keep their shape and only the sampling gets finer, which lets a following smoothBoundary
move evenly spaced vertices. Both boundaries are refined over one pool of vertices.

## Input

| `grains` | grain2d |

## Keywords

| keyword | default | description |
|---|---|---|
| `delta` | `None` | the length of the pieces in the units of the map, by default half the median segment length of the boundary |

## Output

| `grains` | grain2d, the polygons traced again |

## See also

[grainBoundary.refine](grainBoundary.refine_py.html), [grain2d.simplifyBoundary](grain2d.simplifyBoundary_py.html), [grain2d.reduceBoundary](grain2d.reduceBoundary_py.html), [smoothBoundary](smoothBoundary_py.html)

MATLAB's [grain2d.refineBoundary](grain2d.refineBoundary.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L416">source</a></font>
{% endraw %}
