---
title: 'grainBoundary.simplify'
sidebar: function_reference_sidebar
permalink: grainBoundary.simplify_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.simplify.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the boundary with the vertices dropped that carry no shape, Douglas-Peucker chain by chain;
MATLAB's grainBoundary.simplify

## Syntax

<div class="mx-form" markdown="1">

```python
gB = gB.simplify()
```

The pixel staircase straightened.

</div>

<div class="mx-form" markdown="1">

```python
gB = gB.simplify(0.5)
```

A tolerance of 0.5 map units.

</div>

<div class="mx-form" markdown="1">

```python
gB = gB.simplify(protect=vertexIds)
```

These vertices kept as well.

</div>

<div class="mx-form" markdown="1">

```python
gB = gB.simplify(keepGrains=grains.id)
```

No grain of the list collapsed.

</div>

## Description

A vertex is dropped when leaving it out moves the boundary by less than epsilon, so many
vertices go along a straight run and none at a corner; on a pixel grid this turns a
staircase into the straight line it approximates. The junctions, the ends of the chains,
always stay, so which grains touch, and where, is unchanged; a closed chain keeps at least
three vertices. The dropped vertices' segments are merged as by reduce.

The default tolerance is the median segment length over sqrt(2): a staircase of spacing d
never strays further than d / sqrt(2) from the line it approximates, the worst case being a
boundary at 45 degree, so it removes the grid and nothing else.

## Input

| `gB` | grainBoundary |

## Keywords

| keyword | default | description |
|---|---|---|
| `epsilon` | `None` | the tolerance in the units of the map, how far the boundary may move; 0 leaves the boundary as it is, by default the median segment length over sqrt(2) |
| `protect` | `None` | the ids of the vertices that must stay, on top of the junctions |
| `keepGrains` | `None` | the ids of the grains that must keep a polygon: a grain smaller than epsilon would lose all its vertices and is not coarsened at all; MATLAB does this for every grain, grain2d.simplifyBoundary passes all of them |

## Output

| `gB` | grainBoundary, the simplified boundary |

## See also

[grainBoundary.reduce](grainBoundary.reduce_py.html), [grainBoundary.refine](grainBoundary.refine_py.html), [grain2d.simplifyBoundary](grain2d.simplifyBoundary_py.html), [smoothBoundary](smoothBoundary_py.html)

MATLAB's [grainBoundary.simplify](grainBoundary.simplify.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L184">source</a></font>
{% endraw %}
